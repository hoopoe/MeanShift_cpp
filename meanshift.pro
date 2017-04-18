ROOT_DIR=../..
include($$ROOT_DIR/config.pri)
ROOT_DIR=$$PWD/$$ROOT_DIR

TEMPLATE = lib
TARGET   = meanshift
CONFIG  += staticlib

#include(sdk.pri)

include($$ROOT_DIR/siblings/meanshift/meanshift.pro)

DESTDIR = $$ROOT_DIR/bin

SOURCES += \
    MeanShift.cpp \

HEADERS  += \
    MeanShift.h \
