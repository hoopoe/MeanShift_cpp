ROOT_DIR=../..
include($$ROOT_DIR/config.pri)
ROOT_DIR=$$PWD/$$ROOT_DIR

TEMPLATE = lib
TARGET   = meanshift
CONFIG  += staticlib

OBJECTS_DIR = $$ROOT_DIR/.obj/meanshift$$BUILD_CFG_NAME
TARGET  = $$join(TARGET,,,$$BUILD_CFG_SFX)          # add 'd' at the end for debug versions
DESTDIR = $$ROOT_DIR/bin


SOURCES += \
    MeanShift.cpp \

HEADERS  += \
    MeanShift.h \
