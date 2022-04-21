import QtQuick 2.15
import QtCharts 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

import My.Types 1.0

ChartView {

	antialiasing: true
	legend.visible: false

	property double deltaValue: params.delta
	property int naturalFreqValue: params.naturalFreq
	property int startPosValue: params.startPos
	onDeltaValueChanged: reset()
	onNaturalFreqValueChanged: reset()
	onStartPosValueChanged: reset()

	function reset(){
		lineSeries.clear()
		params.chartValue.x = 0
	}

	property point lastChartPoint: _appController.chartParams.chartValue
	onLastChartPointChanged: {
		lineSeries.count > 500 ? lineSeries.remove(0) : 0;
		lineSeries.append(lastChartPoint.x, lastChartPoint.y)

		axisX.min = lineSeries.at(0).x
		axisX.max = lineSeries.at(lineSeries.count-1).x

//		axisY.min = lineSeries.at(0).y
//		axisY.max = lineSeries.at(lineSeries.count-1).y
	}

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
}

