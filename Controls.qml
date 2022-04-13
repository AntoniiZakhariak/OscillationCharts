import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtCharts 2.3

import My.Types 1.0

RowLayout {
    id: layout
    spacing: 6

	property AppController controller: _appController
	property ChartParams params: controller.chartParams

    OldSpinbox {
        id: posSpinbox
		Layout.fillHeight: true
		Layout.fillWidth: true
		text: "Starting position"
		spinVal: params ? params.startPos : 0
		onSpinValChanged: {
			console.log("::::: pos", spinVal)
		}
    }

    OldSpinbox {
        id: freqsSpinbox
		Layout.fillHeight: true
		Layout.fillWidth: true
		text: "Natural frequency"
		spinVal: params ? params.naturalFreq : 0
    }

    OldSpinbox {
        id: deltaSpinbox
		Layout.fillHeight: true
		Layout.fillWidth: true
		text: "Delta"
		spinVal: params ? params.delta : 0
		onSpinValChanged: {
			if(!params) return
			params.delta = spinVal
		}
    }
}
