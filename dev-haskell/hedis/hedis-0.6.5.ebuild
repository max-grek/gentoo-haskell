# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Client library for the Redis datastore: supports full command set, pipelining"
HOMEPAGE="https://github.com/informatikr/hedis"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs redis?

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/boundedchan-1.0:=[profile?] <dev-haskell/boundedchan-1.1:=[profile?]
	>=dev-haskell/bytestring-lexing-0.4:=[profile?] <dev-haskell/bytestring-lexing-0.5:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/network-2:=[profile?] <dev-haskell/network-3:=[profile?]
	>=dev-haskell/resource-pool-0.2:=[profile?] <dev-haskell/resource-pool-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"
