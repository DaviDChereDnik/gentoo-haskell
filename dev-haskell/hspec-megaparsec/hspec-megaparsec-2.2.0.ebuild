# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Utility functions for testing Megaparsec parsers with Hspec"
HOMEPAGE="https://github.com/mrkkrp/hspec-megaparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/hspec-expectations-0.8:=[profile?] <dev-haskell/hspec-expectations-0.9:=[profile?]
	>=dev-haskell/megaparsec-9.0:=[profile?] <dev-haskell/megaparsec-10.0:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
