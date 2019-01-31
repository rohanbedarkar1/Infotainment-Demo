import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.3
import QtQuick 2.4
import QtMultimedia 5.4
Rectangle{
    id:rootRect
    height: rootId.height
    width: rootId.width
    Image {
        anchors.fill: parent
        id: bgImg
        source: "file:bg.jpg"
    }
    Rectangle{
        id: rect1
        width: rootId.width
        height: rootId.height*0.25
        anchors.top: rootId.top
        color: "transparent"
        Row{
            id: rowId1
            Rectangle{
                id: rect3
                height: rect1.height
                width: rect1.width*0.15
                color: "transparent"

                Image{
                    id:img1
                    width: rect3.width*0.95
                    height: rect3.height*0.95
                    source: "file:profile.png"
                }

            }
            Rectangle{
                id: rect4
                objectName: "homeBtn"
                height: rect1.height
                width: rect1.width*0.15
                color: "transparent"
                Image{
                    id:img2
                    width: rect4.width*0.95
                    height: rect4.height*0.95
                    source: "file:home.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            rect9.focus = true
                            rect9.z = 1
                        }
                    }
                }
            }
            Rectangle{
                id: rect5
                height: rect1.height
                width: rect1.width*0.30
                color: "transparent"
                Item {
                    id: clockItemId
                    width: rect5.width
                    height: rect5.height
                    Text{
                        id:timerTextId
                        anchors.centerIn: parent
                        font.family: "Arial"
                        font.bold: true
                        font.pixelSize: (clockItemId.width+clockItemId.height)*0.11
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text{
                        id:dateTextId
                        anchors.top: timerTextId.bottom
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.italic: true
                        font.bold: true
                        font.pixelSize: (clockItemId.width+clockItemId.height)*0.05
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Timer{
                        interval: 500
                        running: true
                        repeat: true
                        onTriggered: {
                            var date= new Date();
                            timerTextId.text= date.toLocaleTimeString(Qt.locale("en-in"),"hh:mm AP");
                            dateTextId.text= date.toLocaleDateString(Qt.locale("en-in"));
                        }
                    }

                }
            }
            Rectangle{
                id: rect6
                height: rect1.height
                width: rect1.width*0.25
                color: "transparent"
                Image{
                    id:img4
                    width: rect6.width*0.95
                    height: rect6.height*0.95
                    source: "file:profile.png"
                }
            }
            Rectangle{
                id: rect7
                height: rect1.height
                width: rect1.width*0.15
                color: "transparent"
                Image{
                    id:img5
                    width: rect7.width*0.95
                    height: rect7.height*0.95
                    source: "file:back.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {rect9.focus = true}
                    }
                }
            }
        }
    }
    Rectangle{
        id: rect2
        width: rootId.width
        height: rootId.height*0.75
        anchors.top: rect1.bottom
        color: "transparent"

        Row{
            id: rowId2
            Rectangle{
                id: rect8
                color: "transparent"
                width: rootId.width*0.15
                height: rect2.height

                //Column{
                    Item{
                        id: itemId1
                        height: rect8.height*0.8
                        width: rect8.width
                        Slider {
                            id: volumeControl
                            value: 0.2
                            orientation: Qt.Vertical
                            anchors.centerIn: itemId1
                            style: SliderStyle {
                                groove: Rectangle {
                                    implicitWidth: rect8.height*0.60
                                    implicitHeight: rect8.width*0.10
                                    color: "grey"
                                    radius: 10
                                }
                                handle: Rectangle {
                                    color: control.pressed ? "white" : "lightgrey"
                                    border.color: "black"
                                    border.width: 2
                                    implicitWidth: 34
                                    implicitHeight: 34
                                    radius: 13
                                }
                            }
                        }

                    Image{
                        id: img14
                        height: itemId1.height*0.25
                        width: itemId1.width*0.8
                        anchors.top:volumeControl.bottom
                        anchors.topMargin: 8
                        anchors.horizontalCenter: volumeControl.horizontalCenter
                        source:"file:unmute.png"
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                img14.source == "file:unmute.png" ? img14.source = "file:mute.png" : img14.source = "file:unmute.png"
                            }
                        }
                    }
                    }
                //}
            }

            Rectangle{
                id: rect9
                color: "transparent"
                width: rootId.width*0.85
                height: rect2.height
                Flickable{
                    id: flickableId
                    height: rect9.height
                    width: rect9.width
                    contentHeight: 1250
                    //contentWidth: 1250
                    clip: true
                    Column{
                        spacing: 10
                        Rectangle{
                            id: rect10
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img6
                                    width: rect10.width*0.2
                                    height: rect10.height*0.9
                                    source: "file:music.png"
                                }
                                Text{
                                    text: "Music"; style: Text.Outline; styleColor: "white"
                                    anchors.left: img6.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img6.verticalCenter
                                    font.pixelSize: (rect10.height+rect10.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }
                        Rectangle{
                            id: rect11
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img7
                                    width: rect11.width*0.2
                                    height: rect11.height*0.9
                                    source: "file:call1.png"
                                }
                                Text{
                                    anchors.left: img7.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img7.verticalCenter
                                    text: "Call"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect11.height+rect11.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }

                            }
                        }
                        Rectangle{
                            id: rect12
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color: "transparent"

                            MouseArea{
                                anchors.fill: parent
                                onClicked: {
                                    if(Camera.availability === true)
                                       { Camera.start();}
                                    else
                                        print("no camera");
                            }
                            }
                            Item{
                                Image {
                                    id: img8
                                    width: rect12.width*0.2
                                    height: rect12.height*0.9
                                    source: "file:camera.png"
                                }

                                Text{
                                    anchors.left: img8.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img8.verticalCenter
                                    text: "Camera"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect12.height+rect12.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }

                            }
                        }
                        Rectangle{
                            id: rect13
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img9
                                    width: rect13.width*0.2
                                    height: rect13.height*0.9
                                    source: "file:message.png"
                                }
                                Text{
                                    anchors.left: img9.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img9.verticalCenter
                                    text: "SMS"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect13.height+rect13.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }
                        Rectangle{
                            id: rect14
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img10
                                    width: rect14.width*0.2
                                    height: rect14.height*0.9
                                    source: "file:nav.png"
                                }
                                Text{
                                    anchors.left: img10.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img10.verticalCenter
                                    text: "Navigation"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect14.height+rect14.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }
                        Rectangle{
                            id: rect15
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img11
                                    width: rect15.width*0.2
                                    height: rect15.height*0.9
                                    source: "file:addnew.png"
                                }
                                Text{
                                    anchors.left: img11.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img11.verticalCenter
                                    text: "Add New"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect15.height+rect15.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }
                        Rectangle{
                            id: rect16
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img12
                                    width: rect16.width*0.2
                                    height: rect16.height*0.9
                                    source: "file:addnew.png"
                                }
                                Text{
                                    anchors.left: img12.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img12.verticalCenter
                                    text: "Add New"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect16.height+rect16.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }
                        Rectangle{
                            id: rect17
                            height: rect9.height*0.33
                            width: rect9.width*0.9
                            radius: 15
                            color:"transparent"
                            Item{
                                Image {
                                    id: img13
                                    width: rect17.width*0.2
                                    height: rect17.height*0.9
                                    source: "file:addnew.png"
                                }
                                Text{
                                    anchors.left: img13.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: img13.verticalCenter
                                    text: "Add New"; style: Text.Outline; styleColor: "white"
                                    font.pixelSize: (rect17.height+rect17.width)*0.09
                                    font.italic: true
                                    color: "black"
                                }
                            }
                        }

                    }
                }
            }
        }
    }

}
