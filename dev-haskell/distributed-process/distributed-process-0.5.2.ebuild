# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Cloud Haskell: Erlang-style concurrency in Haskell"
HOMEPAGE="http://haskell-distributed.github.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="prof +th"

RDEPEND=">=dev-haskell/binary-0.6.3:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/data-accessor-0.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/distributed-static-0.2:=[profile?] <dev-haskell/distributed-static-0.4:=[profile?]
	>=dev-haskell/hashable-1.2.0.5:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-transport-0.4.1.0:=[profile?] <dev-haskell/network-transport-0.5:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/rank1dynamic-0.1:=[profile?] <dev-haskell/rank1dynamic-0.3:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.5:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	cabal_chdeps \
		'random >= 1.0 && < 1.1' 'random >= 1.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag prof prof) \
		$(cabal_flag th th)
}
