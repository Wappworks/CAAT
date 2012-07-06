#
# execute version procedure. 
# version.nfo contains new version value.
#
./version.sh
VERSION=`cat version.nfo`
echo "New generated version: ${VERSION}"


DST_FILE_NAME="${CAAT_DST}";

VERSION=`cat version.nfo`

FILE_CAAT="${DST_FILE_NAME}.js"
FILE_CAAT_CSS="${DST_FILE_NAME}-css.js"
FILE_CAAT_BOX2D="${DST_FILE_NAME}-box2d.js"

echo "Packing ${FILE_CAAT}"
echo -e "/*" > "${FILE_CAAT}"
cat LICENSE >> "${FILE_CAAT}"
echo -e "\nVersion: ${VERSION}\n" >> "${FILE_CAAT}"
echo -e "Created on:" >> "${FILE_CAAT}"
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> "${FILE_CAAT}"
echo -e "*/\n\n" >> "${FILE_CAAT}"

cat ./src/CAAT.js >> "${FILE_CAAT}"
cat ./src/core/class.js >> "${FILE_CAAT}"
cat ./src/math/affinetransform2D.js >> "${FILE_CAAT}"
cat ./src/math/color.js >> "${FILE_CAAT}"
cat ./src/math/rectangle.js >> "${FILE_CAAT}"
cat ./src/math/bezier.js >> "${FILE_CAAT}"
cat ./src/math/point.js >> "${FILE_CAAT}"
cat ./src/math/quadtree.js >> "${FILE_CAAT}"
cat ./src/path/interpolator.js >> "${FILE_CAAT}"
cat ./src/behaviour/behaviour.js >> "${FILE_CAAT}"
cat ./src/behaviour/csskeyframehelper.js >> "${FILE_CAAT}"
cat ./src/core/browserdetect.js >> "${FILE_CAAT}"
cat ./src/model/debug.js >> "${FILE_CAAT}"
cat ./src/model/actor.js >> "${FILE_CAAT}"
cat ./src/model/audio.js >> "${FILE_CAAT}"
cat ./src/model/extraActor.js >> "${FILE_CAAT}"
cat ./src/model/director.js >> "${FILE_CAAT}"
cat ./src/model/mouseevent.js >> "${FILE_CAAT}"
cat ./src/model/conpoundimage.js >> "${FILE_CAAT}"
cat ./src/model/imagepreloader.js >> "${FILE_CAAT}"
cat ./src/model/timer.js >> "${FILE_CAAT}"
cat ./src/model/scene.js >> "${FILE_CAAT}"
cat ./src/modules/modules.js >> "${FILE_CAAT}"
cat ./src/modules/CircleManager/PackedCircle.js >> "${FILE_CAAT}"
cat ./src/modules/CircleManager/PackedCircleManager.js >> "${FILE_CAAT}"
cat ./src/modules/LocalStorage/LocalStorage.js >> "${FILE_CAAT}"
cat ./src/modules/ImageUtil/ImageUtil.js >> "${FILE_CAAT}"
cat ./src/modules/Layout/layout.js >> "${FILE_CAAT}"
cat ./src/modules/Font/font.js >> "${FILE_CAAT}"
cat ./src/modules/Inspector/inspector.js >> "${FILE_CAAT}"
cat ./src/path/interpolatoractor.js >> "${FILE_CAAT}"
cat ./src/path/path.js >> "${FILE_CAAT}"
cat ./src/path/pathactor.js >> "${FILE_CAAT}"
cat ./src/texture/plasma.js >> "${FILE_CAAT}"
cat ./src/webgl/ShaderUtil.js >> "${FILE_CAAT}"
cat ./src/webgl/glu.js >> "${FILE_CAAT}"
cat ./src/webgl/glTexturePage.js >> "${FILE_CAAT}"


# Distribute resulting compiled files
#
echo -e "\nCopying:"
while read LINE; do
  echo -e "\tCopying results to ${LINE}"
  cp ${FILE_CAAT} ${LINE} 
done < version.distribution


