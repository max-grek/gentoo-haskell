# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for RDF processing in Haskell"
HOMEPAGE="https://github.com/robstewart57/rdf4h"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RESTRICT=test # missing test files

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/fgl:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/http-4000.0.0:=[profile?]
	>=dev-haskell/hxt-9.3.1.2:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/text-binary:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?]
			<dev-haskell/network-uri-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2.2.1
		dev-haskell/knob
		>=dev-haskell/quickcheck-1.2.0.0
		>=dev-haskell/test-framework-0.2.3
		>=dev-haskell/test-framework-hunit-0.2.7
		dev-haskell/test-framework-quickcheck2 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
