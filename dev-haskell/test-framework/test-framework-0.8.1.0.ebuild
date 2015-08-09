# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Framework for running and organising tests, with HUnit and QuickCheck support"
HOMEPAGE="https://batterseapower.github.io/test-framework/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE="test"
RESTRICT="test" # tests are missing

RDEPEND=">=dev-haskell/ansi-terminal-0.4.0:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.5.1:=[profile?]
	>=dev-haskell/hostname-1.0:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/regex-posix-0.72:=[profile?]
	>=dev-haskell/xml-1.3.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	test? ( >=dev-haskell/hunit-1.2:=[profile?]
			>=dev-haskell/libxml-0.1.1:=[profile?]
			>=dev-haskell/quickcheck-2.3:2=[profile?] <dev-haskell/quickcheck-2.8:2=[profile?] )
"

src_prepare() {
	cabal_chdeps \
		'QuickCheck >= 2.3 && < 2.5' 'QuickCheck >= 2.3 && < 2.8' \
		'time >= 1.1.2 && < 1.6' 'time >= 1.1.2'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test tests)
}
