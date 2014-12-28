# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-client/dwb/dwb-9999.ebuild,v 1.10 2014/06/26 04:41:55 radhermit Exp $

EAPI=5
PYTHON_COMPAT=( python3_4 )

inherit toolchain-funcs distutils-r1

DESCRIPTION="A keyboard-driven, vim-like browser based on PyQt5 and QtWebKit."
HOMEPAGE="http://qutebrowser.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="jpeg gstreamer"

RDEPEND="
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/pypeg2[${PYTHON_USEDEP}]
	dev-python/PyQt5[printsupport,network,webkit,widgets]
	jpeg? ( dev-qt/qtgui:5[jpeg] )
	gstreamer? ( dev-qt/qtwebkit:5[gstreamer] )
"
DEPEND="${RDEPEND}"

python_install_all() {
	dodoc COPYING README.asciidoc
	distutils-r1_python_install_all
}
