# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Curses-style terminal interface for the hledger accounting system"
HOMEPAGE="https://hledger.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+threaded"

RDEPEND=">=dev-haskell/ansi-terminal-0.9:=
	dev-haskell/async:=
	>=dev-haskell/base-compat-batteries-0.10.1:= <dev-haskell/base-compat-batteries-0.12:=
	>=dev-haskell/brick-0.23:=
	>=dev-haskell/cmdargs-0.8:=
	dev-haskell/data-default:=
	>=dev-haskell/extra-1.6.3:=
	>=dev-haskell/fsnotify-0.2.1.2:= <dev-haskell/fsnotify-0.4:=
	>=dev-haskell/hledger-1.22.2:= <dev-haskell/hledger-1.23:=
	>=dev-haskell/hledger-lib-1.22.2:= <dev-haskell/hledger-lib-1.23:=
	>=dev-haskell/megaparsec-7.0.0:= <dev-haskell/megaparsec-9.2:=
	>=dev-haskell/microlens-0.4:=
	>=dev-haskell/microlens-platform-0.2.3.1:=
	>=dev-haskell/safe-0.2:=
	>=dev-haskell/split-0.1:=
	>=dev-haskell/text-1.2:=
	>=dev-haskell/text-zipper-0.4:=
	dev-haskell/vector:=
	>=dev-haskell/vty-5.15:=
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag threaded threaded)
}
