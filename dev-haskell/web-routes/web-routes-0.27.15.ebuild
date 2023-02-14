# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="portable, type-safe URL routing"
HOMEPAGE="https://www.happstack.com/docs/crashcourse/index.html#web-routes"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/blaze-builder-0.2:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/http-types-0.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( dev-haskell/hspec
		dev-haskell/hunit
		dev-haskell/quickcheck )
"
