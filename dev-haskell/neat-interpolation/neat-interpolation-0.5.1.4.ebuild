# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Quasiquoter for neat and simple multiline text interpolation"
HOMEPAGE="https://github.com/nikita-volkov/neat-interpolation"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/megaparsec-7:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( <dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10.0.2 <dev-haskell/tasty-hunit-0.11 )
"
