# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -noio

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="properly streaming text"
HOMEPAGE="https://github.com/pjones/pipes-text"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="maintainer"

RDEPEND=">=dev-haskell/pipes-4.0:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/pipes-bytestring-1.0:=[profile?] <dev-haskell/pipes-bytestring-2.2:=[profile?]
	>=dev-haskell/pipes-group-1.0.0:=[profile?] <dev-haskell/pipes-group-1.1:=[profile?]
	>=dev-haskell/pipes-parse-3.0.0:=[profile?] <dev-haskell/pipes-parse-3.1:=[profile?]
	>=dev-haskell/pipes-safe-2.1:=[profile?] <dev-haskell/pipes-safe-2.4:=[profile?]
	>=dev-haskell/streaming-commons-0.1:=[profile?] <dev-haskell/streaming-commons-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maintainer maintainer) \
		--flag=-noio
}
