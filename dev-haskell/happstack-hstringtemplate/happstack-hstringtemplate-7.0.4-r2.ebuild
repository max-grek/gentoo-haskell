# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Support for using HStringTemplate in Happstack"
HOMEPAGE="http://www.happstack.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/happstack-server-6.0:=[profile?]
	dev-haskell/hslogger:=[profile?]
	>=dev-haskell/hstringtemplate-0.4.3:=[profile?]
	>=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	cabal_chdeps \
		'happstack-server >= 6.0 && < 7.4' 'happstack-server >= 6.0' \
		'HStringTemplate >= 0.4.3 && < 0.8' 'HStringTemplate >= 0.4.3'
}
