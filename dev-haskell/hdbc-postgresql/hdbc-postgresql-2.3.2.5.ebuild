# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: +splitbase

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-postgresql"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PostgreSQL driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-postgresql"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-db/postgresql-7:*
	dev-haskell/convertible:=[profile?]
	>=dev-haskell/hdbc-2.2.0:2=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=splitbase
}
