# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.3.9999
CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal multilib

DESCRIPTION="Haskell bindings for the CUFFT library"
HOMEPAGE="http://github.com/robeverest/cufft"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cuda-0.4.1:=[profile?]
	dev-util/nvidia-cuda-toolkit
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-1.8
"

CABAL_CONFIGURE_FLAGS="--extra-lib-dirs="${EPREFIX}"/opt/cuda/$(get_libdir) \
		--extra-include-dirs=/opt/cuda/include -v3"

src_prepare() {
	sed -e "s@/usr/local/cuda@${ROOT}opt/cuda@g" \
		-e "s@LDFLAGS+=\" -L\${cuda_lib_path} \"@LDFLAGS+=\" ${EPREFIX}"/opt/cuda/$(get_libdir)" -R${EPREFIX}"/opt/cuda/$(get_libdir)" \"@" \
		-i "${S}/configure.ac" \
		-i "${S}/configure" \
		|| die "Could not set cuda location in configure"
}
