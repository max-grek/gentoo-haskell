# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Utilities for working with OpenGL's GLSL shading language and vinyl records"
HOMEPAGE="http://hackage.haskell.org/package/vinyl-gl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glutil-0.6.4:=[profile?]
	>=dev-haskell/linear-1.1.3:=[profile?]
	>=dev-haskell/opengl-2.8:=[profile?]
	>=dev-haskell/tagged-0.4:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/vinyl-0.5.1:=[profile?] <dev-haskell/vinyl-0.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"
