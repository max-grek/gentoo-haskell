# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -double,+terminfo

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit ghc-package haskell-cabal

DESCRIPTION="Command-line interface for the hledger accounting system"
HOMEPAGE="https://hledger.org"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	>=dev-haskell/decimal-0.5.1:=[profile?]
	>=dev-haskell/diff-0.2:=[profile?]
	>=dev-haskell/extra-1.6.3:=[profile?]
	>=dev-haskell/githash-0.1.6.2:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?]
	>=dev-haskell/hledger-lib-1.32.2:=[profile?] <dev-haskell/hledger-lib-1.33:=[profile?]
	dev-haskell/lucid:=[profile?]
	>=dev-haskell/math-functions-0.3.3.0:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?] <dev-haskell/megaparsec-9.7:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.3.19:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?]
	>=dev-haskell/tasty-1.2.3:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-haskell/text-1.2.4.1:=[profile?]
	>=dev-haskell/text-ansi-0.2.1:=[profile?]
	dev-haskell/timeit:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?]
	>=dev-haskell/utility-ht-0.0.13:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"

src_configure() {
	if ghc-supports-threaded-runtime; then
		local threaded_flag=threaded
	else
		local threaded_flag=-threaded
	fi

	haskell-cabal_src_configure \
		--flag=-double \
		--flag=terminfo \
		--flag="${threaded_flag}"
}

src_install() {
		haskell-cabal_src_install

		doman embeddedfiles/*.1
#		doman embeddedfiles/*.5 # doman:embeddedfiles/*.5 does not exist
		doinfo embeddedfiles/*.info
}
