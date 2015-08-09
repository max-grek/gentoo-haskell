# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Automatic Differentiation"
HOMEPAGE="http://github.com/ekmett/ad"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/data-reify-0.6:=[profile?] <dev-haskell/data-reify-0.7:=[profile?]
	>=dev-haskell/erf-2.0:=[profile?] <dev-haskell/erf-2.1:=[profile?]
	>=dev-haskell/free-4.6.1:=[profile?] <dev-haskell/free-5:=[profile?]
	>=dev-haskell/nats-0.1.2:=[profile?] <dev-haskell/nats-2:=[profile?]
	>=dev-haskell/reflection-1.4:=[profile?] <dev-haskell/reflection-3:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.0.1 )
"

src_prepare() {
	cabal_chdeps \
		'doctest >= 0.9.0.1 && <= 0.10' 'doctest >= 0.9.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
