import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtCharts 2.3

import My.Types 1.0

Window {

	property AppController controller: _appController
	property ChartParams params: controller.chartParams


	id: win
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("OscillationCharts")

    Rectangle {
        id: propertyBox
		height: 40
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.top: parent.top
		anchors.rightMargin: 10

		Controls {
			id: controls
			anchors.fill: parent

		}
	}

	Chart {
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.top: propertyBox.bottom
		anchors.bottom: parent.bottom
	}
}
