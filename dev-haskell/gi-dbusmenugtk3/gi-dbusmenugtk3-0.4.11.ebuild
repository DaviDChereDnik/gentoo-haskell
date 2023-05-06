# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="DbusmenuGtk bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	haskell-gi
	gi-atk
	gi-dbusmenu
	gi-gobject
	gi-gdk
	gi-gdkpixbuf
	gi-gtk
)

RDEPEND="
	>=dev-haskell/gi-atk-2.0:=[profile?] <dev-haskell/gi-atk-2.1:=[profile?]
	>=dev-haskell/gi-dbusmenu-0.4:=[profile?] <dev-haskell/gi-dbusmenu-0.5:=[profile?]
	>=dev-haskell/gi-gdk-3.0:=[profile?] <dev-haskell/gi-gdk-3.1:=[profile?]
	>=dev-haskell/gi-gdkpixbuf-2.0:=[profile?] <dev-haskell/gi-gdkpixbuf-2.1:=[profile?]
	>=dev-haskell/gi-glib-2.0:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/gi-gtk-3.0:=[profile?] <dev-haskell/gi-gtk-3.1:=[profile?]
	>=dev-haskell/haskell-gi-0.26:=[profile?] <dev-haskell/haskell-gi-0.27:=[profile?]
	>=dev-haskell/haskell-gi-base-0.26:=[profile?] <dev-haskell/haskell-gi-base-0.27:=[profile?]
	<dev-haskell/haskell-gi-overloading-1.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	dev-libs/libdbusmenu[gtk3,introspection]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	virtual/pkgconfig
"
