import QtQuick 2.0
import "../" as My

Rectangle {
    width: 70
    height: 150

    Row {
        anchors.centerIn: parent
        spacing: 150

        Column {
            spacing: 30

            /* Default */
            Repeater {
                model: ["gray", "red", "blue"]

                My.CheckBox {
                    id: checkBox
                    text: "默认样式" + (index + 1)

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
                            color: modelData
                            visible: checkBox.checked
                        }
                    }
                }
            }
        }

        Column {
            spacing: 30

            Repeater {
                model: ["gray", "red", "blue"]
                My.CheckBox {
                    id: checkBox1
                    text: "圆形样式" + (index + 1)
                    indicator : Rectangle {
                        implicitWidth: 20
                        implicitHeight: implicitWidth
                        radius: implicitWidth/2
                        border.color: "#e4846c"
                        y: (checkBox1.height - height)/2

                        Rectangle {
                            anchors.centerIn: parent
                            width: 10; height: width
                            radius: width/2
                            color: modelData
                            visible: checkBox1.checked
                        }
                    }
                }
            }
        }

        Column {
            spacing: 30

            My.CheckBox {
                id: checkBox2
                text: "符号样式1"
                indicator : Rectangle {
                    implicitWidth: 20
                    implicitHeight: implicitWidth
                    border.color: "lightblue"
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
                    border.color: "lightblue"
                    y: (checkBox3.height - height)/2

                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 16
                        text: checkBox3.checked ? "√" : "×"
                    }
                }
            }

            My.CheckBox {
                id: checkBox4
                text: "符号样式3"
                indicator : Rectangle {
                    implicitWidth: 20
                    implicitHeight: implicitWidth
                    border.color: "lightblue"
                    y: (checkBox4.height - height)/2

                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 16
                        text: checkBox4.checked ? "" : "-"
                    }
                }
            }
        }
    }
}
