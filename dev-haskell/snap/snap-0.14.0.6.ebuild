# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -old-base

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Top-level package for the Snap Web Framework"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/clientsession-0.8:=[profile?] <dev-haskell/clientsession-0.10:=[profile?]
	>=dev-haskell/comonad-1.1:=[profile?] <dev-haskell/comonad-4.3:=[profile?]
	>=dev-haskell/configurator-0.1:=[profile?] <dev-haskell/configurator-0.4:=[profile?]
	>=dev-haskell/directory-tree-0.11:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?] <dev-haskell/dlist-0.8:=[profile?]
	>=dev-haskell/either-4.3:=[profile?] <dev-haskell/either-4.5:=[profile?]
	>=dev-haskell/heist-0.14:=[profile?] <dev-haskell/heist-0.15:=[profile?]
	>=dev-haskell/lens-3.7.6:=[profile?] <dev-haskell/lens-4.13:=[profile?]
	>=dev-haskell/logict-0.4.2:=[profile?] <dev-haskell/logict-0.7:=[profile?]
	>=dev-haskell/monadcatchio-transformers-0.2:=[profile?] <dev-haskell/monadcatchio-transformers-0.4:=[profile?]
	>dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/mwc-random-0.8:=[profile?] <dev-haskell/mwc-random-0.14:=[profile?]
	>=dev-haskell/old-time-1.0:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	>=dev-haskell/pwstore-fast-2.2:=[profile?] <dev-haskell/pwstore-fast-2.5:=[profile?]
	>=dev-haskell/regex-posix-0.95:=[profile?] <dev-haskell/regex-posix-1:=[profile?]
	>=dev-haskell/snap-core-0.9:=[profile?] <dev-haskell/snap-core-0.11:=[profile?]
	>=dev-haskell/snap-server-0.9:=[profile?] <dev-haskell/snap-server-0.11:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/vector-algorithms-0.4:=[profile?] <dev-haskell/vector-algorithms-0.8:=[profile?]
	>=dev-haskell/xmlhtml-0.1:=[profile?] <dev-haskell/xmlhtml-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	|| ( ( >=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-0.7:=[profile?] )
		( >=dev-haskell/aeson-0.7.0.4:=[profile?] <dev-haskell/aeson-0.10:=[profile?] ) )
	|| ( ( >=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.2:=[profile?] )
		( >=dev-haskell/hashable-1.2.0.6:=[profile?] <dev-haskell/hashable-1.3:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-old-base
}
