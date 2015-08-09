# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Monad transformers and classes"
HOMEPAGE="https://int-index.github.io/ether/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mmorph-1.0.4:=[profile?]
	>=dev-haskell/monad-control-1.0.0.4:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/newtype-generics-0.4.1:=[profile?]
	>=dev-haskell/transformers-0.4.2:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?]
	>=dev-haskell/transformers-lift-0.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.8
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-quickcheck-0.8 )
"
