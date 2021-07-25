# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.17.9999

EAPI=8

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Display keywording for ebuilds"
HOMEPAGE="https://hackage.haskell.org/package/keyword-stat"
SRC_URI="https://github.com/gentoo-haskell/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/cabal
		dev-haskell/pcre-light
		>=dev-lang/ghc-6.10.1"
