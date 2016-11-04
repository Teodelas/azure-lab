 Param(
  [string]$FQDN
)
 Add-WindowsFeature -Name RDS-Gateway -IncludeAllSubFeature
 Add-WindowsFeature -Name 
 Import-Module RemoteDesktopServices
 CD RDS:\GatewayServer\CAP
 new-item -Name RDGWCAP -UserGroups 'Administrators@BUILTIN' -AuthMethod 1
 CD RDS:\GatewayServer\RAP
 new-item -Name RDGWRAP -UserGroups 'Administrators@BUILTIN' -ComputerGroupType 2

 $cert= New-SelfSignedCertificate -CertStoreLocation cert:\localmachine\my -DnsName $FQDN

 Set-Item -Path RDS:\GatewayServer\SSLCertificate\Thumbprint -Value $cert.Thumbprint
 get-childitem cert:\localmachine\my | where-object { $_.Subject -eq "CN=$FQDN" } | Export-Certificate -FilePath 'c:\users\rdgw.cer'
