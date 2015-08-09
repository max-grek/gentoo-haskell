# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
CABAL_FEATURES+=" nocabaldep"
inherit flag-o-matic haskell-cabal pax-utils

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
#SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
SRC_URI="http://dev.gentoo.org/~gienah/snapshots/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing files

RDEPEND="dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/xhtml-3000.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-7.8.3:= <dev-lang/ghc-7.9:=
"
DEPEND="${RDEPEND}
	test? ( dev-haskell/hspec
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3 )
"

src_prepare() {
	if [[ ! -e "${S}/html" ]]; then
		ln -s resources/html "${S}/html" || die "Could not create symbolic link ${S}/html"
	fi
}

src_configure() {
	local exe="${S}/dist/build/haddock/haddock"
	local more_conf_opts=()

	# create a fake haddock executable. it'll set the right version to cabal
	# configure, but will eventually get overwritten in src_compile by
	# the real executable.
	mkdir -p $(dirname "${exe}")
	echo -e "#!/bin/sh\necho Haddock version ${PV}" > "${exe}"
	chmod +x "${exe}"

	# haddock has to be linked the same way as ghc does:
	# static/static or dynamic.dynamic
	if $(ghc-is-dynamic); then
		more_conf_opts+=(--enable-executable-dynamic)
		# and on Cabal-1.18 there is a bug of not writing
		# correct rpath to a final binary if package
		# provides both library and executable.
		append-ldflags -Wl,-rpath,${EROOT}/usr/$(get_libdir)/${P}/ghc-$(ghc-version)
	fi

	# we use 'nocabaldep' to use ghc's bundled Cabal
	# as external one is likely to break our haddock
	# (known to work on 1.16.0 and breaks on 1.16.0.1!)
	haskell-cabal_src_configure \
		--ghc-options=-rtsopts \
		--with-haddock="${exe}" \
		--constraint="Cabal == $(cabal-version)" \
		"${more_conf_opts[@]}"

}

src_compile() {
	# when building the (recursive..) haddock docs, change the datadir to the
	# current directory, as we're using haddock inplace even if it's built to be
	# installed into the system first.
	haddock_datadir="${S}" haskell-cabal_src_compile
	pax-mark -m "${S}/dist/build/haddock"
}

src_install() {
	cabal_src_install
	# haddock uses GHC-api to process TH source.
	# TH requires GHCi which needs mmap('rwx') (bug #299709)
	pax-mark -m "${D}/usr/bin/${PN}"
}
