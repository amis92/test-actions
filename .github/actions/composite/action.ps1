
Write-Host "Running composite action"
$stagingPath = (Get-ChildItem "Env:INPUT_STAGING-PATH").Value
Write-Host "Staging path input: $stagingPath"
Write-Host "::set-output name=staging-path::$stagingPath"
