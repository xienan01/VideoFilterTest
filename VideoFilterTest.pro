QT -= gui
QT += concurrent

CONFIG += c++11
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0



#INCLUDEPATH +=D:/Work/ScreenRecoder/include/ffmpeg/
#LIBS += -LD:/Work/ScreenRecoder/build_x64/lib

INCLUDEPATH +=/Users/xienan/Work/im-ui/include/ffmpeg/
LIBS += -L/Users/xienan/Work/im-ui/Dll/darwin/release/

LIBS += \
    -lswscale \
    -lavutil \
    -lavcodec \
    -lavformat \
    -lavfilter \
    -lavdevice \
    -lswresample \

SOURCES += \
        decodeunit.cpp \
        main.cpp \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
     decodeunit.h

DISTFILES += \
    Info.plist
