# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Datatypes required for chr library"
HOMEPAGE="https://github.com/atzedijkstra/chr"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/chr-pretty-0.1.0.0:=[profile?]
	>=dev-haskell/fclabels-2.0.3:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?]
	>=dev-haskell/microlens-mtl-0.1.6.1:=[profile?]
	>=dev-haskell/microlens-th-0.4:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
