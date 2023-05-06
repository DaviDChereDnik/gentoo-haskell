# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2
#hackport: flags: -test,-halvm

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="AES and common modes using AES-NI when available"
HOMEPAGE="https://github.com/TomMD/cipher-aes128"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/cereal:=[profile?]
	>=dev-haskell/crypto-api-0.13:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'Cabal >= 1.10 && < 3.1' 'Cabal >= 1.10'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-halvm \
		--flag=-test
}
