import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    signal debugSignal()

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }



    Debug
    {
        anchors.fill: parent
    }

    Text
    {
        x: 50
        y: 50
        id: t1
        objectName: "t1"
        text: qsTr("20")
    }



//    Text {
//        id: brojac
//        property int counter: 0
//        text: qsTr("Hello World + clicked " + counter)
//        anchors.centerIn: parent
//    }

//    Button
//    {
//        width: 200
//        height: 50



//        text: qsTr("Klikni me")
//        y: 100
//        x: 100

//        onClicked: {
//            debugSignal();
//            brojac.counter = brojac.counter + 1
//            large.text += large.adicija + '\n'
//        }
//    }

//    Text
//    {
//        property string adicija: "HAHATON"
//        id: large
//        x: 0
//        y: 150

//    }

//    Button
//    {
//        width: 200
//        height: 50

//        id: realButton

//        text: qsTr("GOTO real")
//        y: 200
//        x: 200

//        onClicked:
//        {

//        }
//    }
}
