# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A wrapper around the eggtraymanager library for Linux system trays"
HOMEPAGE="http://github.com/travitch/gtk-traymanager"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.12.1:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk-0.12.1:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/libX11
	x11-libs/gtk+:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	virtual/pkgconfig
"
