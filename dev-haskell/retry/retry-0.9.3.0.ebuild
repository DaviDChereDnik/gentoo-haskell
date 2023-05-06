# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Retry combinators for monadic actions that may fail"
HOMEPAGE="https://github.com/Soostone/retry"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/mtl-compat:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/unliftio-core-0.1.0.0:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/hedgehog-1.0
		>=dev-haskell/hunit-1.2.5.2
		dev-haskell/stm
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
