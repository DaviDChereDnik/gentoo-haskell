# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -ghci-data-files

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate HTML docs from a dhall package"
HOMEPAGE="https://dhall-lang.org/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-1.0.8-cabal-doctest.patch" )

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

RDEPEND=">=dev-haskell/base16-bytestring-1.0.0.0:=[profile?]
	dev-haskell/cryptohash-sha256:=[profile?]
	>=dev-haskell/file-embed-0.0.10.0:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	>=dev-haskell/lucid-2.9.12:=[profile?] <dev-haskell/lucid-2.12:=[profile?]
	>=dev-haskell/megaparsec-7:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
	>=dev-haskell/mmark-0.0.7.0:=[profile?] <dev-haskell/mmark-0.8:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/path-0.7.0:=[profile?] <dev-haskell/path-0.10:=[profile?]
	>=dev-haskell/path-io-1.6.0:=[profile?] <dev-haskell/path-io-2:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-lang/dhall-1.38.0:=[profile?] <dev-lang/dhall-1.42:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? (
		>=dev-haskell/doctest-0.7.0
		<dev-haskell/foldl-1.5
		>=dev-haskell/lucid-2.11.0
		<dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		<dev-haskell/tasty-silver-3.4
		<dev-haskell/turtle-1.7
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ghci-data-files
}
