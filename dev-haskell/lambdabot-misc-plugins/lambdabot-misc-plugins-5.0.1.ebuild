# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot miscellaneous plugins"
HOMEPAGE="http://haskell.org/haskellwiki/Lambdabot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND=">=dev-haskell/hstatsd-0.1:=[profile?]
	>=dev-haskell/lambdabot-core-5.0.1:=[profile?] <dev-haskell/lambdabot-core-5.1:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/random-fu-0.2:=[profile?]
	>=dev-haskell/random-source-0.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/safesemaphore-0.9:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/tagsoup-0.12:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?]
			<dev-haskell/network-uri-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
