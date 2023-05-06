# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="X509 reader and writer"
HOMEPAGE="https://github.com/vincenthz/hs-certificate"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/asn1-encoding-0.9:=[profile?] <dev-haskell/asn1-encoding-0.10:=[profile?]
	>=dev-haskell/asn1-parse-0.9.3:=[profile?] <dev-haskell/asn1-parse-0.10:=[profile?]
	>=dev-haskell/asn1-types-0.3.1:=[profile?] <dev-haskell/asn1-types-0.4:=[profile?]
	>=dev-haskell/cryptonite-0.24:=[profile?]
	dev-haskell/hourglass:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/pem-0.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"
