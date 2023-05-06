# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Encoders and decoders for the PostgreSQL's binary format"
HOMEPAGE="https://github.com/nikita-volkov/postgresql-binary "

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # requires running postgresql instance

RDEPEND=">=dev-haskell/aeson-2:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/binary-parser-0.5.7:=[profile?] <dev-haskell/binary-parser-0.6:=[profile?]
	>=dev-haskell/bytestring-strict-builder-0.4.5.4:=[profile?] <dev-haskell/bytestring-strict-builder-0.5:=[profile?]
	>=dev-haskell/network-ip-0.3:=[profile?] <dev-haskell/network-ip-0.4:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/conversion-1 <dev-haskell/conversion-2
		>=dev-haskell/conversion-bytestring-1 <dev-haskell/conversion-bytestring-2
		>=dev-haskell/conversion-text-1 <dev-haskell/conversion-text-2
		>=dev-haskell/json-ast-0.3 <dev-haskell/json-ast-0.4
		>=dev-haskell/postgresql-libpq-0.9 <dev-haskell/postgresql-libpq-0.10
		>=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.22 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/rerebase-1.10.0.1 <dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.4 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11 )
"
