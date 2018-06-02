# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_PN="prince"
MY_P="${MY_PN}-${PV/_p/r}-linux"

DESCRIPTION="Converts XML/HTML to PDF"
HOMEPAGE="http://www.princexml.com/"
SRC_URI="http://www.princexml.com/download/${MY_P}.tar.gz"

LICENSE="Prince-EULA"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

S="${WORKDIR}/${MY_P}"

PATCHES=( "${FILESDIR}"/${PN}-6.0-destdir.patch )

src_install() {
	DESTDIR="${D}" ./install.sh <<<'/usr'
}
