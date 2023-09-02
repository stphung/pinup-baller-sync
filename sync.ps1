function sync {
    param(
        [string] $source,
        [string] $target
    )
    xcopy $source $target /s /d /y
}

$tableSource="\\proton\data\VPX\Tables"
$tableTarget="C:\vPinball\VisualPinball\Tables\"

$romsSource="\\proton\data\VPX\roms"
$romsTarget="C:\vPinball\VisualPinball\VPinMAME\roms"

$videosSource="\\proton\data\VPX\PUPVideos"
$videosTarget="C:\vPinball\PinUPSystem\PUPVideos"

sync $tableSource $tableTarget
sync $romsSource $romsTarget
sync $videosSource $videosTarget