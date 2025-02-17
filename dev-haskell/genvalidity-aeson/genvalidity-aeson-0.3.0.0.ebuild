# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GenValidity support for aeson"
HOMEPAGE="https://github.com/NorfairKing/validity#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/genvalidity-0.8:=[profile?]
	>=dev-haskell/genvalidity-scientific-0.2:=[profile?]
	>=dev-haskell/genvalidity-text-0.5:=[profile?]
	>=dev-haskell/genvalidity-unordered-containers-0.2:=[profile?]
	>=dev-haskell/genvalidity-vector-0.2:=[profile?]
	dev-haskell/quickcheck:=[profile?]
	>=dev-haskell/validity-0.5:=[profile?]
	>=dev-haskell/validity-aeson-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
	test? ( dev-haskell/genvalidity-hspec
		dev-haskell/hspec )
"
