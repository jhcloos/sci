# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils

MY_P="AutoDockTools-${PV}"

DESCRIPTION="mgltools plugin -- autodocktools"
HOMEPAGE="http://mgltools.scripps.edu"
#SRC_URI="http://mgltools.scripps.edu/downloads/tars/releases/REL${PV}/mgltools_source_${PV}.tar.gz"
SRC_URI="http://dev.gentooexperimental.org/~jlec/distfiles/mgltools_source_${PV}.tar.gz"

LICENSE="MGLTOOLS"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	sci-chemistry/mgltools-support
	dev-lang/python[tk]"
DEPEND="${RDEPEND}
	dev-lang/swig"

S="${WORKDIR}"/${MY_P}

DOCS="AutoDockTools/RELNOTES"

src_unpack() {
	tar xzpf "${DISTDIR}"/${A} mgltools_source_${PV}/MGLPACKS/${MY_P}.tar.gz
	tar xzpf mgltools_source_${PV}/MGLPACKS/${MY_P}.tar.gz
}

src_prepare() {
	find "${S}" -name CVS -type d -exec rm -rf '{}' \; >& /dev/null
	find "${S}" -name LICENSE -type f -exec rm -f '{}' \; >& /dev/null

	sed  \
		-e 's:^.*CVS:#&1:g' \
		-e 's:^.*LICENSE:#&1:g' \
		-i "${S}"/MANIFEST.in
}

src_install() {
	distutils_src_install

	sed '1s:^.*$:#!/usr/bin/python:g' -i AutoDockTools/bin/runAdt || die
	dobin AutoDockTools/bin/runAdt || die
}