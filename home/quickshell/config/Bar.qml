import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 35
            color: Theme.bg0
            ClockWidget {
                anchors.centerIn: parent
            }
            
            RowLayout{
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            
            AudioWidget {
            
            }
            BatteryWidget {
                
            }
            } 

            Workspaces {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}