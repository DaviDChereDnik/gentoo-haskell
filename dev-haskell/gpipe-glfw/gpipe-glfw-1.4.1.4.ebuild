# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GPipe-GLFW"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="GLFW OpenGL context creation for GPipe"
HOMEPAGE="https://github.com/plredmond/GPipe-GLFW"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/async-2.1:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/glfw-b-3.2:=[profile?] <dev-haskell/glfw-b-3.4:=[profile?]
	>=dev-haskell/gpipe-2.2:=[profile?] <dev-haskell/gpipe-2.5:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-3:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

S="${WORKDIR}/${MY_P}"
