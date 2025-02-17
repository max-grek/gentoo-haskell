# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="QuickCheck common typeclasses"
HOMEPAGE="https://github.com/andrewthad/quickcheck-classes#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+aeson +binary-laws +semigroupoids +semirings +unary-laws +vector"

RDEPEND=">=dev-haskell/primitive-0.6.4:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/primitive-addr-0.1.0.2:=[profile?] <dev-haskell/primitive-addr-0.2:=[profile?]
	>=dev-haskell/quickcheck-classes-base-0.6.2:=[profile?] <dev-haskell/quickcheck-classes-base-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	aeson? ( >=dev-haskell/aeson-0.9:=[profile?] )
	binary-laws? ( >=dev-haskell/quickcheck-2.10.0:=[profile?] )
	semigroupoids? ( dev-haskell/semigroupoids:=[profile?] )
	semirings? ( >=dev-haskell/semirings-0.4.2:=[profile?] )
	unary-laws? ( >=dev-haskell/quickcheck-2.10.0:=[profile?] )
	!unary-laws? ( !binary-laws? ( >=dev-haskell/quickcheck-2.7:=[profile?] ) )
	vector? ( >=dev-haskell/vector-0.12:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( >=dev-haskell/base-orphans-0.5
		dev-haskell/tagged
		!vector? ( dev-haskell/vector ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag aeson aeson) \
		$(cabal_flag binary-laws binary-laws) \
		$(cabal_flag semigroupoids semigroupoids) \
		$(cabal_flag semirings semirings) \
		$(cabal_flag unary-laws unary-laws) \
		$(cabal_flag vector vector)
}
