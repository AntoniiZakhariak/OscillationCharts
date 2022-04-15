import QtQuick 2.15
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.15

Item{
	id: root
	property alias text: name.text
	property alias spinVal: spinbox.value
	property alias step: spinbox.stepSize
	property alias decimal: spinbox.decimals

	RowLayout{
		anchors.fill: parent
		Label{
			id: name
			Layout.fillHeight: true
			Layout.fillWidth: true
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
		}

		SpinBox {
			id: spinbox

			Layout.fillHeight: false
			Layout.fillWidth: false; Layout.preferredWidth: root.width * 0.3
			Layout.alignment: Qt.AlignVCenter
			horizontalAlignment: Qt.AlignHCenter
			maximumValue: 999
		}
	}
}
