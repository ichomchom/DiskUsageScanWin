Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageIcon = [System.Windows.MessageBoxImage]::Warning
$MessageTitle = "Warning"



$temp = $env:UserName
$usage = (Get-ChildItem -R C:\Users\$temp | measure-object -property length -sum |  Foreach-Object {([Math]::Round($_.Sum/1GB,2))})



If ($usage -lt 2){
}
elseif( $usage -lt 5){
	$Result = [System.Windows.MessageBox]::Show("Your current storage usage size exceeds 2 GBs. Clean up your data for a faster boot time.",$MessageTitle,'OkCancel',$MessageIcon)
	switch ($Result){
		'Ok' {
		$Result = [System.Windows.MessageBox]::Show("Would you like to open Windows Directory Statistics to clean up your data?",$MessageTitle,'YesNo',$MessageIcon)
		switch($Result){
			'Yes'{
			Start-Process -FilePath "C:\Program Files (x86)\WinDirStat\windirstat.exe" C:\Users\$temp
			}
		}
		}
	
	}
	}
elseif($usage -ge 5 ) {
	$Result = [System.Windows.MessageBox]::Show("Your current storage usage size exceeds 5 GBs. Please clean up your data.",$MessageTitle,$ButtonType,$MessageIcon)
	Start-Process -FilePath "C:\Program Files (x86)\WinDirStat\windirstat.exe" C:\Users\$temp
	}


