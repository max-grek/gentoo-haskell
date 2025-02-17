# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: -buildtests

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-sqlite3"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Sqlite v3 driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-sqlite3"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+splitbase"

RDEPEND=">=dev-db/sqlite-3.0
	>=dev-haskell/hdbc-2.3.0.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests \
		$(cabal_flag splitbase splitbase)
}
