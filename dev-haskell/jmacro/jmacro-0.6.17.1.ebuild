# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="QuasiQuotation library for programmatic generation of Javascript code"
HOMEPAGE="https://hackage.haskell.org/package/jmacro"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="benchmarks"

RDEPEND="
	>=dev-haskell/aeson-0.5:=[profile?]
	dev-haskell/haskell-src-exts:=[profile?]
	dev-haskell/haskell-src-meta:=[profile?]
	dev-haskell/parseargs:=[profile?]
	>dev-haskell/regex-posix-0.9:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.8:=[profile?]
	dev-haskell/wl-pprint-text:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	benchmarks? (
		dev-haskell/criterion:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag benchmarks benchmarks)
}
