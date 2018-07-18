param (
    [string]$RG,
    [string]$WebAppName
      )

$Function = Get-AzureRmWebApp -ResourceGroupName $RG -Name $WebAppName -ErrorAction SilentlyContinue

if ($Function -eq $null)
    {Write-Verbose "The function isn't exist, let's create it" -Verbose}
else
    {Write-Error -Message "The function is already exist, don't touch it!!!"}

