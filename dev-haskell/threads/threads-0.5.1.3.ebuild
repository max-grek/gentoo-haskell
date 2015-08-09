# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fork threads and wait for their result"
HOMEPAGE="https://github.com/basvandijk/threads"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/stm-2.1:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( >=dev-haskell/concurrent-extra-0.5.1 <dev-haskell/concurrent-extra-0.8
		>=dev-haskell/hunit-1.2.2 <dev-haskell/hunit-1.3
		>=dev-haskell/test-framework-0.2.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.4 <dev-haskell/test-framework-hunit-0.4 )
"
