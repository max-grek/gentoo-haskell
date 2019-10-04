# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Secure WebSocket (WSS) clients"
HOMEPAGE="https://github.com/tfausak/wuss#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/connection-0.2.6:=[profile?] <dev-haskell/connection-0.4:=[profile?]
	>=dev-haskell/websockets-0.9.7:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	>=dev-haskell/network-2.6.3:=[profile?] <dev-haskell/network-3.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
