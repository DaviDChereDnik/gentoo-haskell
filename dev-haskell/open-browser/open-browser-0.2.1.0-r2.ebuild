# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Open a web browser from Haskell"
HOMEPAGE="https://github.com/rightfold/open-browser"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

PATCHES=(
	"${FILESDIR}/${PN}-0.2.1.0-add-examples-flag.patch"
)

RDEPEND="
	|| ( dev-lang/ghc ( >=dev-haskell/process-1[profile?] <dev-haskell/process-2[profile?] ) )
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
