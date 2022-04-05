QT += quick widgets charts

HEADERS += \
    chartparams.h

SOURCES += \
        chartparams.cpp \
        main.cpp

RESOURCES += qml.qrc



QML_IMPORT_PATH =

QML_DESIGNER_IMPORT_PATH =

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
