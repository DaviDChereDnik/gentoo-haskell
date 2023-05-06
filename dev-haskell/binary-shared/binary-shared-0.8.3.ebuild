# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sharing for the binary package"
HOMEPAGE="http://www.leksah.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
		>=dev-haskell/mtl-1.1.0.2:=[profile?]
		>=dev-lang/ghc-7.4.1:=[profile?]"
DEPEND="${RDEPEND}
		dev-haskell/cabal"