#
# CSS
#
echo "Packing ${FILE_CAAT_CSS}"
echo -e "/*" > "${FILE_CAAT_CSS}"
cat LICENSE >> "${FILE_CAAT_CSS}"
echo -e "\nVersion: ${VERSION}\n" >> "${FILE_CAAT_CSS}"
echo -e "Created on:" >> "${FILE_CAAT_CSS}"
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> "${FILE_CAAT_CSS}"
echo -e "*/\n\n" >> "${FILE_CAAT_CSS}"

cat ./src/CAAT.js >> "${FILE_CAAT_CSS}"
echo -e "CAAT.__CSS__=1;" >> "${FILE_CAAT_CSS}"
cat ./src/core/class.js >> "${FILE_CAAT_CSS}"
cat ./src/math/affinetransform2D.js >> "${FILE_CAAT_CSS}"
cat ./src/math/color.js >> "${FILE_CAAT_CSS}"
cat ./src/math/rectangle.js >> "${FILE_CAAT_CSS}"
cat ./src/math/bezier.js >> "${FILE_CAAT_CSS}"
cat ./src/math/point.js >> "${FILE_CAAT_CSS}"
cat ./src/math/quadtree.js >> "${FILE_CAAT_CSS}"
cat ./src/path/interpolator.js >> "${FILE_CAAT_CSS}"
cat ./src/behaviour/behaviour.js >> "${FILE_CAAT_CSS}"
cat ./src/behaviour/csskeyframehelper.js >> "${FILE_CAAT_CSS}"
cat ./src/core/browserdetect.js >> "${FILE_CAAT_CSS}"
cat ./src/model/debug.js >> "${FILE_CAAT_CSS}"
cat ./src/model/actorCSS.js >> "${FILE_CAAT_CSS}"
cat ./src/model/audio.js >> "${FILE_CAAT_CSS}"
cat ./src/model/extraActor.js >> "${FILE_CAAT_CSS}"
cat ./src/model/director.js >> "${FILE_CAAT_CSS}"
cat ./src/model/mouseevent.js >> "${FILE_CAAT_CSS}"
cat ./src/model/conpoundimage.js >> "${FILE_CAAT_CSS}"
cat ./src/model/imagepreloader.js >> "${FILE_CAAT_CSS}"
cat ./src/model/timer.js >> "${FILE_CAAT_CSS}"
cat ./src/model/sceneCSS.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/modules.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/CircleManager/PackedCircle.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/CircleManager/PackedCircleManager.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/LocalStorage/LocalStorage.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/ImageUtil/ImageUtil.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/Layout/layout.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/Font/font.js >> "${FILE_CAAT_CSS}"
cat ./src/modules/Inspector/inspector.js >> "${FILE_CAAT_CSS}"
cat ./src/path/interpolatoractor.js >> "${FILE_CAAT_CSS}"
cat ./src/path/path.js >> "${FILE_CAAT_CSS}"
cat ./src/path/pathactor.js >> "${FILE_CAAT_CSS}"


#
# Distribute resulting compiled files
#
echo -e "\nCopying:"
while read LINE; do
  echo -e "\tCopying results to ${LINE}"
  cp ${FILE_CAAT_CSS} ${LINE} 
done < version.distribution

# box2d

echo "Packing ${FILE_CAAT_BOX2D}"
echo -e "/*" > "${FILE_CAAT_BOX2D}"
cat LICENSE >> "${FILE_CAAT_BOX2D}"
echo -e "\nVersion: ${VERSION}\n" >> "${FILE_CAAT_BOX2D}"
echo -e "Created on:" >> "${FILE_CAAT_BOX2D}"
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> "${FILE_CAAT_BOX2D}"
echo -e "*/\n\n" >> "${FILE_CAAT_BOX2D}"

cat ./src/box2d/box2Dactor.js >> "${FILE_CAAT_BOX2D}"

#
# Distribute resulting compiled files
#
echo -e "\nCopying:"
while read LINE; do
  echo -e "\tCopying results to ${LINE}"
  cp ${FILE_CAAT_BOX2D} ${LINE} 
done < version.distribution
