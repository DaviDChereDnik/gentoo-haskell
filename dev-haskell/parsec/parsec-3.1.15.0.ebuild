# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite circular depends
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/haskell/parsec"

LICENSE="BSD-2"
SLOT="0/${PV}"
#keep in sync with ghc-9.2.4
#KEYWORDS="~amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux"

RESTRICT=test # circular dependencies: dev-haskell/base-orphans->cabal->parsec[test]->test-framework-hunit->test-framework->base-orphans

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
"

CABAL_CORE_LIB_GHC_PV="PM:9.2.4 PM:9999"
