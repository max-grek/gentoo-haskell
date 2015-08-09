# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to the ALSA simple mixer API"
HOMEPAGE="http://hackage.haskell.org/package/alsa-mixer"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/alsa-core-0.5*:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		media-libs/alsa-lib"
DEPEND="${RDEPEND}
		dev-haskell/c2hs
		>=dev-haskell/cabal-1.6"
