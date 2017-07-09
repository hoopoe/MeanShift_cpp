HEADERS  += \
  src/MeanShift.h \

SOURCES += \
  src/MeanShift.cpp \


#DEPENDPATH  += $$PWD
#INCLUDEPATH += $$PWD
#win32-msvc* {
  #LIBS += -L$$ROOT_DIR/bin -l$$ROOT_DIR/bin/meanshift $$LIBS
#}else {
  #LIBS += -L$$ROOT_DIR/bin -lmeanshift
#}