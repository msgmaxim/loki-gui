// Copyright (c) 2018, The Loki Project
// Copyright (c) 2018, The Monero Project
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification, are
// permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this list of
//    conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice, this list
//    of conditions and the following disclaimer in the documentation and/or other
//    materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its contributors may be
//    used to endorse or promote products derived from this software without specific
//    prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
// THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2

import "../components"
import LokiComponents.Clipboard 1.0

Rectangle {
    property alias panelHeight: mainLayout.height
    color: "transparent"

    Clipboard { id: clipboard }

    // /* main layout */
    ColumnLayout {
        id: mainLayout
        anchors.margins: (isMobile)? 17 : 20
        anchors.topMargin: 40 * scaleRatio
  
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right

        spacing: 20 * scaleRatio
        property int labelWidth: 120
        property int editWidth: 400

        MessageDialog {
            id: serviceNodeDialog
            standardButtons: StandardButton.Ok
        }

        Label {
            id: signTitleLabel
            fontSize: 24 * scaleRatio
            text: qsTr("Service Node") + translationManager.emptyString
        }

        Text {
            text: qsTr("This page allows you to create a Service Node, or to stake to an existing Service Node") + translationManager.emptyString
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            font.family: Style.fontRegular.name
            font.pixelSize: 14 * scaleRatio
            color: Style.defaultFontColor
        }

        LineEdit {
            labelText: qsTr("Service Node Key") + translationManager.emptyString
            id: getServiceNodeKey
            fontSize: 16 * scaleRatio
            placeholderText: qsTr("Paste Service Node Key") + translationManager.emptyString
            readOnly: false
            Layout.fillWidth: true
            copyButton: true
        }

        LineEdit {
            labelText: qsTr("Award Recepient's Address") + translationManager.emptyString
            id: getRewardAddress
            fontSize: 16 * scaleRatio
            placeholderText: qsTr("Paste Address") + translationManager.emptyString
            readOnly: false
            Layout.fillWidth: true
            copyButton: true
        }

        LineEdit {
            labelText: qsTr("Contribution Amount") + translationManager.emptyString
            id: getAmount
            fontSize: 16 * scaleRatio
            placeholderText: qsTr("Paste Amount") + translationManager.emptyString
            readOnly: false
            Layout.fillWidth: true
            copyButton: true
        }

        StandardButton {
              id: sendButton
              Layout.topMargin: 4 * scaleRatio
              text: qsTr("Stake") + translationManager.emptyString
              enabled : {
                  return true;
              }
              onClicked: {

              }
          }

    }

}
