# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="BitSyntax"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A module to aid in the (de)serialisation of binary data"
HOMEPAGE="http://www.imperialviolet.org/bitsyntax"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/quickcheck:2=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		dev-haskell/cabal"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-qc-2.4.patch
	"${FILESDIR}"/${P}-ghc-7.6.patch)
