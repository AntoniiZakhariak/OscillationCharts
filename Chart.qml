import QtQuick 2.10
import QtCharts 2.1

ChartView {
	width: win.width
	height: win.height - 50
	anchors.bottom: parent.bottom
	antialiasing: true
	legend.visible: false
	LineSeries {
		id: lineSeries
		name: "LineSeries"
		XYPoint { x: 0; y: 0 }
		XYPoint { x: 1.1; y: 2.1 }
		XYPoint { x: 1.9; y: 3.3 }
		XYPoint { x: 2.1; y: 2.1 }
		XYPoint { x: 2.9; y: 4.9 }
		XYPoint { x: 3.4; y: 3.0 }
		XYPoint { x: 4.1; y: 3.3 }
	}
}
