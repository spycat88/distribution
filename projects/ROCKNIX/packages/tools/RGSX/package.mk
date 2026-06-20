PKG_NAME="RGSX"
PKG_VERSION="v2.6.4.3"
PKG_LICENSE=""
PKG_SITE="https://github.com/RetroGameSets/RGSX"
PKG_URL="https://github.com/RetroGameSets/RGSX/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3:host setuptools:host pygame"
PKG_LONGDESC=""
PKG_TOOLCHAIN="manual"

make_target() {
  :
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/config/modules
    cp -a ${PKG_DIR}/scripts/RGSX.sh ${INSTALL}/usr/config/modules

  mkdir -p ${INSTALL}/usr/local/share
    cp -a ${PKG_BUILD}/ports/RGSX ${INSTALL}/usr/local/share
    cp -a ${PKG_BUILD}/ports/images/RGSX.png ${INSTALL}/usr/local/share/RGSX
}
