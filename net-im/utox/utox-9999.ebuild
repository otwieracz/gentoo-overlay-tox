# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils eutils fdo-mime git-r3 gnome2-utils toolchain-funcs

DESCRIPTION="Lightweight Tox client"
HOMEPAGE="http://utox.org"
EGIT_REPO_URI="git://github.com/GrayHatter/uTox.git
	https://github.com/GrayHatter/uTox.git"

LICENSE="GPL-3"
SLOT="0"
IUSE="+dbus +filter_audio"

DEPEND="
	${RDEPEND}
	dev-util/cmake
	>=sys-devel/gcc-4.9.0"

RDEPEND="net-libs/tox[av]
	media-libs/freetype
	filter_audio? ( media-libs/libfilteraudio )
	media-libs/libv4l
	media-libs/libvpx
	media-libs/openal
	x11-libs/libX11
	x11-libs/libXext
	dbus? ( sys-apps/dbus )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

CMAKE_USE_DIR="${S}"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

