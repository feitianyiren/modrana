import QtQuick 2.0

Item {
    property bool valid : false
    property string modRanaVersion : "unknown"
    property bool showQuitButton : true
    property bool fullscreenOnly : false
    property bool shouldStartInFullscreen : false
    property bool needsBackButton : true
    property bool needsPageBackground : false

    function setValuesFromPython(values) {
        modRanaVersion = values.modRanaVersion
        showQuitButton = values.showQuitButton
        fullscreenOnly = values.fullscreenOnly
        shouldStartInFullscreen = values.shouldStartInFullscreen
        needsBackButton = values.needsBackButton
        needsPageBackground = values.needsPageBackground
        // done, we now have the values from Python we needed
        valid = true
    }
}