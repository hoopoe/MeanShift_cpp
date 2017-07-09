exists(../../config.pri) {
  !build_pass:message(config.pri detected...)
  include(../../config.pri)
  ROOT_DIR=$$PWD/../..
  DESTDIR = $$ROOT_DIR/bin
}
else {
  !build_pass:message(config.pri NOT detected...) 
  DESTDIR = bin
}

CONFIG(debug, debug|release) {
  mac: TARGET = $$join(TARGET,,,_debug) 
  win32: TARGET = $$join(TARGET,,,d)
}

test {
  !build_pass:message(Configuring test build...)
  include(src/meanshift.pri)
  include(test/meanshiftTest.pri)
  TEMPLATE = app
  CONFIG += console
}
else {
  include(src/meanshift.pri)
  TEMPLATE = lib
  CONFIG += staticlib
}

