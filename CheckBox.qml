import QtQuick 2.0

Item {
    id: root

    implicitWidth: indicatorId.width + contentItemId.item.x
    implicitHeight: indicatorId.height + contentItemId.item.y

    property string text: ""
    property bool  checked: false
    property bool pressed: false
    property bool down: false

    property Component indicator : Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        radius: 3
        border.color: root.down ? "#17a81a" : "#21be2b"

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 2
            color: root.down ? "#17a81a" : "#21be2b"
            visible: root.checked
        }
    }

    property Component contentItem : Text {
        height: root.height
        text: "text"
        color: root.down ? "#17a81a" : "#21be2b"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        x: 26 + 3
    }

    Loader {
        id: indicatorId
        sourceComponent: indicator
    }

    Loader {
        id: contentItemId
        sourceComponent: contentItem
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            down = !down
            checked = down
        }
    }
}
