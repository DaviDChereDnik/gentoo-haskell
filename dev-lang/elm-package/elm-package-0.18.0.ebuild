# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Package manager for Elm libraries"
HOMEPAGE="https://github.com/elm-lang/elm-package"
SRC_URI="https://github.com/elm-lang/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6.7.3:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	dev-haskell/edit-distance:=[profile?]
	>=dev-haskell/http-4000.2.5:=[profile?]
	>=dev-haskell/http-client-0.4.15:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/network-2.4:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.12:=[profile?]
	dev-haskell/parallel-io:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	dev-haskell/zip-archive:=[profile?]
	~dev-lang/elm-compiler-${PV}:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=(
	"${FILESDIR}"/${P}-asciize.patch
	"${FILESDIR}"/${P}-http-client-0.5.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'HTTP >= 4000.2.5 && < 4000.3' 'HTTP >= 4000.2.5' \
		'optparse-applicative >= 0.11 && < 0.12' 'optparse-applicative >= 0.11' \
		'binary >= 0.7 && < 0.8' 'binary >= 0.7' \
		'http-types >= 0.7 && < 0.9' 'http-types >= 0.7'
}
