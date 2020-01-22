# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -parsec-struct-diff

CABAL_FEATURES="lib profile" # Drop test-suite: circular depend
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

MY_PN="Cabal"
MY_PV="v3.0.1.0-rc2"
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="https://github.com/haskell/${PN}/archive/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.8
#KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RESTRICT=test # circular deps: cabal -> quickcheck -> cabal

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}-${MY_P}/${MY_PN}"
PATCHES=("${FILESDIR}"/${PN}-2.0.0.2-no-bootstrap.patch)

CABAL_CORE_LIB_GHC_PV="PM:8.8.2"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-parsec-struct-diff
}
