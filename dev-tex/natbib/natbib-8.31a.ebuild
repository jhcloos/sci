# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit latex-package

DESCRIPTION="LaTeX package used for formatting publications to the American Chemical Society"

SRC_URI="http://omploader.org/vNHUxMw/natbib-8.31a.zip"
HOMEPAGE="http://tug.ctan.org/cgi-bin/ctanPackageInformation.py?id=natbib"
LICENSE="LPPL-1.2"
SLOT="0"
IUSE=""

KEYWORDS="~amd64 ~x86"
DEPEND="app-arch/unzip"

RESTRICT="primaryuri"

S="${WORKDIR}/${PN}"