# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit git-2 haskell-cabal

DESCRIPTION="Get terminal window height and width"
HOMEPAGE="http://hackage.haskell.org/package/terminal-size"
EGIT_REPO_URI="git://github.com/biegunka/terminal-size.git"

LICENSE="BSD"
SLOT="0/${PV}"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

