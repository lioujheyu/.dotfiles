# $PSStyle.FileInfo.Directory = "`e[34m"

Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

# For command path, if variable is used, '&' is needed

# Refer to automatic_variable in Powershell for proper arguments pipe
function ls_git { $input | & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
function ll { $input | & 'C:\Program Files\Git\usr\bin\ls' --color=auto -l -hF $args }
Set-Alias -Name ls -Value ls_git -Option Private
Set-Alias -Name l -Value ls

function grep_git { 
  if ($MyInvocation.ExpectingInput) {
    $input | & 'C:\Program Files\Git\usr\bin\grep' --color $args
  } else {
    & 'C:\Program Files\Git\usr\bin\grep' --color $args 
  }
}
Set-Alias -Name grep -Value grep_git -Option Private

Set-Alias -Name whereis -Value gcm
Set-Alias -Name cat -Value 'C:\Program Files\Git\usr\bin\cat.exe'
Set-Alias -Name find -Value 'C:\Program Files\Git\usr\bin\find.exe'
Set-Alias -Name tail -Value 'C:\Program Files\Git\usr\bin\tail.exe'
Set-Alias -Name head -Value 'C:\Program Files\Git\usr\bin\head.exe'
Set-Alias -Name vim -Value 'C:\Program Files\Git\usr\bin\vim.exe'
Set-Alias -Name vimdiff -Value 'C:\Program Files\Git\usr\bin\vimdiff.exe'
Set-Alias -Name less -Value 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name ln -Value 'C:\Program Files\Git\usr\bin\ln.exe'
