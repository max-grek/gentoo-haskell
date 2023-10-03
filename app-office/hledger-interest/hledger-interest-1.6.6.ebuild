# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="computes interest for a given account"
HOMEPAGE="https://github.com/peti/hledger-interest"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/cabal:=
	dev-haskell/decimal:=
	>=dev-haskell/hledger-lib-1.26:= <dev-haskell/hledger-lib-1.32:=
	dev-haskell/text:=
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
