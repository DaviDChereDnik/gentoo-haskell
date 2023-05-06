# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="relational-query-HDBC"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="HDBC instance of relational-query and typed query interface for HDBC"
HOMEPAGE="http://khibino.github.io/haskell-relational-record/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/convertible:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/hdbc-2:2=[profile?]
	dev-haskell/hdbc-session:=[profile?]
	dev-haskell/names-th:=[profile?]
	>=dev-haskell/persistable-record-0.6:=[profile?]
	>=dev-haskell/product-isomorphic-0.0.3:=[profile?]
	>=dev-haskell/relational-query-0.12.2:=[profile?]
	>=dev-haskell/relational-schemas-0.1.7:=[profile?]
	dev-haskell/sql-words:=[profile?]
	dev-haskell/th-data-compat:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck
		dev-haskell/quickcheck-simple )
"

S="${WORKDIR}/${MY_P}"
