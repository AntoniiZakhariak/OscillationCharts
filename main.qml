import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtCharts 2.3

Window {
    id: win
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("OscillationCharts")

    Rectangle {
        id: propertyBox
        width: win.width
		height: 55
        anchors.top: parent.top

		Controls {
			id: controls
			anchors.top: parent.top
			anchors.centerIn: parent
		}
    }

	Chart {
	}
}
