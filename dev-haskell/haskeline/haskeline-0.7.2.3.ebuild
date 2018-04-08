# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A command-line interface for user input, written in Haskell"
HOMEPAGE="https://github.com/judah/haskeline"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.0.1
KEYWORDS="~amd64 ~x86 ~x86-fbsd ~x86-macos"
IUSE="legacy-encoding libiconv +terminfo"

RDEPEND=">=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	legacy-encoding? ( >=dev-haskell/utf8-string-0.3.6:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?] )
	terminfo? ( >=dev-haskell/terminfo-0.3.1.3:=[profile?] <dev-haskell/terminfo-0.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

CABAL_CORE_LIB_GHC_PV="PM:8.0.1_rc4 PM:8.0.1 PM:8.0.2_rc1"

src_prepare() {
	default

	cabal_chdeps \
		'directory>=1.1 && < 1.3' 'directory>=1.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag legacy-encoding legacy-encoding) \
		$(cabal_flag libiconv libiconv) \
		$(cabal_flag terminfo terminfo)
}
