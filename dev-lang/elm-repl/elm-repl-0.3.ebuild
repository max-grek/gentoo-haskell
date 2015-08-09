# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="a REPL for Elm"
HOMEPAGE="https://github.com/elm-lang/elm-repl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="" #depend on live version
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/bytestring-trie-0.2.2 <dev-haskell/bytestring-trie-0.3
	>=dev-haskell/cabal-1.8
	>=dev-haskell/cmdargs-0.7 <dev-haskell/cmdargs-0.11
	>=dev-haskell/haskeline-0.7 <dev-haskell/haskeline-0.8
	>=dev-haskell/mtl-2 <dev-haskell/mtl-3
	>=dev-haskell/parsec-3.1.1 <dev-haskell/parsec-3.5
	>=dev-lang/elm-0.13 <dev-lang/elm-0.14
	>=dev-lang/ghc-7.4.1
	test? ( dev-haskell/hunit
		dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		>=dev-haskell/test-framework-quickcheck2-0.3 )
"
