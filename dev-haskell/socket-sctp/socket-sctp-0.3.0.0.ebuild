# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="STCP socket extensions library"
HOMEPAGE="https://github.com/shlevy/haskell-socket-sctp"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs sctp support in kernel

RDEPEND=">=dev-haskell/socket-0.7.0.0:=[profile?] <dev-haskell/socket-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	net-misc/lksctp-tools:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)
