# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="X11"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding to the X11 graphics library"
HOMEPAGE="https://github.com/xmonad/X11"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="+xinerama"

RDEPEND="dev-haskell/data-default:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXrandr
	x11-libs/libXScrnSaver
	xinerama? ( x11-libs/libXinerama )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=(
	"${FILESDIR}"/${PN}-1.9-no-LDFLAGS.patch
)

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--configure-option=$(use_with xinerama)
}
