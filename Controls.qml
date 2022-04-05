import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtCharts 2.3

RowLayout {
    id: layout
    spacing: 6

    Label {
        text: "Starting position"
    }

    OldSpinbox {
        id: posSpinbox
    }

    Label {
        text: "Natural frequency"
    }

    OldSpinbox {
        id: freqsSpinbox
    }

    Label {
        text: "Delta"
    }

    OldSpinbox {
        id: deltaSpinbox
    }
}
