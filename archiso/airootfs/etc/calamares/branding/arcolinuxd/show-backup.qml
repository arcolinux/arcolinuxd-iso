/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 4000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {

        Image {
            id: background1
            source: "archmerged-start.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background1.horizontalCenter
            anchors.top: background1.bottom
            text: "Welcome to ArchMergeD. <br/>"+
                  "ArchMergeD is our distro to gradually learn how to work with Arch Linux.<br/>"+
                  "We use calamares as easy graphical installer to install a base system.<br/>"+
                  "ArchMergeD has no icons, themes, software or desktops."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background2
            source: "archmerged-scripts.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            text: "Follow our tutorials on archmerged.com<br/>"+
				  "and together we make an awesome desktop environment<br/>"+
                  "A selection of desktop environments to choose from ..."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background3
            source: "archmerged-xfce.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background3.horizontalCenter
            anchors.top: background3.bottom
            text: "ArchMerged with XFCE4<br/>"+
				  "XFCE4 is a complete desktop environment."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background4
            source: "archmerged-openbox.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background4.horizontalCenter
            anchors.top: background4.bottom
            text: "ArchMergeD with Openbox<br/>"+
                  "Openbox is a window manager. Made complete with Xfce or KDE."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background5
            source: "archmerged-i3.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background5.horizontalCenter
            anchors.top: background5.bottom
            text: "ArchMergeD with i3wm<br/>"+
                  "i3 is a windows tiling manager"
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background6
            source: "archmerged-gnome.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background6.horizontalCenter
            anchors.top: background6.bottom
            text: "ArchMergeD with gnome<br/>"+
				  "Gnome is a complete desktop."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background7
            source: "archmerged-bspwm.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background7.horizontalCenter
            anchors.top: background7.bottom
            text: "ArchMergeD with bspwm<br/>"+
                  "Bspwm is a tiling window manager."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background8
            source: "archmerged-budgie.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background8.horizontalCenter
            anchors.top: background8.bottom
            text: "ArchMergeD with Budgie desktop<br/>"+
                  "Budgie desktop comes from the Solus project."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background9
            source: "archmerged-mate.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background9.horizontalCenter
            anchors.top: background9.bottom
            text: "ArchMergeD with Mate desktop<br/>"+
                  "Mate desktop is also on Ubuntu Mate and Linux Mint Mate."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background10
            source: "archmerged-xmonad.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background10.horizontalCenter
            anchors.top: background10.bottom
            text: "ArchMergeD with Xmonad<br/>"+
                  "Xmonad is a tiling window manager."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background11
            source: "archmerged-awesome.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background11.horizontalCenter
            anchors.top: background11.bottom
            text: "ArchMergeD with Awesome<br/>"+
                  "Awesome is a tiling window manager based on lua."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }


    Slide {

        Image {
            id: background12
            source: "archmerged-lxqt.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background12.horizontalCenter
            anchors.top: background12.bottom
            text: "ArchMergeD with Lxqt<br/>"+
                  "Lxqt is a desktop based on QT."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background13
            source: "archmerged-cinnamon.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background13.horizontalCenter
            anchors.top: background13.bottom
            text: "ArchMergeD with Cinnamon<br/>"+
                  "Cinnamon is known from Linux Mint with Nemo as filemanager."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }
    Slide {

        Image {
            id: background14
            source: "archmerged-deepin.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background14.horizontalCenter
            anchors.top: background14.bottom
            text: "ArchMergeD with Deepin<br/>"+
                  "Deepin is created for the Deepin distribution."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background15
            source: "archmerged-plasma.png"
            width: 800; height: 300
            fillMode: Image.PreserveAspectFit
			horizontalAlignment: Image.AlignHCenter
			verticalAlignment: Image.AlignTop
        }
        Text {
            anchors.horizontalCenter: background15.horizontalCenter
            anchors.top: background15.bottom
            text: "ArchMergeD with Plasma<br/>"+
                  "Plasma is the successor of the KDE desktop environment."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }
}
