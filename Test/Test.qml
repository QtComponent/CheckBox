import QtQuick 2.0
import "../" as My

Rectangle {
    width: 70
    height: 150

    Column {
        anchors.centerIn: parent
        /* Default */
        My.CheckBox { }

        My.CheckBox {
            id: checkBox1
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
