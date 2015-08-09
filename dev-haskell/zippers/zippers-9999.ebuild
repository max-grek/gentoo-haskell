# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit git-2 haskell-cabal

DESCRIPTION="Traversal based zippers"
HOMEPAGE="http://github.com/ekmett/zippers/"
#SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
EGIT_REPO_URI="https://github.com/ekmett/zippers/"

LICENSE="BSD"
SLOT="0/${PV}"
#KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/lens-3.10:=[profile?]
	>=dev-haskell/profunctors-3.2:=[profile?] <dev-haskell/profunctors-4:=[profile?]
	>=dev-haskell/semigroupoids-3.0.2:=[profile?] <dev-haskell/semigroupoids-4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.1 )
"
