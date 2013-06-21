# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="QuickCheck2 support for the test-framework package."
HOMEPAGE="http://batterseapower.github.com/test-framework/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
#hackport: ignore-flag base3 : we don't support base3
#hackport: ignore-flag base4 : we don't support base4
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1.1:=[profile?]
		<dev-haskell/extensible-exceptions-0.2.0:=[profile?]
		>=dev-haskell/quickcheck-2.4:2=[profile?]
		<dev-haskell/quickcheck-2.7:2=[profile?]
		>=dev-haskell/random-1:=[profile?]
		>=dev-haskell/test-framework-0.7.1:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

src_prepare() {
	cabal_chdeps \
		'QuickCheck >= 2.4 && < 2.6' 'QuickCheck >= 2.4 && < 2.7'
}
