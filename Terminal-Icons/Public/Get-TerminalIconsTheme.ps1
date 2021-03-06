function Get-TerminalIconsTheme {
    [cmdletbinding()]
    param(
        [switch]$ListAvailable
    )

    [pscustomobject]@{
        PSTypeName = 'TerminalIconsTheme'
        Color      = [pscustomobject]$themeData.Themes.Color[$themeData.CurrentColorTheme]
        Icon       = [pscustomobject]$themeData.Themes.Icon[$themeData.CurrentIconTheme]
    }

    # if ($ListAvailable.IsPresent) {
    #     foreach ($colorTheme in $themeData.Themes.Color.GetEnumerator()) {
    #         [pscustomobject]@{
    #             PSTypeName = 'TerminalIconsColorTheme'
    #             Name   = $colorTheme.Name
    #             Colors = $colorTheme.Value
    #         }
    #     }
    #     foreach ($iconTheme in $themeData.Themes.Icon.GetEnumerator()) {
    #         [pscustomobject]@{
    #             PSTypeName = 'TerminalIconsIconTheme'
    #             Name  = $iconTheme.Name
    #             Icons = $iconTheme.Value
    #         }
    #     }
    # } else {
    #     [pscustomobject]@{
    #         PSTypeName = 'TerminalIconsTheme'
    #         Color      = [pscustomobject]$themeData.Themes.Color[$themeData.CurrentColorTheme]
    #         Icon       = [pscustomobject]$themeData.Themes.Icon[$themeData.CurrentIconTheme]
    #     }
    # }
}
