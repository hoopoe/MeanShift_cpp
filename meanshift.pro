exists(../../config.pri) {
  message(config.pri detected...)
  include(../../config.pri)
  ROOT_DIR=$$PWD/../..
  DESTDIR = $$ROOT_DIR/bin
}
else {
  message(config.pri NOT detected...) 
  DESTDIR = bin
}

HEADERS  += \
  src/MeanShift.h \

SOURCES += \
  src/MeanShift.cpp \

CONFIG(debug, debug|release) {
  mac: TARGET = $$join(TARGET,,,_debug) 
  win32: TARGET = $$join(TARGET,,,d)
}

test {
  message(Configuring test build...)
}
else {
  TEMPLATE = lib
  #TARGET = meanshift
  CONFIG += staticlib
}

