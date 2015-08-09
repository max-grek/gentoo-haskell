# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Commonly used conduit functions, for both chunked and unchunked data"
HOMEPAGE="https://github.com/fpco/conduit-combinators"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/base16-bytestring:=[profile?]
	>=dev-haskell/base64-bytestring-0.1.1.1:=[profile?]
	dev-haskell/chunked-data:=[profile?]
	>=dev-haskell/conduit-1.2.2:=[profile?]
	>=dev-haskell/conduit-extra-1.1.1:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/mono-traversable-0.4:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/void:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/mtl
		>=dev-haskell/quickcheck-2.5
		dev-haskell/safe
		dev-haskell/silently )
"
