# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: -monolithic,+network-uri,-debug-tracetree,-debug-expensive-assertions

CABAL_FEATURES="test-suite"
inherit haskell-cabal bash-completion-r1 git-r3

LIVE_EBUILD=yes

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="https://www.haskell.org/cabal/"
EGIT_REPO_URI="https://github.com/haskell/cabal.git"

if [[ -n ${LIVE_EBUILD} ]]; then
	# Cabal's subdir
	S="${S}"/${PN}
else
	SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="BSD"
SLOT="0"
IUSE="debug-conflict-sets +native-dns"

RDEPEND=">=dev-haskell/async-2.0:=
	>=dev-haskell/base16-bytestring-0.1.1:=
	>=dev-haskell/cabal-3.3:=
	>=dev-haskell/cryptohash-sha256-0.11:=
	>=dev-haskell/echo-0.1.3:=
	>=dev-haskell/edit-distance-0.2.2:=
	>=dev-haskell/fail-4.9:=
	>=dev-haskell/hackage-security-0.6.0.0:=
	>=dev-haskell/hashable-1.0:=
	>=dev-haskell/http-4000.1.5:=
	>=dev-haskell/lukko-0.1:=
	>=dev-haskell/mtl-2.0:=
	>=dev-haskell/network-2.6:=
	>=dev-haskell/network-uri-2.6.0.2:=
	>=dev-haskell/parsec-3.1.13.0:=
	>=dev-haskell/random-1:=
	>=dev-haskell/semigroups-0.18.3:=
	>=dev-haskell/stm-2.0:=
	>=dev-haskell/tar-0.5.0.3:=
	>=dev-haskell/text-1.2.3:=
	>=dev-haskell/zlib-0.5.3:=
	>=dev-lang/ghc-7.10.1:=
	native-dns? ( >=dev-haskell/resolv-0.1.1:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	#if use noprefs; then
	#	epatch "${FILESDIR}/${PN}"-0.13.3-nopref.patch
	#fi

	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi
	eapply_user
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug-conflict-sets debug-conflict-sets) \
		--flag=-debug-expensive-assertions \
		--flag=-debug-tracetree \
		--flag=-monolithic \
		$(cabal_flag native-dns native-dns) \
		--flag=network-uri

	dobashcomp "${S}/bash-completion/cabal"
}
