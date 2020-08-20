
Write-Host "Running composite action"
$stagingPath = (Get-ChildItem "Env:INPUT_STAGING-PATH").Value
Write-Host "Staging path input: $stagingPath"
Write-Host "Env variables:"

foreach ($item in (Get-ChildItem Env:))
{
    Write-Host "$($item.Name)=$($item.Value)"
}
Write-Host "::set-output name=staging-path::$stagingPath"
