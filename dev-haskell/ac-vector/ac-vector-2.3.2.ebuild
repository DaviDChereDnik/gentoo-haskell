# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="AC-Vector"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Efficient geometric vectors and transformations"
HOMEPAGE="https://hackage.haskell.org/package/AC-Vector"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=[profile?]"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

S="${WORKDIR}/${MY_P}"
