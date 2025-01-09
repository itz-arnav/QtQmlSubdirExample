import QtQuick
import QtQuick.Controls

import utils 1.0

Window {
    width: 640
    height: 480
    visible: true
    color: Theme.myBackground

    Text {
        anchors.centerIn: parent
        font.pointSize: 15
        text: Theme.myMessage
        color: Theme.myTextColor
    }
}
