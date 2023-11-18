# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: buildreadme:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Tests require old <genvalidity-1

DESCRIPTION="Lists with a focused element"
HOMEPAGE="https://github.com/cdepillabout/focuslist"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

RDEPEND=">=dev-haskell/lens-4.16:=[profile?]
	dev-haskell/mono-traversable:=[profile?]
	>=dev-haskell/quickcheck-2.11.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	examples? ( dev-haskell/markdown-unlit:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	>=dev-haskell/cabal-doctest-1.0.2 <dev-haskell/cabal-doctest-1.1
"
#	test? ( dev-haskell/doctest
#		<dev-haskell/genvalidity-1.0.0.0
#		>=dev-haskell/genvalidity-containers-0.5
#		>=dev-haskell/genvalidity-hspec-0.6
#		>=dev-haskell/hedgehog-0.6.1
#		dev-haskell/hspec
#		>=dev-haskell/tasty-1.1
#		>=dev-haskell/tasty-hedgehog-0.2
#		>=dev-haskell/tasty-hspec-1.1
#		<dev-haskell/validity-0.12.0.0 )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildreadme)
}
