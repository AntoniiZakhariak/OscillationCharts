import QtQuick 2.15
import QtCharts 2.1

import My.Types 1.0

ChartView {

	antialiasing: true

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
		name: "signal 1"
		axisX:axisX
		axisY: axisY
	}

	Timer {
		id: refreshTimer
		interval: 1 / 20 * 1000 // 60 Hz
		running: true
		repeat: true
		property real l_x: 0
		property real l_y: 0

		onTriggered: {
//			if(l_x > axisX.max){
//				lineSeries.clear()
//				l_x = 0
//			} else {
//				l_x += 0.05
//			}
//			l_y = 50 * Math.sin(12. * l_x) * Math.abs(Math.cos(1. * l_x))
//			lineSeries.append(l_x, l_y)
			dataSource.update(chartView.series(0));
		}
	}
}
