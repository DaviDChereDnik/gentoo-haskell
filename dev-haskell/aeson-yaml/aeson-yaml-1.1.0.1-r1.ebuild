# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Output any Aeson value as YAML (pure Haskell library)"
HOMEPAGE="https://github.com/clovyr/aeson-yaml"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="build-binaries"

RDEPEND=">=dev-haskell/aeson-0.4.0.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1.0.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.1:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/string-qq
		dev-haskell/tasty
		dev-haskell/tasty-discover
		dev-haskell/tasty-hunit
		dev-haskell/yaml )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-binaries build-binaries)
}
