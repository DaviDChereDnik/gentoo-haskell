# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.7.9999
#hackport: flags: -developer,+network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="a Haskell client for the Selenium WebDriver protocol"
HOMEPAGE="https://github.com/kallisti-dev/hs-webdriver"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2.0:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	<dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/directory-tree-0.11:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/exceptions-0.4:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/http-client-0.3:=[profile?] <dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/temporary-1.0:=[profile?] <dev-haskell/temporary-2.0:=[profile?]
	>=dev-haskell/text-0.11.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.4:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/transformers-base-0.1:=[profile?] <dev-haskell/transformers-base-1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.1.3:=[profile?] <dev-haskell/unordered-containers-0.4:=[profile?]
	>=dev-haskell/vector-0.3:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/zip-archive-0.1.1.8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	cabal_chdeps \
		'zip-archive >= 0.1.1.8 && < 0.3' 'zip-archive >= 0.1.1.8'
	eapply_user
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer \
		--flag=network-uri
}
