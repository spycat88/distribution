PKG_NAME="pygame"
PKG_VERSION="2.6.1"
PKG_LICENSE="LGPL"
PKG_SITE="https://pypi.org/project/pygame"
PKG_URL="https://files.pythonhosted.org/packages/source/${PKG_NAME:0:1}/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3:host setuptools:host requests SDL2 SDL2_image SDL2_mixer SDL2_ttf"
PKG_LONGDESC="Pygame is a free and open-source cross-platform library for the development of multimedia applications like video games using Python"
PKG_TOOLCHAIN="python"

pre_make_target() {
  export SDL_CONFIG="${SYSROOT_PREFIX}/usr/bin/sdl2-config"
  export PYGAME_EXTRA_BASE="${SYSROOT_PREFIX}/usr"
}
