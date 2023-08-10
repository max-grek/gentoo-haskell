# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION=1
inherit haskell-cabal

DESCRIPTION="Modern library for working with URIs"
HOMEPAGE="https://github.com/mrkkrp/modern-uri"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/contravariant-1.3:=[profile?] <dev-haskell/contravariant-2.0:=[profile?]
	>=dev-haskell/hashable-1.3:=[profile?] <dev-haskell/hashable-2.0:=[profile?]
	>=dev-haskell/megaparsec-7.0:=[profile?] <dev-haskell/megaparsec-10.0:=[profile?]
	>=dev-haskell/profunctors-5.2.1:=[profile?] <dev-haskell/profunctors-6.0:=[profile?]
	>=dev-haskell/quickcheck-2.4:2=[profile?] <dev-haskell/quickcheck-3.0:2=[profile?]
	>=dev-haskell/reflection-2.0:=[profile?] <dev-haskell/reflection-3.0:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-megaparsec-2.0 <dev-haskell/hspec-megaparsec-3.0
		>=dev-haskell/megaparsec-8.0 <dev-haskell/megaparsec-10.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
