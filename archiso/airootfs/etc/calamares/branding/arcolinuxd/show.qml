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
            source: "calamares-arcolinuxd-intro.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }
/*
        Text {
            anchors.horizontalCenter: background1.horizontalCenter
            anchors.top: background1.bottom
            text: "Welcome to ArcoLinuxD. <br/>"+
                  "ArcoLinuxD is our distro to gradually learn how to work with Arch Linux.<br/>"+
                  "We use calamares as easy graphical installer to install a base system.<br/>"+
                  "ArcoLinuxD has no icons, themes, software or desktops."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
*/
    }

    Slide {

        Image {
            id: background2
            source: "calamares-arcolinuxd-awesome.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background3
            source: "calamares-arcolinuxd-bspwm.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background4
            source: "calamares-arcolinuxd-budgie.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background5
            source: "calamares-arcolinuxd-cinnamon.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background6
            source: "calamares-arcolinuxd-deepin.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background7
            source: "calamares-arcolinuxd-enlightenment.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
      anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background8
            source: "calamares-arcolinuxd-gnome.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background9
            source: "calamares-arcolinuxd-i3wm.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background10
            source: "calamares-arcolinuxd-lxde.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
      anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background11
            source: "calamares-arcolinuxd-lxqt.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background12
            source: "calamares-arcolinuxd-mate.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background13
            source: "calamares-arcolinuxd-openbox.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }


    Slide {

        Image {
            id: background14
            source: "calamares-arcolinuxd-plasma.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background15
            source: "calamares-arcolinuxd-xfce.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }
    Slide {

        Image {
            id: background16
            source: "calamares-arcolinuxd-xmonad.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

}
