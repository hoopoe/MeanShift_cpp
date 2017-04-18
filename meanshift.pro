ROOT_DIR=../..
include($$ROOT_DIR/config.pri)
ROOT_DIR=$$PWD/$$ROOT_DIR

TEMPLATE = lib
TARGET   = meanshift
CONFIG  += staticlib

SOURCES += \
    MeanShift.cpp \

HEADERS  += \
    MeanShift.h \

DESTDIR = $$ROOT_DIR/bin