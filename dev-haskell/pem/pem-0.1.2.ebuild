# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Privacy Enhanced Mail (PEM) format reader and writer"
HOMEPAGE="http://github.com/vincenthz/hs-pem"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/attoparsec:=[profile?]
		dev-haskell/base64-bytestring:=[profile?]
		dev-haskell/cereal:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/quickcheck-2.4.0.1
			>=dev-haskell/test-framework-0.3.3
			dev-haskell/test-framework-quickcheck2
		)
		>=dev-haskell/cabal-1.8"
