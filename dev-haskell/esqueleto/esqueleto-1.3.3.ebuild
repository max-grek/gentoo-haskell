# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bare bones, type-safe EDSL for SQL queries on persistent backends."
HOMEPAGE="https://github.com/meteficha/esqueleto"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/conduit:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/persistent-1.2:=[profile?] <dev-haskell/persistent-1.3:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/tagged-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-0.12:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3 <dev-haskell/hspec-1.8
		dev-haskell/hunit
		dev-haskell/monad-control
		>=dev-haskell/persistent-sqlite-1.2 <dev-haskell/persistent-sqlite-1.3
		>=dev-haskell/persistent-template-1.2 <dev-haskell/persistent-template-1.3
		dev-haskell/quickcheck )
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-1.0.6-haddock.patch
}
