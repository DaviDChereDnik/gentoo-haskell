# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper for source code management systems"
HOMEPAGE="https://github.com/forste/haskellVCSWrapper"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/hxt-9.1.2:=[profile?] <dev-haskell/hxt-9.4:=[profile?]
	>=dev-haskell/mtl-2.0.1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/split-0.2.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-0.11.1.5:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.0.0.0 && <4.11' 'base >=4.0.0.0' \
		'containers >=0.5.5.1 && <0.6' 'containers >=0.5.5.1'
}
