# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Hashed file storage support code"
HOMEPAGE="http://hackage.haskell.org/package/hashed-storage"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~ia64 ppc ppc64 x86 ~amd64-linux ~ppc-macos ~x86-macos"
IUSE="diff hpc test"

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/dataenc:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/mmap-0.5:=[profile?] <dev-haskell/mmap-0.6:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	diff? ( dev-haskell/lcs:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	test? ( dev-haskell/hunit:=[profile?]
		>=dev-haskell/quickcheck-2.3:2=[profile?]
		dev-haskell/test-framework:=[profile?]
		dev-haskell/test-framework-hunit:=[profile?]
		dev-haskell/test-framework-quickcheck2:=[profile?]
		dev-haskell/zip-archive:=[profile?] )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
	epatch "${FILESDIR}"/${P}-QC-2.8.2.patch
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag diff diff) \
		$(cabal_flag hpc hpc) \
		$(cabal_flag test test)
}

src_install() {
	haskell-cabal_src_install

	use test && rm "${ED}/usr/bin/hashed-storage-test"
}
