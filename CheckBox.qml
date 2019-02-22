import QtQuick 2.0

Item {
    id: root

    implicitWidth: backgroundId.item.width
    implicitHeight: backgroundId.item.height

    property string text: ""
    property bool  checked: false
    property bool pressed: false
    property bool down: false

    property Component indicator : Rectangle {
        implicitWidth: 20
        implicitHeight: 20
        radius: 3
        border.color: "gray"
        y: (root.height - height)/2

        Rectangle {
            anchors.centerIn: parent
            width: 10; height: 10
            radius: 2
            color: "gray"
            visible: root.checked
        }
    }

    property Component contentItem : Text {
        height: root.height
        text: "text"
        color: root.down ? "black" : "black"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        x: 25
    }

    property Component background : Rectangle {
        width: 60; height: 20
        color: "#00000000"
    }

    Loader {
        id: backgroundId
        sourceComponent: background
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
