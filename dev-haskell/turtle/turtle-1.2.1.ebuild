# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Shell programming, Haskell-style"
HOMEPAGE="http://hackage.haskell.org/package/turtle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.0.0:=[profile?] <dev-haskell/async-2.1:=[profile?]
	>=dev-haskell/clock-0.4.1.2:=[profile?] <dev-haskell/clock-0.6:=[profile?]
	>=dev-haskell/foldl-1.1:=[profile?] <dev-haskell/foldl-1.2:=[profile?]
	<dev-haskell/hostname-1.1:=[profile?]
	<dev-haskell/managed-1.1:=[profile?]
	>=dev-haskell/optional-args-1.0:=[profile?] <dev-haskell/optional-args-2.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.12:=[profile?]
	>=dev-haskell/system-fileio-0.2.1:=[profile?] <dev-haskell/system-fileio-0.4:=[profile?]
	>=dev-haskell/system-filepath-0.3.1:=[profile?] <dev-haskell/system-filepath-0.5:=[profile?]
	<dev-haskell/temporary-1.3:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2.0.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.12 <dev-haskell/doctest-0.11 )
"
