# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.2.9999
#hackport: flags: -oldbase,-buildtestexecutable

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="RSA"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Implementation of RSA, using the padding schemes of PKCS#1 v2.1"
HOMEPAGE="http://hackage.haskell.org/package/RSA"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # make 30 minutes on i7 box

RDEPEND=">dev-haskell/binary-0.0:=[profile?] <dev-haskell/binary-10000:=[profile?]
	>=dev-haskell/crypto-api-0.10:=[profile?] <dev-haskell/crypto-api-10000:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.2:=[profile?] <dev-haskell/crypto-pubkey-types-10000:=[profile?]
	>=dev-haskell/drbg-0.5.2:=[profile?] <dev-haskell/drbg-10000:=[profile?]
	>dev-haskell/monadcryptorandom-0:=[profile?] <dev-haskell/monadcryptorandom-10000:=[profile?]
	>dev-haskell/puremd5-0:=[profile?] <dev-haskell/puremd5-10000:=[profile?]
	>=dev-haskell/quickcheck-2.5:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>dev-haskell/sha-0:=[profile?] <dev-haskell/sha-10000:=[profile?]
	>=dev-haskell/tagged-0.2:=[profile?] <dev-haskell/tagged-10000:=[profile?]
	>=dev-haskell/test-framework-0.8.0.3:=[profile?] <dev-haskell/test-framework-10000:=[profile?]
	>=dev-haskell/test-framework-quickcheck2-0.3.0.2:=[profile?] <dev-haskell/test-framework-quickcheck2-10000:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtestexecutable \
		--flag=-oldbase
}
