import QtQuick 2.0
import "../" as My

Rectangle {
    width: 70
    height: 150

    Column {
        anchors.centerIn: parent
        spacing: 10

        /* Default */
        Repeater {
            model: 3

            My.CheckBox {
                id: checkBox
                text: "默认样式"

                indicator : Rectangle {
                    implicitWidth: 20
                    implicitHeight: 20
                    radius: 3
                    border.color: "gray"
                    y: (checkBox.height - height)/2

                    Rectangle {
                        anchors.centerIn: parent
                        width: 10; height: 10
                        radius: 2
                        color: "gray"
                        visible: checkBox.checked
                    }
                }
            }
        }

        My.CheckBox {
            id: checkBox1
            text: "圆形样式"
            indicator : Rectangle {
                implicitWidth: 20
                implicitHeight: implicitWidth
                radius: implicitWidth/2
                border.color: "gray"
                y: (checkBox1.height - height)/2

                Rectangle {
                    anchors.centerIn: parent
                    width: 10; height: width
                    radius: width/2
                    color: "gray"
                    visible: checkBox1.checked
                }
            }
        }

        My.CheckBox {
            id: checkBox2
            text: "符号样式1"
            indicator : Rectangle {
                implicitWidth: 20
                implicitHeight: implicitWidth
                border.color: "gray"
                y: (checkBox2.height - height)/2

                Text {
                    anchors.centerIn: parent
                    font.pixelSize: 16
                    text: "√"
                    visible: checkBox2.checked
                }
            }
        }

        My.CheckBox {
            id: checkBox3
            text: "符号样式2"
            indicator : Rectangle {
                implicitWidth: 20
                implicitHeight: implicitWidth
                border.color: "gray"
                y: (checkBox3.height - height)/2

                Text {
                    anchors.centerIn: parent
                    font.pixelSize: 16
                    text: checkBox3.checked ? "√" : "×"
                }
            }
        }
    }

}
