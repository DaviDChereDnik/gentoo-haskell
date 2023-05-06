# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999
#hackport: flags: useeditline:editline,usereadline:readline

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Shellac-compatline"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="\"compatline\" backend module for Shellac"
HOMEPAGE="http://rwd.rdockins.name/shellac/home/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="editline +readline"

RDEPEND="dev-haskell/shellac:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	editline? ( dev-haskell/shellac-editline:=[profile?] )
	readline? ( dev-haskell/shellac-readline:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag editline useeditline) \
		$(cabal_flag readline usereadline)
}
