# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lazy bit strings"
HOMEPAGE="http://code.haskell.org/~bkomuves/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="withquickcheck"

RDEPEND=">=dev-lang/ghc-7.4.1:=[profile?]
	withquickcheck? ( >=dev-haskell/quickcheck-2:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag withquickcheck withquickcheck)
}
