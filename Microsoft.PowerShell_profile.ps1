# Initilization
Set-Location ~
Clear-Host

# Functions
function Get-PrettyGitLog ([string]$q = "-10") {
	git log --pretty=format:"%C(auto,yellow)%h %Cgreen%ah%Creset %an '%s'" $q
}

# Aliases
Set-Alias zip Compress-Archive
Set-Alias unzip Expand-Archive
Set-Alias gitlog Get-PrettyGitLog

# Modules
Import-Module posh-git
Import-Module PSColor
$global:PSColor = @{
	File = @{
		Default    = @{ Color = 'White' }
		Directory  = @{ Color = 'Cyan'}
		Hidden     = @{ Color = 'DarkGray'; Pattern = '^\.' } 
		Code       = @{ Color = 'Magenta'; Pattern = '\.(java|c|cpp|cs|js|css|html)$' }
		Executable = @{ Color = 'Red'; Pattern = '\.(exe|bat|cmd|py|pl|ps1|psm1|vbs|rb|reg)$' }
		Text       = @{ Color = 'Yellow'; Pattern = '\.(txt|cfg|conf|ini|csv|log|config|xml|yml|md|markdown)$' }
		Compressed = @{ Color = 'Green'; Pattern = '\.(zip|tar|gz|rar|jar|war)$' }
	}
	Service = @{
		Default = @{ Color = 'White' }
		Running = @{ Color = 'DarkGreen' }
		Stopped = @{ Color = 'DarkRed' }
	}
	Match = @{
		Default    = @{ Color = 'White' }
		Path       = @{ Color = 'Cyan'}
		LineNumber = @{ Color = 'Yellow' }
		Line       = @{ Color = 'White' }
	}
	NoMatch = @{
		Default    = @{ Color = 'White' }
		Path       = @{ Color = 'Cyan'}
		LineNumber = @{ Color = 'Yellow' }
		Line       = @{ Color = 'White' }
	}
}

# Tips
# Get-Process | Out-Host -Paging
