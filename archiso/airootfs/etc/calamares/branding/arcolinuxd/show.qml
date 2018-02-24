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
            source: "calamares-archmerged-intro.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }
/*
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
*/
    }

    Slide {

        Image {
            id: background2
            source: "calamares-archmerged-awesome.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background3
            source: "calamares-archmerged-bspwm.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background4
            source: "calamares-archmerged-budgie.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background5
            source: "calamares-archmerged-cinnamon.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background6
            source: "calamares-archmerged-deepin.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background7
            source: "calamares-archmerged-gnome.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background8
            source: "calamares-archmerged-i3wm.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background9
            source: "calamares-archmerged-lxqt.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background10
            source: "calamares-archmerged-mate.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background11
            source: "calamares-archmerged-openbox.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }


    Slide {

        Image {
            id: background12
            source: "calamares-archmerged-plasma.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

    Slide {

        Image {
            id: background13
            source: "calamares-archmerged-xfce.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }
    Slide {

        Image {
            id: background14
            source: "calamares-archmerged-xmonad.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			anchors.centerIn: parents
        }

    }

}
