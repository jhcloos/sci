# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Unified framework for finite element assembly"
HOMEPAGE="http://launchpad.net/ufc"
SRC_URI="http://launchpad.net/${PN}/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
