# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="FFI interface to libev"
HOMEPAGE="http://github.com/aycanirican/hlibev"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/network
		>=dev-lang/ghc-6.10.1
		>=dev-libs/libev-4.03"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
