import QtQuick 2.15
import QtCharts 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

import My.Types 1.0

ChartView {
	anchors.right: parent.right
	anchors.left: parent.left
	anchors.top: propertyBox.bottom
	anchors.bottom: parent.bottom
	antialiasing: true
	legend.visible: false

	theme: ChartView.ChartThemeBlueIcy

	ValueAxis {
		id: axisY
		min: -250
		max: 250
	}
	ValueAxis {
		id: axisX
		min: 0
		max: 50
	}

	LineSeries {
		id: lineSeries
		axisX:axisX
		axisY: axisY
	}

	Timer {
		id: refreshTimer
		interval: 1 / 4 * 1000
		running: true
		repeat: true

		onTriggered: {
			lineSeries.count > 500 ? lineSeries.remove(0) : 0;
			lineSeries.append(params.chartValue.x, params.chartValue.y)

			axisX.min = lineSeries.at(0).x
			axisX.max = lineSeries.at(lineSeries.count-1).x
		}
	}
}

