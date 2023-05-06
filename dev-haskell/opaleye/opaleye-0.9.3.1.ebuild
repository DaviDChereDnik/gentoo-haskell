# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An SQL-generating DSL targeting PostgreSQL"
HOMEPAGE="https://github.com/tomjaguarpaw/haskell-opaleye"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # needs running postgresql

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/contravariant-1.2:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/postgresql-simple-0.6:=[profile?] <dev-haskell/postgresql-simple-0.7:=[profile?]
	>=dev-haskell/product-profunctors-0.11.0.3:=[profile?] <dev-haskell/product-profunctors-0.12:=[profile?]
	>=dev-haskell/profunctors-4.0:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.13:=[profile?] <dev-haskell/semigroups-0.21:=[profile?]
	>=dev-haskell/time-compat-1.9.5:=[profile?] <dev-haskell/time-compat-1.12:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/void-0.4:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/dotenv-0.3.1
		dev-haskell/hspec
		dev-haskell/hspec-discover
		dev-haskell/multiset
		dev-haskell/quickcheck )
"
