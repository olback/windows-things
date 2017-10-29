#
#   Powershell profile by olback
#   github.com/olback/windows-things
#

# Clear the Powershell terminal
clear

# Print some info about the environment
echo "`n"
echo "  Powershell v$($PSVersionTable.PSVersion.ToString())`n"

echo "  Hostname : $env:ComputerName"
echo "  Username : $env:UserName"
echo "  Local IP : $(Test-Connection -ComputerName (hostname) -Count 1  | Select -ExpandProperty IPV4Address)"
echo "  PublicIP : $(curl https://whois.olback.net/raw.php?myip)"
echo "  Location : $pwd"
echo "  Is Admin : $(([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))`n`n"

# Set aliases
sal c clear
sal p powershell
