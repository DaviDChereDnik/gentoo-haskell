# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Client library for AMQP servers (currently only RabbitMQ)"
HOMEPAGE="https://github.com/hreinhardt/amqp"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # requires network

RDEPEND=">=dev-haskell/clock-0.4.0.1:=[profile?]
	>=dev-haskell/crypton-connection-0.2:=[profile?] <=dev-haskell/crypton-connection-0.4:=[profile?]
	>=dev-haskell/data-binary-ieee754-0.4.2.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/text-0.11.2:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/hspec-1.3
		>=dev-haskell/hspec-expectations-0.3.3 )
"

# until upstream ports over, maintain this through version bumps
CABAL_CHDEPS=(
	'connection >= 0.2 && <= 0.4' 'crypton-connection >= 0.2 && <= 0.4'
)
