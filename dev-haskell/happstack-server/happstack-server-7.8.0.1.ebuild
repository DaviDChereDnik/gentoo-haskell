# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Web related tools and services"
HOMEPAGE="https://happstack.com"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/hslogger-1.0.2:=[profile?]
	dev-haskell/html:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/network-3.0.0:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/sendfile-0.7.1:=[profile?] <dev-haskell/sendfile-0.8:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/system-filepath-0.3.1:=[profile?]
	>=dev-haskell/threads-0.5:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.8:=[profile?]
	>=dev-haskell/utf8-string-0.3.4:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	dev-haskell/xhtml:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( dev-haskell/hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-uri
}
