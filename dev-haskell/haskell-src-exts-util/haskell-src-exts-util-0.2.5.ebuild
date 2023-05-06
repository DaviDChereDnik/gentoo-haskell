# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Helper functions for working with haskell-src-exts trees"
HOMEPAGE="https://github.com/pepeiborra/haskell-src-exts-util"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
	>=dev-haskell/haskell-src-exts-1.20.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/uniplate:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
