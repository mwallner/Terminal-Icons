function Set-Theme {
    [cmdletbinding()]
    param(
        [parameter(mandatory)]
        [string]$Name,

        [ValidateSet('Color', 'Icon')]
        [parameter(Mandatory)]
        [string]$Type
    )

    if (-not $themeData.Themes.$Type.ContainsKey($Name)) {
        Write-Error "$Type theme [$Name] not found."
    } else {
        $themeData."Current$($Type)Theme" = $Name
        $themeData | Export-Configuration
    }
}
