SOURCE_DIR=./src
JSRUN_DIR=../../../thirdparty/jsdoc-toolkit-2.4.0

java -jar ${JSRUN_DIR}/jsrun.jar ${JSRUN_DIR}/app/run.js -a -v -p -r=4 -t=${JSRUN_DIR}/templates/jsdoc \
"${SOURCE_DIR}"/CAAT.js \
"${SOURCE_DIR}"/core/browserdetect.js \
"${SOURCE_DIR}"/core/class.js \
"${SOURCE_DIR}"/math/affinetransform2D.js \
"${SOURCE_DIR}"/math/color.js \
"${SOURCE_DIR}"/math/rectangle.js \
"${SOURCE_DIR}"/math/bezier.js \
"${SOURCE_DIR}"/math/point.js \
"${SOURCE_DIR}"/math/quadtree.js \
"${SOURCE_DIR}"/path/interpolator.js \
"${SOURCE_DIR}"/behaviour/behaviour.js \
"${SOURCE_DIR}"/model/debug.js \
"${SOURCE_DIR}"/model/actor.js \
"${SOURCE_DIR}"/model/audio.js \
"${SOURCE_DIR}"/model/extraActor.js \
"${SOURCE_DIR}"/model/director.js \
"${SOURCE_DIR}"/model/mouseevent.js \
"${SOURCE_DIR}"/model/conpoundimage.js \
"${SOURCE_DIR}"/model/imagepreloader.js \
"${SOURCE_DIR}"/model/timer.js \
"${SOURCE_DIR}"/model/scene.js \
"${SOURCE_DIR}"/modules/modules.js \
"${SOURCE_DIR}"/modules/Layout/layout.js \
"${SOURCE_DIR}"/modules/CircleManager/PackedCircle.js \
"${SOURCE_DIR}"/modules/CircleManager/PackedCircleManager.js \
"${SOURCE_DIR}"/modules/LocalStorage/LocalStorage.js \
"${SOURCE_DIR}"/modules/ImageUtil/ImageUtil.js \
"${SOURCE_DIR}"/modules/Font/font.js \
"${SOURCE_DIR}"/path/interpolatoractor.js \
"${SOURCE_DIR}"/path/path.js \
"${SOURCE_DIR}"/path/pathactor.js \
"${SOURCE_DIR}"/texture/plasma.js \
"${SOURCE_DIR}"/webgl/ShaderUtil.js \
"${SOURCE_DIR}"/webgl/glu.js \
"${SOURCE_DIR}"/webgl/glTexturePage.js \
  -d=./documentation/jsdoc
