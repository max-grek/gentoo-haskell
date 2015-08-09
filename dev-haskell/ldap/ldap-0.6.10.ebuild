# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="LDAP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Haskell binding for C LDAP API"
HOMEPAGE="https://github.com/ezyang/ldap-haskell"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests"

RDEPEND=">=dev-lang/ghc-7.4.1:=
	net-nds/openldap
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.3
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests)
}
