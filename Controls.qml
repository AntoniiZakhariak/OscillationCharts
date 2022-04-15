import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtCharts 2.3

RowLayout {
    id: layout
    spacing: 6

    OldSpinbox {
        id: posSpinbox
		step: 1
		Layout.fillHeight: true
		Layout.fillWidth: true
		text: "Starting position"
		spinVal: params ? params.startPos : 0
		onSpinValChanged: {
			if(!params) return
			params.startPos = spinVal
		}
    }

    OldSpinbox {
        id: freqsSpinbox
		step: 1
		Layout.fillHeight: true
		Layout.fillWidth: true
		text: "Natural frequency"
		spinVal: params ? params.naturalFreq : 0
		onSpinValChanged: {
			if(!params) return
			params.naturalFreq = spinVal
		}
    }

    OldSpinbox {
        id: deltaSpinbox
		text: "Delta"
		decimal: 2
		step: 0.01
		Layout.fillHeight: true
		Layout.fillWidth: true
		spinVal: params ? params.delta : 0
		onSpinValChanged: {
			if(!params) return
			params.delta = spinVal
		}
    }

//	Button {
//	id: resetX
//	text: "Reset"
//	onClicked: {
//		if(!params) return
//		params.chartValue.x = 0
//		console.log("::::: pos", params.chartValue.x)

//	}
//}

}
