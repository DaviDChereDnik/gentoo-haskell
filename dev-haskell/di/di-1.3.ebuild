# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Typeful hierarchical structured logging using di, mtl and df1"
HOMEPAGE="https://github.com/k0001/di"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/df1-0.3:=[profile?]
	dev-haskell/di-core:=[profile?]
	dev-haskell/di-df1:=[profile?]
	dev-haskell/di-handle:=[profile?]
	dev-haskell/di-monad:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
