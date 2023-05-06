# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999
#hackport: flags: buildExamples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Examples for the reactive-banana library, using wxHaskell"
HOMEPAGE="http://wiki.haskell.org/Reactive-banana"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

WX_GTK_VER="3.0-gtk3"

RDEPEND=">=dev-haskell/cabal-macosx-0.1:=[profile?] <dev-haskell/cabal-macosx-0.3:=[profile?]
	>=dev-haskell/reactive-banana-1.1:=[profile?] <dev-haskell/reactive-banana-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	>=dev-haskell/wx-0.90.0.1:${WX_GTK_VER}=[profile?]
	>=dev-haskell/wxcore-0.90.0.1:${WX_GTK_VER}=[profile?]
	examples? (
		>=dev-haskell/executable-path-0.0:=[profile?] <dev-haskell/executable-path-0.1:=[profile?]
		>=dev-haskell/random-1.0:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	default

	cabal_chdeps \
		'process >= 1.0 && < 1.4' 'process >= 1.0' \
		'filepath >= 1.1 && <= 1.4.0.0' 'filepath >= 1.1' \
		'reactive-banana >= 1.1 && < 1.2' 'reactive-banana >= 1.1 && < 1.3'\
		'containers >= 0.3 && < 0.6' 'containers >=0.3' \
		'random >= 1.0 && <= 1.1' 'random >= 1.0' \
		'Executable Animation' 'Executable reactive-banana-wx-animation' \
		'Executable Arithmetic' 'Executable reactive-banana-wx-arithmetic' \
		'Executable Asteroids' 'Executable reactive-banana-wx-asteroids' \
		'Executable BarTab' 'Executable reactive-banana-wx-bar-tab' \
		'Executable Counter' 'Executable reactive-banana-wx-counter' \
		'Executable CurrencyConverter' 'Executable reactive-banana-wx-currency-converter' \
		'Executable CRUD' 'Executable reactive-banana-wx-crud' \
		'Executable NetMonitor' 'Executable reactive-banana-wx-net-monitor' \
		'Executable TicTacToe' 'Executable reactive-banana-wx-tic-tac-toe' \
		'Executable TwoCounters' 'Executable reactive-banana-wx-two-counters' \
		'Executable Wave' 'Executable reactive-banana-wx-wave'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildExamples)
}
