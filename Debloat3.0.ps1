##########################################
################ Form ####################
##########################################

if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
   Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Unrestricted -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}
Set-ExecutionPolicy Unrestricted -Scope Process

$inputXML = @"
<Window x:Class="DebloatWindowsItalia.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:DebloatWindowsItalia"
        mc:Ignorable="d"
        Title="Windows Italia Debloat" Height="763" Width="1470" Background="#FF1A2733">
    <Viewbox>
        <Grid HorizontalAlignment="Center" Width="830" Background="#FF1A2733" Height="402">
            <TextBlock TextWrapping="Wrap" Text="SOFTWARE" Foreground="#FF777777" Margin="31,44,0,339" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content="Windows Italia" HorizontalAlignment="Left" VerticalAlignment="Top"  Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="120" Name="Tab1A" Margin="10,3,0,0" Background="#FF1A2733" FontSize="16"/>
            <Button Content="Winget" HorizontalAlignment="Left" VerticalAlignment="Top"  Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Name="Tab2A" Margin="30,65,0,0" Background="#FF1A2733"/>
            <Button Content="     Bloatware" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,85,0,0" Name="Tab3A" Background="#FF1A2733"/>
            <Button Content="        Windows 11" HorizontalAlignment="Left" VerticalAlignment="Top"  Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Name="Tab13A" Margin="30,131,0,0" Background="#FF1A2733"/>
            <Button Content="Privacy" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,151,0,0" Name="Tab4A" Background="#FF1A2733"/>
            <Image Height="18" Width="18" Name="Powershell" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Powershell.png" Margin="32,56,780,308"/>
            <Image Height="18" Width="18" Name="Bloatware" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Bloatware.png" Margin="31,75,781,289"/>
            <TextBlock TextWrapping="Wrap" Text="TWEAKS" Foreground="#FF777777" Margin="30,111,0,273" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content="Utility  " HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,171,0,0" Name="Tab5A"/>
            <Button Content="   Defender" HorizontalAlignment="Left" VerticalAlignment="Center" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,0,0,0" Name="Tab6A"/>
            <Button Content="Update" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,211,0,0" Name="Tab7A"/>
            <Button Content="       Application" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,231,0,0" Name="Tab8A"/>
            <Button Content="System" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,251,0,0" Name="Tab9A"/>
            <Button Content="  Explorer" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,271,0,0" Name="Tab10A"/>
            <Button Content=" Taskbar" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,291,0,0" x:Name="Tab11A"/>
            <TextBlock TextWrapping="Wrap" Text="SETTINGS" Foreground="#FF777777" Margin="31,338,0,15" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content="   Repair PC" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,359,0,0" Name="Tab12A"/>
            <TextBlock HorizontalAlignment="Left" Margin="48,391,0,0" TextWrapping="NoWrap" Text="v 3.3.0 by @Paki94x" VerticalAlignment="Top" Foreground="#FF6A6A6A" Height="18" Width="70" FontStyle="Normal" FontWeight="Light" FontStretch="Expanded" TextTrimming="CharacterEllipsis" FontSize="8"/>
            <TextBlock HorizontalAlignment="Left" Margin="28,22,0,0" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="7" Foreground="#FF777777"><Run FontStyle="Italic" Text="Follow us on Telegram @windowsitaly"/></TextBlock>
            <Image Height="18" Width="18" Name="Privacy1" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/win11.png" Margin="32,132,780,252"/>
            <Image Height="18" Width="18" Name="Privacy" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Privacy.png" Margin="32,152,780,232"/>
            <Image Height="18" Width="18" Name="Utility" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Utility.png" Margin="32,172,780,212"/>
            <Image Height="20" Width="20" Name="Defender" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Defender.png" Margin="31,191,779,191"/>
            <Image Height="18" Width="18" Name="Update" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Update.png" Margin="32,213,780,171"/>
            <Image Height="18" Width="18" Name="Application" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Application.PNG" Margin="32,233,780,151"/>
            <Image Height="18" Width="18" Name="System" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/System.png" Margin="32,253,780,131"/>
            <Image Height="18" Width="18" Name="Explorer" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Explorer.png" Margin="32,273,780,111"/>
            <Image Height="18" Width="18" Name="Taskbar" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Taskbar.png" Margin="32,292,780,92"/>
            <Image Height="18" Width="18" Name="RepairPC" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Repair%20PC.PNG" Margin="32,350,780,14"/>

            <TabControl Margin="160,0,10,0" Grid.Column="1" Padding="-0.5" Name="TabNav" SelectedIndex="0" Background="#FF1F272E">

                <TabItem Header="EzMode" Visibility="Collapsed" Name="Tab1">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="470"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="0,10,0,0" Grid.Column="0">
                        <Image Height="500" Width="500" Name="Logo" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Logo%20Debloat.png" Margin="-50,-70,0,0"/>

                        </StackPanel>
                        <StackPanel Margin="-100,15,0,0" Grid.Column="1">
                            <Button Content="Windows 10 Presets" Width="200" Height="50" Margin="0,70,0,0" Foreground="White" BorderBrush="#FF777777" FontSize="18" FontWeight="Bold" Name="Tab1P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                            </Button>
                            <Button Content="Windows 11 Presets" Width="200" Height="50" Margin="0,40,0,0" Foreground="White" BorderBrush="#FF777777" FontSize="18" FontWeight="Bold" Name="Tab1P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                            </Button>
                                <Button Content="More Tweaks" Width="200" Height="50" Margin="0,40,0,0" Foreground="White" BorderBrush="#FF777777" FontSize="18" FontWeight="Bold" Name="Tab1P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                            </Button>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Winget" Visibility="Collapsed" Name="Tab2">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="110"/>
                            <ColumnDefinition Width="110"/>
                            <ColumnDefinition Width="110"/>
                            <ColumnDefinition Width="110"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Grid.Column="0">
                            <Label Content="Archiving" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="install7zip" Content="7-Zip" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installpeazip" Content="PeaZip" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="Browser" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installfirefox" Content="Firefox" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installedge" Content="Edge" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installbrave" Content="Brave Browser" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installchromium" Content="Chromium" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installchrome" Content="Chrome" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installopera" Content="Opera" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installlibrewolf" Content="LibreWolf" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installwaterfox" Content="Waterfox" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installtor" Content="Tor Browser" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="Image Viewer" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installirfanview" Content="IrfanView" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installnomacs" Content="Nomacs" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installimageglass" Content="ImageGlass" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installphotoviewer" Content="Photo Viewer" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="Video Player" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installklite" Content="K-Lite" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installvlc" Content="VLC" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installmpv" Content="MPV" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installkodi" Content="Kodi" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>

                        <StackPanel Grid.Column="1">
                            <Label Content="Music Player" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installfoobar2000" Content="Foobar2000" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installmusicbee" Content="MusicBee" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installcider" Content="Cider" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installspotify" Content="Spotify" Margin="5,0,0,0" Foreground="White"/>
                            
                            <Label Content="Editor Text" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installvscode" Content="VS Code" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installvscodium" Content="VS Codium" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installstudiocode" Content="Visual Studio" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installnotepadplusplus" Content="Notepad++" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installobsidian" Content="Obsidian" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installjoplin" Content="Joplin" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installlibreoffice" Content="LibreOffice" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installonlyoffice" Content="OnlyOffice" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="PDF Tools" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installcalibre" Content="Calibre" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installadobereader" Content="Adobe Reader" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installfoxit" Content="Foxit Reader" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installpdf24" Content="PDF24" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installsumatrapdf" Content="Sumatra PDF" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="Gaming" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installsteam" Content="Steam" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installretroarch" Content="Retroarch" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>

                        <StackPanel Grid.Column="2">
                            <Label Content="Editor I/A/V" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installaudacity" Content="Audacity" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installgimp" Content="Gimp" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installmkvtoolnix" Content="MKVToolnix" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installhandbrake" Content="Handbrake" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installkdenlive" Content="KDEnlive" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installobsstudio" Content="OBS Studio" Margin="5,0,0,0" Foreground="White"/>
                            
                            <Label Content="Security" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installbitwarden" Content="Bitwarden" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installbitdefender" Content="Bitdefender" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installmalwarebytes" Content="MalwareBytes" Margin="5,0,0,0" Foreground="White"/>

                            <Label Content="Communication" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installthunderbird" Content="Thunderbird" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installtelegram" Content="Telegram" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installwhatsapp" Content="Whatsapp" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installdiscord" Content="Discord" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installrustdesk" Content="Rustdesk" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installkdeconnect" Content="KDE Connect" Margin="5,0,0,0" Foreground="White"/>
                                                        
                            <Label Content="Client Download" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="installqbit" Content="Qbittorrent" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installidm" Content="IDM" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installxdm" Content="XDM" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="installhex" Content="HexChat" Margin="5,0,0,0" Foreground="White"/>

                        </StackPanel>

                        <StackPanel Grid.Column="3">                        

                            <Label Content="Manteinance" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="r1" Content="CPU-Z" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r2" Content="GPU-Z" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r3" Content="CrystalDiskInfo" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r4" Content="CrystalDiskMark" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r5" Content="HWinfo" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="installautohotkey" Content="AutoHotKey" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="r7" Content="Sysinternal" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r8" Content="ProcessExplorer" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r10" Content="Core Temp" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r11" Content="Speccy" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r12" Content="SUMo" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r13" Content="OCCT" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r14" Content="AIDA64" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r15" Content="Throttle Stop" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r16" Content="Autoruns" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r17" Content="Wireshark" Margin="5,0,0,0" Foreground="White" Background="White"/>                            
                            <CheckBox Name="r18" Content="BleachBit" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r21" Content="RevoUninstaller" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="installeverything" Content="Everything" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="r23" Content=".Net" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r24" Content="VC++" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r9" Content="Defender Count" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="r19" Content="Glary Utilities" Margin="5,0,0,0" Foreground="White" Background="White"/>
                            <CheckBox Name="installputty" Content="Putty" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>

                        <StackPanel Grid.Column="4">

                        <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Fix Broken Winget" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Click here if winget doesn't install the program that you choose" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Update ALL" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Update all programs installed on your pc (and present on winget database)" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Uninstall Selected" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Uninstall only selected program" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Install Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                        </StackPanel>
                    </Grid>

                </TabItem>
                <TabItem Header="Bloatware" Visibility="Collapsed" Name="Tab3">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="140"/>
                            <ColumnDefinition Width="140"/>
                            <ColumnDefinition Width="160"/>
                            <ColumnDefinition Width="200"/>
                            </Grid.ColumnDefinitions>
                        <StackPanel Grid.Column="0">
                            <Label Content="Bloatware" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="bcalculator" Content="Calculator" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bphotos" Content="Photos" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bcanonical" Content="Canonical" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxtcui" Content="Xbox TCUI" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxapp" Content="Xbox APP" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxgamingoverlay" Content="Xbox Overlay" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxspeech" Content="Xbox Speech" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bstickynotes" Content="Sticky Notes" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmspaint" Content="MS Paint" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bcamera" Content="Camera" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bheifi" Content="Heifi Extension" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bscreensketch" Content="Screen Sketch" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bvp9video" Content="VP9 Extension" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwebmedia" Content="Web Extension" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwebimage" Content="Webp Extension" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwindsynth" Content="WindSynthBerry" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmidiberry" Content="MidiBerry" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bslack" Content="Slack" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmixedreality" Content="Mixed Reality" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bppiprojection" Content="PPI Projection" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bbingnews" Content="Bing News" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bgethelp" Content="Get Help" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bgetstarted" Content="Get Started" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmessaging" Content="Messaging" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>

                        <StackPanel Grid.Column="1">
                            <Label Content="" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="b3dviewer" Content="3D Viewer" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bofficehub" Content="Office Hub" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bsolitaire" Content="Solitaire" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bnetworkspeedtest" Content="Network Speed" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bnews" Content="News" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bofficelens" Content="Office Lens" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bonenote" Content="Onenote" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bofficesway" Content="Office Sway" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="boneconnect" Content="One Connect" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bpeople" Content="People" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bprint3d" Content="Print 3D" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bremotedesktop" Content="Remote Desktop" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bskypeapp" Content="Skype App" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bofficetodo" Content="Office To Do" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwhiteboard" Content="Whiteboard" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwindowsalarm" Content="Windows Alarm" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwindowscommunications" Content="Commmunications" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bfeedback" Content="Feedback" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmaps" Content="Maps" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bsound" Content="Sound Record" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bzune" Content="Zune Music" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxidentity" Content="Xbox Identity" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bzunevideo" Content="Zune Video" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="beclipse" Content="Eclipse" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>

                        <StackPanel Grid.Column="2">
                            <Label Content="" Margin="0,0,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="blanguage" Content="Language pack" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="badobe" Content="Adobe Express" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bduolingo" Content="Duolingo" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bpandoramedia" Content="PandoraMedia" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bcandycrush" Content="Candy Crush" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bbubblewitch" Content="BubbleWitch" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwunderlist" Content="Wunderlist" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bflipboard" Content="Flipboard" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="btwitter" Content="Twitter" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bfacebook" Content="Facebook" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bspotify" Content="Spotify" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bminecraft" Content="Minecraft" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="broyalrevolt" Content="Royal Revolt" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bsway" Content="Sway" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bdolby" Content="Dolby" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="badvertising" Content="Advertising XAML" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwallet" Content="Wallet" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="byourphone" Content="Your Phone" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bedge" Content="Edge Stable" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bwinget" Content="Desktop Installer" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bstore" Content="Microsoft Store" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bui" Content="UI Libraries" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bvclibs" Content="VC Libraries" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bnet" Content=".NET" Margin="5,0,0,0" Foreground="White"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                        </StackPanel>
                        <StackPanel Grid.Column="5">

                        <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                        
                            <Button Content="Suggested Choices" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab3P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="The term Bloatware is used to describe unwanted pre-installed software" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Advanced Menu" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab3P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="The Advanced Menu let you uninstall manually all preinstalled Software UWP" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Reinstall ALL" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab3P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Reinstall all bloatware only if you need an application that didn't install from Microsoft Store or other Methods" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Uninstall Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab3P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Privacy" Visibility="Collapsed" Name="Tab4">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="p1" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p2" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p3" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p4" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p5" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p6" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p7" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p8" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p9" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p10" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p11" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                            <Label Content="Privacy Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="p25" Content="Language Options" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p26" Content="Suggested Apps" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p27" Content="Telemetry" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p28" Content="Activity History" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p29" Content="Location Tracking" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p30" Content="Error Reporting" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p31" Content="Diagnostick Tracking" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p32" Content="WAP Push Service" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p33" Content="Home Group" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p34" Content="Remote Assistance" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p35" Content="Storage Check" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>

                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="p12" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p13" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p14" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p15" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p16" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p17" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p18" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p19" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p20" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="p21" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="p36" Content="Superfetch" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p37" Content="Hibernation" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p38" Content="Fullscreen Optimization" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p39" Content="Scheduled Defrag" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p40" Content="Xbox Features" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p41" Content="Fast Startup" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p42" Content="All Bandwidth" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p43" Content="Auto Manteinance" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p44" Content="Reserved Storage" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p45" Content="Tweaks GameDVR" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="p46" Content="O O Shutup" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>

                        <StackPanel Grid.Column="4">
                        <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends1" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Utility" Visibility="Collapsed" Name="Tab5">
                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="UT1" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT3" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT5" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT7" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT9" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT11" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT13" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT15" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT17" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT19" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT21" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Utility Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="UT2" Content="Background App Access" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT4" Content="Automatic Maps Update" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT6" Content="Feedback" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT8" Content="Tailored Experiences" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT10" Content="Advertising ID" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT12" Content="Smart Screen Filter" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT14" Content="Wi-Fi Sense" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT16" Content="BIOS in Local Time" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT18" Content="UWP App Access" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT20" Content="Remote Desktop" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT22" Content="Numlock after Startup" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="UT23" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT25" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT29" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT31" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT42" Content="News and Interest" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="UT24" Content="Shortcut Icon Arrow" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT26" Content="Enhanced Pointer Precision" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT30" Content="Seconds from Taskbar" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT32" Content="-Shortcut to name" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT44" Content="News and Interest" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT34" Content="Custom Powerplan" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT38" Content="Better SSD Use" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT40" Content="IRP Stack Size" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT45" Content="Accented Capitals" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="UT28" Content="Index Files" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="UT43" Content="PDF Control Edge" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>

                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends2" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Defender" Visibility="Collapsed" Name="Tab6">
                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="d1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Defender Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="24" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="d25" Content="Controlled Folder Access" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d26" Content="Core Isolation Memory Integrity" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d27" Content="Defender Application Guard" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d28" Content="Account Protection Warning" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d29" Content="Block of Downloaded Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d30" Content="Windows Script Host" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d31" Content=".NET Strong Cryptography" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d32" Content="Meltdown (CVE-2017-5754)" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d33" Content="UAC Level" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d34" Content="Share Mapped Drives" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d35" Content="Implicit Administrative Shares" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d36" Content="SMB Server" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="d13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d14" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d16" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d18" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d20" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d22" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d23" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="d24" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="d37" Content="LLMNR" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d38" Content="Set Current Network Public" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d39" Content="Set Unknown Networks Public" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d40" Content="Installation of Network Devices" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d41" Content="Windows Firewall" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d42" Content="Windows Defender" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d43" Content="Windows Defender Cloud" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d44" Content="F8 Boot Menu Options" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d45" Content="NetBIOS over TCP/IP" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d46" Content="Internet Connection Sharing" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d47" Content="Windows Defender SysTray" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d48" Content="Windows Defender Services" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it reactivates too many services" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Suggested Choices" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Best Choices to obtain the best protection without the useless services" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Minimum Protection" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="NOT RECOMMENDED, Use only if you are aware of the consequences" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends3" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Update" Visibility="Collapsed" Name="Tab7">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="365"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="u1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="u8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Update Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="u10" Content="Nightly Wake-Up for Automatic Maintenance" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u11" Content="Windows Update Automatic Downloads" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u12" Content="Updates for Other Microsoft Products" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u13" Content="Malicious Software Removal Tool Offering" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u14" Content="Unrestrict Windows Update P2P Optimization to Local Network" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u15" Content="Driver Download from Windows Update" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u16" Content="Windows Update Automatic Restart" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u17" Content="Update Notifications" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u18" Content="Default Windows Update" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="u9" Content="Security Update" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Grid.Column="5">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not recommended because it activates automatic restart etc" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Security Update" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Security Update disables Features Update and install only the Essential Update" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Reset Windows Update" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Reset Windows Update to Factory Settings (it helps when it is in error)" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends4" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Application" Visibility="Collapsed" Name="Tab8">
                                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="a1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="App Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="a24" Content="OneDrive" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a25" Content="Windows Media Player" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a26" Content="Internet Explorer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a27" Content="Work Folders" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a28" Content="WSL (Linux Subsystem)" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a29" Content="Hyper-V" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a30" Content="PhotoViewer to Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a31" Content="Microsoft Print to PDF" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a32" Content="Microsoft XPS Document Writer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a33" Content="Fax Printer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a34" Content="Developer Mode" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a35" Content="Math Recognizer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a37" Content="Graphic Settings FX" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a41" Content="Gpedit on Home Version" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="a38" Content="Adobe Creative Cloud" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a16" Content="CCleaner Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a17" Content="Office Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a18" Content="Adobe Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a19" Content="Dropbox Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a20" Content="Google Update Service" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a21" Content="Logitech Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a22" Content="Vs Code Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a23" Content="Chrome Telemetry" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a13" Content="Setting Sync" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a14" Content="Windows Live ID Service" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a36" Content="NFS (Network FS)" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a39" Content="Clipboard History" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a40" Content="Do This for all checkbox" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends5" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>

                    </Grid>
                </TabItem>
                <TabItem Header="System" Visibility="Collapsed" Name="Tab9">
                                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="e1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="System Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="e24" Content="File Extensions" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e25" Content="Hidden Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e26" Content="Protected Operating System Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e27" Content="Empty Drives (With no Media)" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e28" Content="Folder Merge Conflicts" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e29" Content="Navigation Panel Expand" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e30" Content="Launching Folder in Separate" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e31" Content="Restoring Previous Folder Logon" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e32" Content="Coloring Compressed NTFS Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e33" Content="Sharing Wizard" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e34" Content="Checkbox" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e35" Content="Sync Provider Notifications" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="e13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e14" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e16" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e18" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e20" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e22" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e23" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="e47" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="e36" Content="'Include Library' Context Menu" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e37" Content="'Give Access' Context Menu" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e38" Content="'Share' in Context Menu" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e39" Content="Thumbnails" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e40" Content="Creation of Thumbnail Cache" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e41" Content="Creation Thumbs.db Network" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e42" Content="Recycle Bin from Desktop" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e43" Content="This PC on Desktop" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e44" Content="User Folder on Desktop" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e45" Content="Control Panel on Desktop" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e46" Content="Network on Desktop" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="e48" Content="Microsoft Store" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends6" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Explorer" Visibility="Collapsed" Name="Tab10">
                                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="ed1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Explorer Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ed23" Content="All Icon on Desktop" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed24" Content="Windows Build Number Desktop" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed25" Content="Desktop Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed26" Content="Documents Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed27" Content="Downloads Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed28" Content="Music Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed29" Content="Pictures Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed30" Content="Videos Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed31" Content="Network Icon in This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed32" Content="Full Directory Path in Explorer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed33" Content="All Folder in Explorer Nav Panel" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="ed12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed14" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed16" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed18" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed20" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ed22" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="ed34" Content="Recent Shorcuts in Explorer" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed35" Content="Default Explorer Quick Access" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed36" Content="Quick Access in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed37" Content="Libraries in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed38" Content="Desktop in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed39" Content="Documents in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed40" Content="Downloads in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed41" Content="Music in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed42" Content="Pictures in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed43" Content="Videos in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ed44" Content="Network in Explorer Nav" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab10P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab10P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab10P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab10P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends7" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Taskbar" Visibility="Collapsed" Name="Tab11">
                                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="t1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t29" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Taskbar Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="t24" Content="'Recent Elements' in Start Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t25" Content="'Most Used' in Start Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t26" Content="Windows Search in Start Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t27" Content="Task Icon in Taskbar" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t28" Content="People Icon in Taskbar" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t6" Content="Transparent Taskbar" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t30" Content="All Tray Icon" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t31" Content="Action Center" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t32" Content="Cortana" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t33" Content="Dark Theme" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t34" Content="AeroShake" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t35" Content="Task Manager, Show Details" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="t13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t14" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t16" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t18" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t22" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="t46" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="t36" Content="Details Operation Files" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t37" Content="Control Panel Categories View" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t38" Content="Search for App in Store" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t39" Content="'How do you want to open'" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t40" Content="Recent Files Lists" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t41" Content="Clearing of Recent Files" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t42" Content="Autoplay" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t44" Content="Autorun for All Drives" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t45" Content="Sticky Keys Prompt" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t47" Content="3d Object" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t20" Content="Treat As Internal Port" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="t23" Content="Paint3D" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab11P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab11P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab11P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab11P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends8" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Repair PC" Visibility="Collapsed" Name="Tab12">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="220"/>
                            <ColumnDefinition Width="200"/>
                            <ColumnDefinition Width="200"/>
                            <ColumnDefinition Width="26"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Grid.Column="0">
                        <TextBlock TextWrapping="Wrap" Text="Customization Software" Foreground="#FF999999" Margin="5,20,0,0" FontWeight="Bold" FontSize="18" Width="140" Height="20" TextAlignment="Center"/>
                            <Button Content="PowerToys" Margin="0,15,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P1">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Start11" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P2">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="OpenShell" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P3">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="TranslucentTB" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P4">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="TaskbarX" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Winaero" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P6">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="StartAllBack" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P7">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="RoundedTB" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P8">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Files" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P9">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Fences" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P10">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="RainMeter" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P11">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
			<Button Content="SuperGodMode" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab12P42">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                        </StackPanel>
                        <StackPanel Grid.Column="1">
                        
                            <Button Content="Check Windows License" Margin= "0,50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P14" Padding="1,1,1,1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Check Office License" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P15">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Battery Report" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P16">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Export Drivers" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P17">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Reset Connection" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P18">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Reset Microsoft Store" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P19">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Control Panel App" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P13">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                        </StackPanel>
                        <StackPanel Grid.Column="2">
                            <Button Content="Dism" Margin= "0,50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P20">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="SFC" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P21">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Reset Explorer" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P22">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Kill not Responding Task" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P23">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Hide Update" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P24">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Clean Cache" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P25">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Button Content="Change Registered Owner" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab12P26">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Windows 11" Visibility="Collapsed" Name="Tab13">
                                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="250"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="90"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,80,0,0" Grid.Column="0">
                            <CheckBox Name="w1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w2" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w4" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w6" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <Label Content="" Margin="5,10,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="w7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w8" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w10" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="w12" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="Windows 11 Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="w13" Content="Classic Taskbar/Start Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w14" Content="Modern Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w15" Content="Restore Explorer Ribbon" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w16" Content="Remove 'Let's Finish Setting up'" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w23" Content="Disable Copilot" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w24" Content="Disable Background Apps" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <Label Content="Context Menu" Margin="-70,10,0,0" FontWeight="Bold" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="w17" Content="Add 'Open Bash' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w18" Content="Add 'Open Powershell Here' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w19" Content="Add 'Open CMD Here' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w20" Content="Add 'Open Windows Terminal Here' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w21" Content="Add 'Activate Case Sensitive Folder' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="w22" Content="Add 'Screen Snip' in Context Menu" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            
                        </StackPanel> 
                        <StackPanel Margin="0,0,0,0" Grid.Column="4">
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="0,0,0,0" FontSize="8" Width="140" Height="88" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Default Settings" Margin="30,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab13P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it can reactivate Telemetry" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Laptop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab13P2">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Laptop to avoid excessive battery drain or loss of functions" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized for Desktop" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab13P3">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Run Selected" Margin= "30,15,0,0" Foreground="Red" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab13P4">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                                <Button.Style>
                                    <Style/>
                                </Button.Style>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends9" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>                            
                    </Grid>
                </TabItem>
            </TabControl>
        </Grid>
    </Viewbox>
</Window>
"@

$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
    [void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
    [xml]$XAML = $inputXML
    #Read XAML
    
        $reader=(New-Object System.Xml.XmlNodeReader $xaml) 
    try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
    catch [System.Management.Automation.MethodInvocationException] {
        Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
        write-host $error[0].Exception.Message -ForegroundColor Red
        if ($error[0].Exception.Message -like "*button*"){
            write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"}
    }
    catch{#if it broke some other way <img draggable="false" role="img" class="emoji" alt="😀" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/1f600.svg">
        Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
            }
    
    $xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name)}
    
    Function Get-FormVariables{
    if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
    write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
    get-variable WPF*
    }
    Clear
    Write-Host "##########################################"
    Write-Host "######## Windows Italia Debloat ##########"
    Write-Host "##########################################"
    Write-Host " "

##########################################
######### Navigation Controls ############
##########################################

$WPFTab1A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $true
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab2A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $true
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false

    function Install-WinGet() {

        $progressPreference = 'silentlyContinue'

        $wc = New-Object net.webclient
        $msu_url = 'https://aka.ms/getwinget'
        $local_msu_url = "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
        $wc.Downloadfile($msu_url, $local_msu_url)

        $wc = New-Object net.webclient
        $msu_url = 'https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx'
        $local_msu_url = "Microsoft.VCLibs.x64.14.00.Desktop.appx"
        $wc.Downloadfile($msu_url, $local_msu_url)

        $wc = New-Object net.webclient
        $msu_url = 'https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx'
        $local_msu_url = "Microsoft.UI.Xaml.2.8.x64.appx"
        $wc.Downloadfile($msu_url, $local_msu_url)

        Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
        Add-AppxPackage Microsoft.UI.Xaml.2.8.x64.appx
        Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    }

    if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
        Write-Host 'Winget Already Installed'
        }  
        else{
        Write-Host 'Installing Winget'
        Install-WinGet
    }

})

$WPFTab3A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $true
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab4A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $true
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab5A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $true
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab6A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $true
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab7A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $true
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab8A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $true
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab9A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $true
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab10A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $true
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab11A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $true
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab12A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $true
    $WPFTabNav.Items[12].IsSelected = $false
})

$WPFTab13A.Add_Click({
    $WPFTabNav.Items[0].IsSelected = $false
    $WPFTabNav.Items[1].IsSelected = $false
    $WPFTabNav.Items[2].IsSelected = $false
    $WPFTabNav.Items[3].IsSelected = $false
    $WPFTabNav.Items[4].IsSelected = $false
    $WPFTabNav.Items[5].IsSelected = $false
    $WPFTabNav.Items[6].IsSelected = $false
    $WPFTabNav.Items[7].IsSelected = $false
    $WPFTabNav.Items[8].IsSelected = $false
    $WPFTabNav.Items[9].IsSelected = $false
    $WPFTabNav.Items[10].IsSelected = $false
    $WPFTabNav.Items[11].IsSelected = $false
    $WPFTabNav.Items[12].IsSelected = $true
})

##########################################
################# Easy ###################
##########################################

$WPFTab1P1.Add_Click({
        Write-Host "The Process may take a while"
        Get-AppxPackage -allusers Microsoft.Windows.Photos | Remove-AppxPackage
        Get-AppxPackage -allusers CanonicalGroupLimited.UbuntuonWindows | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MSPaint | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WindowsCamera | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.ScreenSketch | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.VP9VideoExtensions | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WebMediaExtensions | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WebpImageExtension | Remove-AppxPackage
        Get-AppxPackage -allusers WindSynthBerry | Remove-AppxPackage
        Get-AppxPackage -allusers MIDIBerry | Remove-AppxPackage
        Get-AppxPackage -allusers Slack | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MixedReality.Portal | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.PPIProjection | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.BingNews | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.GetHelp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Getstarted | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Messaging | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Microsoft3DViewer | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.NetworkSpeedTest | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.News | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Office.Lens | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Office.OneNote | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Office.Sway | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.OneConnect | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.People | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Print3D | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.RemoteDesktop | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.SkypeApp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Office.Todo.List | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Whiteboard | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WindowsAlarms | Remove-AppxPackage
        Get-AppxPackage -allusers microsoft.windowscommunicationsapps | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WindowsFeedbackHub | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WindowsMaps | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.WindowsSoundRecorder | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.ZuneMusic | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.ZuneVideo | Remove-AppxPackage
        Get-AppxPackage -allusers EclipseManager | Remove-AppxPackage
        Get-AppxPackage -allusers ActiproSoftwareLLC | Remove-AppxPackage
        Get-AppxPackage -allusers AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage
        Get-AppxPackage -allusers Duolingo-LearnLanguagesforFree | Remove-AppxPackage
        Get-AppxPackage -allusers PandoraMediaInc | Remove-AppxPackage
        Get-AppxPackage -allusers CandyCrush | Remove-AppxPackage
        Get-AppxPackage -allusers BubbleWitch3Saga | Remove-AppxPackage
        Get-AppxPackage -allusers Wunderlist | Remove-AppxPackage
        Get-AppxPackage -allusers Flipboard | Remove-AppxPackage
        Get-AppxPackage -allusers Twitter | Remove-AppxPackage
        Get-AppxPackage -allusers Facebook | Remove-AppxPackage
        Get-AppxPackage -allusers Spotify | Remove-AppxPackage
        Get-AppxPackage -allusers Minecraft | Remove-AppxPackage
        Get-AppxPackage -allusers Royal Revolt | Remove-AppxPackage
        Get-AppxPackage -allusers Sway | Remove-AppxPackage
        Get-AppxPackage -allusers Dolby | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Advertising.Xaml | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Wallet | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.LanguageExperiencePackit-IT | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.MicrosoftEdge.Stable | Remove-AppxPackage
        Get-AppxPackage -allusers MicrosoftCorporationII.QuickAssist | Remove-AppxPackage
        Get-AppxPackage -allusers MicrosoftWindows.Client.WebExperience | Remove-AppxPackage
        Get-AppxPackage -allusers Clipchamp.Clipchamp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.RawImageExtension | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.Todos | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.PowerAutomateDesktop | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.BingWeather | Remove-AppxPackage
        Write-Host "Removed All Bloatware"

Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/ooshutup10.cfg" -Destination ooshutup10.cfg
        Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
        ./OOSU10.exe ooshutup10.cfg /quiet
        Write-Host "Executed O&O Shutup with Recommended Settings"
                
        powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
        powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
        powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
        powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
        Write-host "Custom Powerplan Installed" 
                
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
        Write-host "Set IRP Stack Size to 20" 
                
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value 4194304
        Write-host "Set SVChost Tweak" 
                
        fsutil behavior set DisableLastAccess 1
        fsutil behavior set EncryptPagingFile 0
        Write-host "Set Better SSD Use" 
                                 
        If (!(Test-Path "HKU:")) {
            New-PSDrive -Name "HKU" -PSProvider "Registry" -Root "HKEY_USERS" | Out-Null
        }
        Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
        Add-Type -AssemblyName System.Windows.Forms
        If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
            $wsh = New-Object -ComObject WScript.Shell
            $wsh.SendKeys('{NUMLOCK}')
        }
        Write-host "Enabled NumLock after Startup" 

        Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -ErrorAction SilentlyContinue
        Write-Host "Disabled Core Isolation Memory Integrity"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows Security Health\State")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows Security Health\State" -Force | Out-Null
        }
        Set-ItemProperty "HKCU:\Software\Microsoft\Windows Security Health\State" -Name "AccountProtection_MicrosoftAccount_Disconnected" -Type DWord -Value 1
        Write-Host "Hided Account Protection Warning"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" -Name "SaveZoneInformation" -Type DWord -Value 1
        Write-Host "Disabled Block of Downloaded Files"

        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
        Write-Host "Disabled .NET Strong Cryptography"

        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
        Write-Host "Minimum UAC Level"

        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -ErrorAction SilentlyContinue
        Write-Host "Disabled Share Mapped Drives Between Users"

        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareWks" -Type DWord -Value 0
        Write-Host "Disabled Implicit Administrative Shares"

        Set-NetConnectionProfile -NetworkCategory Private
        Write-Host "Set Current Network Profile to Private"

        bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
        Write-Host "Enabled F8 Boot Menu Options"

        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "WakeUp" -Type DWord -Value 0
        Write-Host "Disabled Nightly Wake-Up for Automatic Maintenance"

        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 2
        }
        Write-Host "Disabled Windows Update Automatic Downloads"

        If ([System.Environment]::OSVersion.Version.Build -eq 10240) {
        # Method used in 1507
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
        } ElseIf ([System.Environment]::OSVersion.Version.Build -le 14393) {
        # Method used in 1511 and 1607
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Type DWord -Value 1
        } Else {
        # Method used since 1703
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -ErrorAction SilentlyContinue
        }
        Write-Host "Restrict Windows Update P2P Optimization to Local Network"

        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Name "Debugger" -Type String -Value "cmd.exe"
        Write-Host "Disabled Windows Update Automatic Restart"

        takeown /F "$env:WinDIR\System32\MusNotification.exe"
        icacls "$env:WinDIR\System32\MusNotification.exe" /deny "$($EveryOne):(X)"
        takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
        icacls "$env:WinDIR\System32\MusNotificationUx.exe" /deny "$($EveryOne):(X)"
        Write-Host "Disabled Update Notifications"

        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
        Write-Host "Disabling Windows Update automatic restart..."
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
        Write-Host "Only Security Update"

        Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Disabled Work Folders"
                
        Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Removed Microsoft Print to PDF"
        
        Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Removed Microsoft XPS Document Writer"
        
        Remove-Printer -Name "Fax" -ErrorAction SilentlyContinue
        Write-Host "Removed Fax Printer"
        
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -ErrorAction SilentlyContinue
        Write-Host "Removed Developer Mode"
        
        Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Remove-WindowsCapability -Online | Out-Null
        Write-Host "Removed Math Recognizer"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0       
        Write-Host "Showed known File Extensions"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
        Write-Host "Showed Hidden Files"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -Type DWord -Value 0
        Write-Host "Showed Folder Merge Conflicts"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -Type DWord -Value 1
        Write-Host "Enabled Restoring Previous Folder at Logon"

        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Write-Host "Showed Recycle Bin Shorcut on Desktop"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        Write-Host "Showed This PC Shorcut on Desktop"

        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneExpandToCurrentFolder" -ErrorAction SilentlyContinue
        Write-Host "Disabled Navigation Panel Expand to Current Folder"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -Type DWord -Value 0
        Write-Host "Disabled Sharing Wizard"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 0
        Write-Host "Hided Checkbox"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Include in Library"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Give Access to' in Context Menu"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue   
        Write-Host "Hided 'Share' in Context Menu"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 0
        Write-Host "Showed All Icon on Desktop"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Type DWord -Value 1
        Write-Host "Showed Full Directory Path in Explorer"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
        Write-Host "Changed Default Explorer view to This PC"

        Remove-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -ErrorAction SilentlyContinue
        Write-Host "Hided Libraries Icon in Explorer Namespace"

            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -Name "ForceEffectMode" -Type dword -Value 1
        Write-Host "Set Taskbar Transparent"

            $taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
        Do {
        Start-Sleep -Milliseconds 100
        $preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
        } Until ($preferences)
        Stop-Process $taskmgr
        $preferences.Preferences[28] = 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
        Write-Host "Set Task Manager, Show Details"

            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
        Write-Host "Set Show Details Operation Files"

            If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -Type DWord -Value 0
        Write-Host "Set Control Panel Icon View"

            If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -Type DWord -Value 1
        Write-Host "Disabled Search for App in Store for Unknown Extensions"

            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 1
        Write-Host "Disabled Autoplay"

            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Type DWord -Value 255
        Write-Host "Disabled Autorun for All Drives"

            Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
        Write-Host "Disabled Sticky Keys Prompt"

            $Paint3Dstuff = @(
        "HKCR:\SystemFileAssociations\.3mf\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.bmp\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.fbx\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.gif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jfif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpe\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpeg\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpg\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.png\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.tif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.tiff\Shell\3D Edit"
        )
        #Rename reg key to remove it, so it's revertible
        foreach ($Paint3D in $Paint3Dstuff) {
        If (Test-Path $Paint3D) {
        $rmPaint3D = $Paint3D + "_"
        Set-Item $Paint3D $rmPaint3D
        }
        }
        Write-Host "Disabled Paint3D"

            Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
                    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
                }
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
                If (!(Test-Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
                    New-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
                }
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
            
            Write-Host "Disabled 3D Object"

                Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 0
            Write-Host "Set Dark Theme"

            Write-Host "Completed"
            $result = [System.Windows.MessageBox]::Show("E' richiesto il riavvio. Vuoi riavviare il sistema?", "Richiesta di riavvio", "YesNo", "Question")

            if ($result -eq "Yes") {
                Write-Host "Riavvio del sistema in corso..."
                Restart-Computer -Force
            }
            else {
                Write-Host "Operazione completata senza riavvio."
            }
})

$WPFTab1P2.Add_Click({
        Write-Host "The Process may take a while"
    Get-AppxPackage -allusers Microsoft.Windows.Photos | Remove-AppxPackage
    Get-AppxPackage -allusers CanonicalGroupLimited.UbuntuonWindows | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MSPaint | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsCamera | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.ScreenSketch | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.VP9VideoExtensions | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WebMediaExtensions | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WebpImageExtension | Remove-AppxPackage
    Get-AppxPackage -allusers WindSynthBerry | Remove-AppxPackage
    Get-AppxPackage -allusers MIDIBerry | Remove-AppxPackage
    Get-AppxPackage -allusers Slack | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MixedReality.Portal | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.PPIProjection | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.BingNews | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.GetHelp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Getstarted | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Messaging | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Microsoft3DViewer | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.NetworkSpeedTest | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.News | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Office.Lens | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Office.OneNote | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Office.Sway | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.OneConnect | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.People | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Print3D | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.RemoteDesktop | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.SkypeApp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Office.Todo.List | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Whiteboard | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsAlarms | Remove-AppxPackage
    Get-AppxPackage -allusers microsoft.windowscommunicationsapps | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsFeedbackHub | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsMaps | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsSoundRecorder | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.ZuneMusic | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.ZuneVideo | Remove-AppxPackage
    Get-AppxPackage -allusers EclipseManager | Remove-AppxPackage
    Get-AppxPackage -allusers ActiproSoftwareLLC | Remove-AppxPackage
    Get-AppxPackage -allusers AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage
    Get-AppxPackage -allusers Duolingo-LearnLanguagesforFree | Remove-AppxPackage
    Get-AppxPackage -allusers PandoraMediaInc | Remove-AppxPackage
    Get-AppxPackage -allusers CandyCrush | Remove-AppxPackage
    Get-AppxPackage -allusers BubbleWitch3Saga | Remove-AppxPackage
    Get-AppxPackage -allusers Wunderlist | Remove-AppxPackage
    Get-AppxPackage -allusers Flipboard | Remove-AppxPackage
    Get-AppxPackage -allusers Twitter | Remove-AppxPackage
    Get-AppxPackage -allusers Facebook | Remove-AppxPackage
    Get-AppxPackage -allusers Spotify | Remove-AppxPackage
    Get-AppxPackage -allusers Minecraft | Remove-AppxPackage
    Get-AppxPackage -allusers Royal Revolt | Remove-AppxPackage
    Get-AppxPackage -allusers Sway | Remove-AppxPackage
    Get-AppxPackage -allusers Dolby | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Advertising.Xaml | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Wallet | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.LanguageExperiencePackit-IT | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftEdge.Stable | Remove-AppxPackage
    Get-AppxPackage -allusers MicrosoftCorporationII.QuickAssist | Remove-AppxPackage
    Get-AppxPackage -allusers MicrosoftWindows.Client.WebExperience | Remove-AppxPackage
    Get-AppxPackage -allusers Clipchamp.Clipchamp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.RawImageExtension | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Todos | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.PowerAutomateDesktop | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.BingWeather | Remove-AppxPackage
    Write-Host "Removed All Bloatware"

    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/OO.cfg" -Destination ooshutup10.cfg
    Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
    ./OOSU10.exe ooshutup10.cfg /quiet
    Write-Host "Executed O&O Shutup with Recommended Settings"
                      
    powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
    powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
    powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
    Write-host "Custom Powerplan Installed" 
            
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
    Write-host "Set IRP Stack Size to 20" 
            
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value 4194304
    Write-host "Set SVChost Tweak" 
            
    fsutil behavior set DisableLastAccess 1
    fsutil behavior set EncryptPagingFile 0
    Write-host "Set Better SSD Use" 
                                
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name "HKU" -PSProvider "Registry" -Root "HKEY_USERS" | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
	Add-Type -AssemblyName System.Windows.Forms
	If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
		$wsh = New-Object -ComObject WScript.Shell
		$wsh.SendKeys('{NUMLOCK}')
	}
    Write-host "Enabled NumLock after Startup" 


    Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -ErrorAction SilentlyContinue
    Write-Host "Disabled Core Isolation Memory Integrity"

    If (!(Test-Path "HKCU:\Software\Microsoft\Windows Security Health\State")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows Security Health\State" -Force | Out-Null
    }
    Set-ItemProperty "HKCU:\Software\Microsoft\Windows Security Health\State" -Name "AccountProtection_MicrosoftAccount_Disconnected" -Type DWord -Value 1
    Write-Host "Hided Account Protection Warning"

    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" -Name "SaveZoneInformation" -Type DWord -Value 1
    Write-Host "Disabled Block of Downloaded Files"

    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
    Write-Host "Disabled .NET Strong Cryptography"

    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
    Write-Host "Minimum UAC Level"

    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -ErrorAction SilentlyContinue
    Write-Host "Disabled Share Mapped Drives Between Users"

    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareWks" -Type DWord -Value 0
    Write-Host "Disabled Implicit Administrative Shares"

    Set-NetConnectionProfile -NetworkCategory Private
    Write-Host "Set Current Network Profile to Private"

    bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Enabled F8 Boot Menu Options"

    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "WakeUp" -Type DWord -Value 0
        Write-Host "Disabled Nightly Wake-Up for Automatic Maintenance"

        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 2
        }
        Write-Host "Disabled Windows Update Automatic Downloads"

        If ([System.Environment]::OSVersion.Version.Build -eq 10240) {
        # Method used in 1507
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
        } ElseIf ([System.Environment]::OSVersion.Version.Build -le 14393) {
        # Method used in 1511 and 1607
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Type DWord -Value 1
        } Else {
        # Method used since 1703
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -ErrorAction SilentlyContinue
        }
        Write-Host "Restrict Windows Update P2P Optimization to Local Network"

        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Name "Debugger" -Type String -Value "cmd.exe"
        Write-Host "Disabled Windows Update Automatic Restart"

        takeown /F "$env:WinDIR\System32\MusNotification.exe"
        icacls "$env:WinDIR\System32\MusNotification.exe" /deny "$($EveryOne):(X)"
        takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
        icacls "$env:WinDIR\System32\MusNotificationUx.exe" /deny "$($EveryOne):(X)"
        Write-Host "Disabled Update Notifications"

        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
        Write-Host "Disabling Windows Update automatic restart..."
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
        Write-Host "Only Security Update"

        Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Disabled Work Folders"
        
        Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Removed Microsoft Print to PDF"
        
        Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Removed Microsoft XPS Document Writer"
        
        Remove-Printer -Name "Fax" -ErrorAction SilentlyContinue
        Write-Host "Removed Fax Printer"
        
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -ErrorAction SilentlyContinue
        Write-Host "Removed Developer Mode"
        
        Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Remove-WindowsCapability -Online | Out-Null
        Write-Host "Removed Math Recognizer"
        
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0       
        Write-Host "Showed known File Extensions"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
        Write-Host "Showed Hidden Files"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -Type DWord -Value 0
        Write-Host "Showed Folder Merge Conflicts"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -Type DWord -Value 1
        Write-Host "Enabled Restoring Previous Folder at Logon"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 1
        Write-Host "Showed Sync Provider Notifications"

        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Write-Host "Showed Recycle Bin Shorcut on Desktop"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        Write-Host "Showed This PC Shorcut on Desktop"

        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneExpandToCurrentFolder" -ErrorAction SilentlyContinue
        Write-Host "Disabled Navigation Panel Expand to Current Folder"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -Type DWord -Value 0
        Write-Host "Disabled Sharing Wizard"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 0
        Write-Host "Hided Checkbox"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Include in Library"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Give Access to' in Context Menu"

        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue   
        Write-Host "Hided 'Share' in Context Menu"

    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 0
        Write-Host "Showed All Icon on Desktop"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Type DWord -Value 1
        Write-Host "Showed Full Directory Path in Explorer"

        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
        Write-Host "Change Default Explorer view to This PC"

        Remove-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -ErrorAction SilentlyContinue
        Write-Host "Hided Libraries Icon in Explorer Namespace"

    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
        Write-Host "Disabled 'Recent Elements' in Start Menu"

            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -Type DWord -Value 1
        Write-Host "Disabled 'Most Used' in Start Menu"

            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -Name "ForceEffectMode" -Type dword -Value 1
        Write-Host "Set Taskbar Transparent"

            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
        Write-Host "Set Show Details Operation Files"

            If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -Type DWord -Value 0
        Write-Host "Set Control Panel Icon View"

            If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -Type DWord -Value 1
        Write-Host "Disabled Search for App in Store for Unknown Extensions"

            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -Type DWord -Value 1
        Write-Host "Disabled Recent Files Lists"

            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 1
        Write-Host "Disabled Autoplay"

            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Type DWord -Value 255
        Write-Host "Disabled Autorun for All Drives"

            Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
        Write-Host "Disabled Sticky Keys Prompt"

            $Paint3Dstuff = @(
        "HKCR:\SystemFileAssociations\.3mf\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.bmp\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.fbx\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.gif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jfif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpe\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpeg\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.jpg\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.png\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.tif\Shell\3D Edit"
        "HKCR:\SystemFileAssociations\.tiff\Shell\3D Edit"
        )
        #Rename reg key to remove it, so it's revertible
        foreach ($Paint3D in $Paint3Dstuff) {
        If (Test-Path $Paint3D) {
        $rmPaint3D = $Paint3D + "_"
        Set-Item $Paint3D $rmPaint3D
        }
        }
        Write-Host "Disabled Paint3D"

            Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
            If (!(Test-Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
                New-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        
        Write-Host "Disabled 3D Object"


            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
        Write-Host "Disabled Cortana"

            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 0
        Write-Host "Set Dark Theme"
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Value 2
        Write-Host "Disabled News and Interest"
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" -Force | Out-Null
        }

    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" -Name "ChatIcon" -Type DWord -Value 3
        Write-Host "Removed Pinned Icon on Taskbar"

            If (!(Test-Path "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32")) {
        New-Item -Path "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" -Name "(Default)" -Type Dword -Value ""
    Stop-Process -Name explorer -Force
    Write-Host "Enabled Full Context Menu"

        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" | Out-Null
    }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0 -Type DWord
    Write-Host "Disabled Welcome Experience"

        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "GlobalUserDisabled" -Type Dword -Value 1
    Write-Host "Disabled Background Apps"

	New-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Name "System.IsPinnedToNameSpaceTree" -Value 0 -PropertyType DWord -Force
    
        Write-Host "Completed"
        $result = [System.Windows.MessageBox]::Show("E' richiesto il riavvio. Vuoi riavviare il sistema?", "Richiesta di riavvio", "YesNo", "Question")

        if ($result -eq "Yes") {
            Write-Host "Riavvio del sistema in corso..."
            Restart-Computer -Force
        }
        else {
            Write-Host "Operazione completata senza riavvio."
        }
})

$WPFTab1P3.Add_Click({
    Add-Type -AssemblyName PresentationFramework
    $xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        Title="More Tweaks" Height="995" Width="325" Background="#FF1A2733">
    <Grid>
<ScrollViewer VerticalScrollBarVisibility="Auto" HorizontalScrollBarVisibility="Disabled">
        <StackPanel Margin="0,5,0,0" Grid.Column="1">
            <Button Content="Custom ISO" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P1">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>    

        <Button Content="NVCleanInstall" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P2">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>      

        <Button Content="Swap Options" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P4">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Remove Reserved Storage" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P3">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

    <Button Content="Remove Onedrive" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P5">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Remove Defender" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P6">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Remove Edge" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P7">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Customize Edge" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P18">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Add User Offline" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P8">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Autologin" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab14P9">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <TextBlock TextWrapping="Wrap" Text="Fast Startup" Foreground="#ffffff" Margin="55,5,0,5" HorizontalAlignment="Center" FontWeight="Bold" FontFamily="Segoe UI" Width="200" FontSize="25"/>
            <Button Content="ON" Margin= "-135,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P10">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>        
            
        <Button Content="OFF" Margin= "137,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P11">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <TextBlock TextWrapping="Wrap" Text="Visual FX" Foreground="#ffffff" Margin="90,5,0,5" HorizontalAlignment="Center" FontWeight="Bold" FontFamily="Segoe UI" Width="200" FontSize="25"/>
                <Button Content="Graphics" Margin= "-135,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P12">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Performance" Margin= "137,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P13">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <TextBlock TextWrapping="Wrap" Text="Windows Theme" Foreground="#ffffff" Margin="0,5,0,5" HorizontalAlignment="Center" FontWeight="Bold" FontFamily="Segoe UI" Width="200" FontSize="25"/>
        <Button Content="Dark" Margin= "-135,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P14">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

                <Button Content="Light" Margin= "137,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P15">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <TextBlock TextWrapping="Wrap" Text="UAC Level" Foreground="#ffffff" Margin="80,5,0,5" HorizontalAlignment="Center" FontWeight="Bold" FontFamily="Segoe UI" Width="200" FontSize="25"/>
        <Button Content="Minimum" Margin= "-135,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P16">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

                <Button Content="Normal" Margin= "137,-50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="135" Name="MTab14P17">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>
        </StackPanel>  
</ScrollViewer>         
    </Grid>
</Window>
"@
    $window = [Windows.Markup.XamlReader]::Parse($xaml)

    $window.FindName("MTab14P1").Add_Click({
        irm -Uri 'https://raw.githubusercontent.com/daboynb/windows_scripts/main/windows_custom_iso_maker/downloader.ps1' | iex  | Out-Host
        Write-Host "Custom ISO Script Downloaded"
    })

    $window.FindName("MTab14P2").Add_Click({
    Start-Process "https://www.techpowerup.com/download/techpowerup-nvcleanstall/"
        Write-Host "NVCleanInstall Link Opened"
    })

    $window.FindName("MTab14P3").Add_Click({
        Set-WindowsReservedStorageState -State Disabled
        Write-host "Disabled Reserved Storage" 
            [System.Windows.MessageBox]::Show("Reserved Storage disabled", "Reserved Storage", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P4").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Swap.bat" -Destination Swap.bat
        Start-Process Swap.bat
        Write-Host "Swap Options Opened"
    })

    $window.FindName("MTab14P5").Add_Click({
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1
        Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
        Start-Sleep -s 2
        $onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
        If (!(Test-Path $onedrive)) {
        $onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
        }
        Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
        Start-Sleep -s 2
        Remove-Item -Path "$env:USERPROFILE\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
        }
        Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "OneDrive Removed"
        [System.Windows.MessageBox]::Show("Onedrive removed successfully", "Onedrive", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P6").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/windows_defender_manager/PowerRun.exe" -Destination PowerRun.exe
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/windows_defender_manager/defender.bat" -Destination defender.bat
        Start-Process defender.bat
        Write-Host "Disabled Windows Defender"
    })

    $window.FindName("MTab14P7").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/remove_edge_current/remove_edge.bat" -Destination remove_edge.bat
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/remove_edge_current/remove_edge.ps1" -Destination remove_edge.ps1
        Start-Process remove_edge.bat
        Write-Host "Removed Edge"
    })

    $window.FindName("MTab14P8").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/add_user/add_user.bat" -Destination add_user.bat
        Start-Process add_user.bat
        Write-Host "User Added"
    })

    $window.FindName("MTab14P9").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/AutoLogin.bat" -Destination AutoLogin.bat
        Start-Process AutoLogin.bat
        Write-Host "AutoLogin Added"
    })

    $window.FindName("MTab14P10").Add_Click({
        Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 1
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 1
        Write-Host "Fast Startup and Hibernation ON"
        [System.Windows.MessageBox]::Show("Set Fast Startup and Hibernation to ON", "Fast Startup", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P11").Add_Click({
        Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type DWord -Value 0
        powercfg /HIBERNATE OFF 2>&1 | Out-Null
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0
        Write-Host "Fast Startup and Hibernation OFF"
        [System.Windows.MessageBox]::Show("Set Fast Startup and Hibernation to OFF", "Fast Startup", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P12").Add_Click({
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158,30,7,128,18,0,0,0))
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1
        Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1
        Write-Host "Graphic Settings FX"
        [System.Windows.MessageBox]::Show("Set Visual Effect to Graphics", "Visual Effect", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P13").Add_Click({
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
        Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
        Write-Host "Performance Settings FX"
        [System.Windows.MessageBox]::Show("Set Visual Effect to Performance", "Visual Effect", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P14").Add_Click({
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Type DWord -Value 0
        Stop-Process -Name "explorer" -Force
        Start-Process -FilePath "explorer.exe"
        Write-Host "Set Dark Theme"
        [System.Windows.MessageBox]::Show("Set Windows Theme to Dark", "Windows Theme", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P15").Add_Click({
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Type DWord -Value 1
        Stop-Process -Name "explorer" -Force
        Start-Process -FilePath "explorer.exe"
        Write-Host "Set Light Theme"
        [System.Windows.MessageBox]::Show("Set Windows Theme to Light", "Windows Theme", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P16").Add_Click({
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
        Write-Host "Minimum UAC Level"
        [System.Windows.MessageBox]::Show("Set UAC Level to Minimum", "UAC Level", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P17").Add_Click({
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
        Write-Host "Default UAC Level"
        [System.Windows.MessageBox]::Show("Set UAC Level to Default", "UAC Level", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $window.FindName("MTab14P18").Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/TheBobPony/MSEdgeTweaker/main/MSEdgeTweaker.cmd" -Destination MSEdgeTweaker.cmd
        Start-Process MSEdgeTweaker.cmd
        Write-Host "MSEdgeTweaker is a TheBobPony's Project, check https://github.com/TheBobPony"
    })

    $window.ShowDialog() | Out-Null
})

##########################################
################ Winget ##################
##########################################

$WPFTab2P1.Add_Click({
    # Fetch the URI of the latest version of the winget-cli from GitHub releases
    $latestWingetMsixBundleUri = $(Invoke-RestMethod https://api.github.com/repos/microsoft/winget-cli/releases/latest).assets.browser_download_url | Where-Object { $_.EndsWith('.msixbundle') }

    # Extract the name of the .msixbundle file from the URI
    $latestWingetMsixBundle = $latestWingetMsixBundleUri.Split('/')[-1]

    # Show a progress message for the first download step
    Write-Progress -Activity 'Installing Winget CLI' -Status 'Downloading Step 1 of 2'

    # Temporarily set the ProgressPreference variable to SilentlyContinue to suppress progress bars
    Set-Variable ProgressPreference SilentlyContinue

    Invoke-WebRequest -Uri https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml -OutFile .\microsoft.ui.xaml.nupkg.zip
    Expand-Archive -Path .\microsoft.ui.xaml.nupkg.zip -Force

    # Get the .appx file in the directory
    $appxFile = Get-ChildItem -Path .\microsoft.ui.xaml.nupkg\tools\AppX\x64\Release -Filter "*.appx" | Select-Object -First 1

    # Install the .appx file
    Try { Add-AppxPackage -Path $appxFile.FullName -ErrorAction Stop } Catch {}

    # Download the latest .msixbundle file of winget-cli from GitHub releases
    Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile "./$latestWingetMsixBundle"

    # Reset the ProgressPreference variable to Continue to allow progress bars
    Set-Variable ProgressPreference Continue

    # Show a progress message for the second download step
    Write-Progress -Activity 'Installing Winget CLI' -Status 'Downloading Step 2 of 2'

    Set-Variable ProgressPreference SilentlyContinue

    # Download the VCLibs .appx package from Microsoft
    Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx

    # Try to install the VCLibs .appx package, suppressing any error messages
    Try { Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx -ErrorAction Stop } Catch {}

    # Install the latest .msixbundle file of winget-cli
    Try { Add-AppxPackage $latestWingetMsixBundle -ErrorAction Stop} Catch {}
    Write-Progress -Activity 'Installing Winget CLI' -Status 'Install Complete' -Completed
    Set-Variable ProgressPreference Continue
        Write-Host "Fix Broken Winget (Credit to Sp5rky - https://gist.github.com/Sp5rky)"
})

$WPFTab2P2.Add_Click({
    Start-Process powershell.exe -Verb RunAs -ArgumentList "-command winget upgrade --all  | Out-Host" -Wait -WindowStyle Maximized
    
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Upgraded All "
    $Messageboxbody = ("Done")
    $MessageIcon = [System.Windows.MessageBoxImage]::Information

    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
})

$WPFTab2P3.Add_Click({
    $wingetuninstall = New-Object System.Collections.Generic.List[System.Object]
    If ( $WPFinstall7zip.IsChecked -eq $true ) { 
        $wingetuninstall.Add("7zip.7zip")
        $WPFinstall7zip.IsChecked = $false
    }
    If ( $WPFinstallpeazip.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Giorgiotani.Peazip")
        $WPFinstallpeazip.IsChecked = $false
    }
    If ( $WPFinstallfirefox.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Mozilla.Firefox")
        $WPFinstallfirefox.IsChecked = $false
    }
    If ( $WPFnstalledge.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Microsoft.Edge")
        $WPFnstalledge.IsChecked = $false
    }
    If ( $WPFinstallbrave.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Brave.Brave")
        $WPFinstallbrave.IsChecked = $false
    }
    If ( $WPFinstallchromium.IsChecked -eq $true ) { 
        $wingetuninstall.Add("eloston.ungoogled-chromium")
        $WPFinstallchromium.IsChecked = $false
    }
    If ( $WPFinstallchrome.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Google.Chrome")
        $WPFinstallchrome.IsChecked = $false
    }
    If ( $WPFinstallopera.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Opera.Opera")
        $WPFinstallopera.IsChecked = $false
    }
    If ( $WPFinstalllibrewolf.IsChecked -eq $true ) { 
        $wingetuninstall.Add("LibreWolf.LibreWolf")
        $WPFinstalllibrewolf.IsChecked = $false
    }
    If ( $WPFinstallwaterfox.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Waterfox.Waterfox")
        $WPFinstallwaterfox.IsChecked = $false
    }
    If ( $WPFinstalltor.IsChecked -eq $true ) { 
        $wingetuninstall.Add("TorProject.TorBrowser")
        $WPFinstalltor.IsChecked = $false
    }
    If ( $WPFinstallirfanview.IsChecked -eq $true ) { 
        $wingetuninstall.Add("IrfanSkiljan.IrfanView")
        $WPFinstallirfanview.IsChecked = $false
    }
    If ( $WPFinstallnomacs.IsChecked -eq $true ) { 
        $wingetuninstall.Add("nomacs.nomacs")
        $WPFinstallnomacs.IsChecked = $false
    }
    If ( $WPFinstallimageglass.IsChecked -eq $true ) { 
        $wingetuninstall.Add("DuongDieuPhap.ImageGlass")
        $WPFinstallimageglass.IsChecked = $false
    }
    If ( $WPFinstallphotoviewer.IsChecked -eq $true ) { 
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/enable_photo_viewer.reg" -Destination photo_viewer.reg
        ./photo_viewer.reg /quiet
        $WPFinstallphotoviewer.IsChecked = $false
    }
    If ( $WPFinstallklite.IsChecked -eq $true ) { 
        $wingetuninstall.Add("CodecGuide.K-LiteCodecPack.Mega")
        $WPFinstallklite.IsChecked = $false
    }
    If ( $WPFinstallvlc.IsChecked -eq $true ) { 
        $wingetuninstall.Add("VideoLAN.VLC")
        $WPFinstallvlc.IsChecked = $false
    }
    If ( $WPFinstallmpv.IsChecked -eq $true ) { 
        Start-Process powershell.exe -Verb RunAs -ArgumentList "Start-BitsTransfer -Source 'https://jztkft.dl.sourceforge.net/project/mpv.mirror/v0.34.1/v0.34.1.zip' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
        $WPFinstallmpv.IsChecked = $false
    }
    If ( $WPFinstallkodi.IsChecked -eq $true ) { 
        $wingetuninstall.Add("XBMCFoundation.Kodi")
        $WPFinstallkodi.IsChecked = $false
    }
    If ( $WPFinstallfoobar2000.IsChecked -eq $true ) { 
        $wingetuninstall.Add("PeterPawlowski.foobar2000")
        $WPFinstallfoobar2000.IsChecked = $false
    }
    If ( $WPFinstallmusicbee.IsChecked -eq $true ) { 
        $wingetuninstall.Add("MusicBee.MusicBee")
        $WPFinstallmusicbee.IsChecked = $false
    }
    If ( $WPFinstallcider.IsChecked -eq $true ) { 
        $wingetuninstall.Add("CiderCollective.Cider")
        $WPFinstallcider.IsChecked = $false
    }
    If ( $WPFinstallspotify.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Spotify.Spotify")
        $WPFinstallspotify.IsChecked = $false
    }
    If ( $WPFinstallvscode.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Microsoft.VisualStudioCode --source winget")
        $WPFinstallvscode.IsChecked = $false
    }
    If ( $WPFinstallvscodium.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Git.Git")
        $wingetuninstall.Add("VSCodium.VSCodium")
        $WPFinstallvscodium.IsChecked = $false
    }
    If ( $WPFinstallstudiocode.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Microsoft.VisualStudio.2022.Community")
        $WPFinstallstudiocode.IsChecked = $false
    }
    If ( $WPFinstallnotepadplusplus.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Notepad++.Notepad++")
        $WPFinstallnotepadplusplus.IsChecked = $false
    }
    If ( $WPFinstallobsidian.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Obsidian.Obsidian")
        $WPFinstallobsidian.IsChecked = $false
    }
    If ( $WPFinstalljoplin.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Joplin.Joplin")
        $WPFinstalljoplin.IsChecked = $false
    }
    If ( $WPFinstalllibreoffice.IsChecked -eq $true ) { 
        $wingetuninstall.Add("TheDocumentFoundation.LibreOffice")
        $WPFinstalllibreoffice.IsChecked = $false
    }
    If ( $WPFinstallonlyoffice.IsChecked -eq $true ) { 
        $wingetuninstall.Add("ONLYOFFICE.DesktopEditors")
        $WPFinstallonlyoffice.IsChecked = $false
    }
    If ( $WPFinstallcalibre.IsChecked -eq $true ) { 
        $wingetuninstall.Add("calibre.calibre")
        $WPFinstallcalibre.IsChecked = $false
    }
    If ( $WPFinstalladobereader.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Adobe.Acrobat.Reader.64-bit")
        $WPFinstalladobereader.IsChecked = $false
    }
    If ( $WPFinstallfoxit.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Foxit.FoxitReader")
        $WPFinstallfoxit.IsChecked = $false
    }
    If ( $WPFinstallpdf24.IsChecked -eq $true ) { 
        $wingetuninstall.Add("geeksoftwareGmbH.PDF24Creator")
        $WPFinstallpdf24.IsChecked = $false
    }
    If ( $WPFinstallsumatrapdf.IsChecked -eq $true ) { 
        $wingetuninstall.Add("SumatraPDF.SumatraPDF")
        $WPFinstallsumatrapdf.IsChecked = $false
    }
    If ( $WPFinstallaudacity.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Audacity.Audacity")
        $WPFinstallaudacity.IsChecked = $false
    }
    If ( $WPFinstallgimp.IsChecked -eq $true ) { 
        $wingetuninstall.Add("GIMP.GIMP")
        $WPFinstallgimp.IsChecked = $false
    }
    If ( $WPFinstallmkvtoolnix.IsChecked -eq $true ) { 
        $wingetuninstall.Add("MKVToolNix.MKVToolNix")
        $WPFinstallmkvtoolnix.IsChecked = $false
    }
    If ( $WPFinstallhandbrake.IsChecked -eq $true ) { 
        $wingetuninstall.Add("HandBrake.HandBrake")
        $wingetuninstall.Add("Microsoft.DotNet.Runtime.6")
        $wingetuninstall.Add("Microsoft.DotNet.DesktopRuntime.6")
        $WPFinstallhandbrake.IsChecked = $false
    }
    If ( $WPFinstallkdenlive.IsChecked -eq $true ) { 
        $wingetuninstall.Add("KDE.Kdenlive")
        $WPFinstallkdenlive.IsChecked = $false
    }
    If ( $WPFinstallsteam.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Valve.Steam")
        $WPFinstallsteam.IsChecked = $false
    }
    If ( $WPFinstallretroarch.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Libretro.RetroArch")
        $WPFinstallretroarch.IsChecked = $false
    }
    If ( $WPFinstallbitwarden.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Bitwarden.Bitwarden")
        $WPFinstallbitwarden.IsChecked = $false
    }
    If ( $WPFinstallbitdefender.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Bitdefender.Bitdefender")
        $WPFinstallbitdefender.IsChecked = $false
    }
    If ( $WPFinstallmalwarebytes.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Malwarebytes.Malwarebytes")
        $WPFinstallmalwarebytes.IsChecked = $false
    }
    If ( $WPFinstallthunderbird.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Mozilla.Thunderbird")
        $WPFinstallthunderbird.IsChecked = $false
    }
    If ( $WPFinstalltelegram.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Telegram.TelegramDesktop")
        $WPFinstalltelegram.IsChecked = $false
    }
    If ( $WPFinstallwhatsapp.IsChecked -eq $true ) { 
        $wingetuninstall.Add("WhatsApp.WhatsApp.Beta")
        $WPFinstallwhatsapp.IsChecked = $false
    }
    If ( $WPFinstalldiscord.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Discord.Discord")
        $WPFinstalldiscord.IsChecked = $false
    }
    If ( $WPFinstallrustdesk.IsChecked -eq $true ) { 
        $wingetuninstall.Add("RustDesk.RustDesk")
        $WPFinstallrustdesk.IsChecked = $false
    }
    If ( $WPFinstallqbit.IsChecked -eq $true ) { 
        $wingetuninstall.Add("qBittorrent.qBittorrent")
        $WPFinstallqbit.IsChecked = $false
    }
    If ( $WPFinstallidm.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Tonec.InternetDownloadManager")
        $WPFinstallidm.IsChecked = $false
    }
    If ( $WPFinstallxdm.IsChecked -eq $true ) { 
        $wingetuninstall.Add("subhra74.XtremeDownloadManager")
        $WPFinstallxdm.IsChecked = $false
    }
    If ( $WPFinstallhex.IsChecked -eq $true ) { 
        $wingetuninstall.Add("HexChat.HexChat")
        $WPFinstallhex.IsChecked = $false
    }
    If ( $WPFinstallautohotkey.IsChecked -eq $true ) { 
        $wingetuninstall.Add("Lexikos.AutoHotkey")
        $WPFinstallautohotkey.IsChecked = $false
    }
    If ( $WPFinstalleverything.IsChecked -eq $true ) { 
        $wingetuninstall.Add("voidtools.Everything --source winget")
        $WPFinstalleverything.IsChecked = $false
    }
    If ( $WPFinstallkdeconnect.IsChecked -eq $true ) { 
        $wingetuninstall.Add("KDE.KDEConnect")
        $WPFinstallkdeconnect.IsChecked = $false
    }
    If ( $WPFinstallputty.IsChecked -eq $true ) { 
        $wingetuninstall.Add("PuTTY.PuTTY")
        $WPFinstallputty.IsChecked = $false
    }
    If ( $WPFinstallobsstudio.IsChecked -eq $true ) { 
        $wingetuninstall.Add("OBSProject.OBSStudio")
        $WPFinstallobsstudio.IsChecked = $false
    }
    If ( $WPFinstallr21.IsChecked -eq $true ) {
        $wingetuninstall.Add("RevoUninstaller.RevoUninstaller")
        $WPFinstallr21.IsChecked = $false
    }

    If ( $WPFinstallr18.IsChecked -eq $true ) {
        $wingetuninstall.Add("BleachBit.BleachBit")
        $WPFinstallr18.IsChecked = $false
    }
            If ( $WPFr1.IsChecked -eq $true ) {
    $wingetuninstall.Add("CPUID.CPU-Z")
    $WPFr1.IsChecked = $false
    }
        If ( $WPFr2.IsChecked -eq $true ) {
    $wingetuninstall.Add("TechPowerUp.GPU-Z")
    $WPFr2.IsChecked = $false
    }
        If ( $WPFr3.IsChecked -eq $true ) {
    $wingetuninstall.Add("CrystalDewWorld.CrystalDiskInfo")
    $WPFr3.IsChecked = $false
    }
        If ( $WPFr4.IsChecked -eq $true ) {
    $wingetuninstall.Add("CrystalDewWorld.CrystalDiskMark")
    $WPFr4.IsChecked = $false
    }
        If ( $WPFr5.IsChecked -eq $true ) {
    $wingetuninstall.Add("REALiX.HWiNFO")
    $WPFr5.IsChecked = $false
    }
        If ( $WPFr7.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://download.sysinternals.com/files/SysinternalsSuite.zip" -Destination "C:\Users\Public\Desktop"
    $WPFr7.IsChecked = $false
    }
        If ( $WPFr8.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://download.sysinternals.com/files/ProcessExplorer.zip" -Destination "C:\Users\Public\Desktop"
    $WPFr8.IsChecked = $false
    }
        If ( $WPFr9.IsChecked -eq $true ) {
    start "https://www.techpowerup.com/download/counter-control/"
    $WPFr9.IsChecked = $false
    }
        If ( $WPFr10.IsChecked -eq $true ) {
    $wingetuninstall.Add("ALCPU.CoreTemp")
    $WPFr10.IsChecked = $false
    }
        If ( $WPFr11.IsChecked -eq $true ) {
    $wingetuninstall.Add("Piriform.Speccy")
    $WPFr11.IsChecked = $false
    }
        If ( $WPFr12.IsChecked -eq $true ) {
    $wingetuninstall.Add("KCSoftwares.SUMo")
    $WPFr12.IsChecked = $false
    }
        If ( $WPFr13.IsChecked -eq $true ) {
    Start-Process powershell.exe -ArgumentList "Start-BitsTransfer -Source 'https://www.ocbase.com/download/edition:Personal' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
    $WPFr13.IsChecked = $false
    }
        If ( $WPFr14.IsChecked -eq $true ) {
    $wingetuninstall.Add("FinalWire.AIDA64.Extreme")
    $WPFr14.IsChecked = $false
    }
        If ( $WPFr15.IsChecked -eq $true ) {
    start "https://www.techpowerup.com/download/techpowerup-throttlestop/"
    $WPFr15.IsChecked = $false
    }
        If ( $WPFr16.IsChecked -eq $true ) {
    Start-Process powershell.exe -ArgumentList "Start-BitsTransfer -Source 'https://download.sysinternals.com/files/Autoruns.zip' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
    $WPFr16.IsChecked = $false
    }
        If ( $WPFr17.IsChecked -eq $true ) {
    $wingetuninstall.Add("WiresharkFoundation.Wireshark")
    $WPFr17.IsChecked = $false
    }
    If ( $WPFinstallr18.IsChecked -eq $true ) {
    $wingetuninstall.Add("BleachBit.BleachBit")
    $WPFinstallr18.IsChecked = $false
    }
    If ( $WPFinstallr21.IsChecked -eq $true ) {
    $wingetuninstall.Add("RevoUninstaller.RevoUninstaller")
    $WPFinstallr21.IsChecked = $false
    }
        If ( $WPFr19.IsChecked -eq $true ) {
    $wingetuninstall.Add("Glarysoft.GlaryUtilities")
    $WPFr19.IsChecked = $false
    }
        If ( $WPFr23.IsChecked -eq $true ) {
    $wingetuninstall.Add("Microsoft.dotNetFramework")
    $WPFr23.IsChecked = $false
    }
        If ( $WPFr24.IsChecked -eq $true ) {
    $wingetuninstall.Add("Microsoft.VC++2017Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2017Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2015Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2015Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2015-2022Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2015-2022Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2015-2019Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2015-2019Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2013Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2013Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2012Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2012Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2010Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2010Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2008Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2008Redist-x64")
    $wingetuninstall.Add("Microsoft.VC++2005Redist-x86")
    $wingetuninstall.Add("Microsoft.VC++2005Redist-x64")
    $WPFr24.IsChecked = $false
    }



    $wingetuninstall.ToArray()
    $wingetResult = New-Object System.Collections.Generic.List[System.Object]
    foreach ( $node in $wingetuninstall )
    {
        Start-Process powershell.exe -Verb RunAs -ArgumentList "-command winget uninstall -e --accept-source-agreements --accept-package-agreements --silent $node | Out-Host" -Wait -WindowStyle Maximized
        $wingetResult.Add("$node`n")
    }
    $wingetResult.ToArray()
    $wingetResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Uninstalled "
    $Messageboxbody = ($wingetResult)
    $MessageIcon = [System.Windows.MessageBoxImage]::Information

    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)

})

$WPFTab2P4.Add_Click({
    $wingetinstall = New-Object System.Collections.Generic.List[System.Object]
    If ( $WPFinstall7zip.IsChecked -eq $true ) { 
        $wingetinstall.Add("7zip.7zip")
        $WPFinstall7zip.IsChecked = $false
    }
    If ( $WPFinstallpeazip.IsChecked -eq $true ) { 
        $wingetinstall.Add("Giorgiotani.Peazip")
        $WPFinstallpeazip.IsChecked = $false
    }
    If ( $WPFinstallfirefox.IsChecked -eq $true ) { 
        $wingetinstall.Add("Mozilla.Firefox")
        $WPFinstallfirefox.IsChecked = $false
    }
    If ( $WPFnstalledge.IsChecked -eq $true ) { 
        $wingetinstall.Add("Microsoft.Edge")
        $WPFnstalledge.IsChecked = $false
    }
    If ( $WPFinstallbrave.IsChecked -eq $true ) { 
        $wingetinstall.Add("Brave.Brave")
        $WPFinstallbrave.IsChecked = $false
    }
    If ( $WPFinstallchromium.IsChecked -eq $true ) { 
        $wingetinstall.Add("eloston.ungoogled-chromium")
        $WPFinstallchromium.IsChecked = $false
    }
    If ( $WPFinstallchrome.IsChecked -eq $true ) { 
        $wingetinstall.Add("Google.Chrome")
        $WPFinstallchrome.IsChecked = $false
    }
    If ( $WPFinstallopera.IsChecked -eq $true ) { 
        $wingetinstall.Add("Opera.Opera")
        $WPFinstallopera.IsChecked = $false
    }
    If ( $WPFinstalllibrewolf.IsChecked -eq $true ) { 
        $wingetinstall.Add("LibreWolf.LibreWolf")
        $WPFinstalllibrewolf.IsChecked = $false
    }
    If ( $WPFinstallwaterfox.IsChecked -eq $true ) { 
        $wingetinstall.Add("Waterfox.Waterfox")
        $WPFinstallwaterfox.IsChecked = $false
    }
    If ( $WPFinstalltor.IsChecked -eq $true ) { 
        $wingetinstall.Add("TorProject.TorBrowser")
        $WPFinstalltor.IsChecked = $false
    }
    If ( $WPFinstallirfanview.IsChecked -eq $true ) { 
        $wingetinstall.Add("IrfanSkiljan.IrfanView")
        $WPFinstallirfanview.IsChecked = $false
    }
    If ( $WPFinstallnomacs.IsChecked -eq $true ) { 
        $wingetinstall.Add("nomacs.nomacs")
        $WPFinstallnomacs.IsChecked = $false
    }
    If ( $WPFinstallimageglass.IsChecked -eq $true ) { 
        $wingetinstall.Add("DuongDieuPhap.ImageGlass")
        $WPFinstallimageglass.IsChecked = $false
    }
    If ( $WPFinstallphotoviewer.IsChecked -eq $true ) { 
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/enable_photo_viewer.reg" -Destination photo_viewer.reg
        ./photo_viewer.reg /quiet
        $WPFinstallphotoviewer.IsChecked = $false
    }
    If ( $WPFinstallklite.IsChecked -eq $true ) { 
        $wingetinstall.Add("CodecGuide.K-LiteCodecPack.Mega")
        $WPFinstallklite.IsChecked = $false
    }
    If ( $WPFinstallvlc.IsChecked -eq $true ) { 
        $wingetinstall.Add("VideoLAN.VLC")
        $WPFinstallvlc.IsChecked = $false
    }
    If ( $WPFinstallmpv.IsChecked -eq $true ) { 
        Start-Process powershell.exe -Verb RunAs -ArgumentList "Start-BitsTransfer -Source 'https://jztkft.dl.sourceforge.net/project/mpv.mirror/v0.34.1/v0.34.1.zip' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
        $WPFinstallmpv.IsChecked = $false
    }
    If ( $WPFinstallkodi.IsChecked -eq $true ) { 
        $wingetinstall.Add("XBMCFoundation.Kodi")
        $WPFinstallkodi.IsChecked = $false
    }
    If ( $WPFinstallfoobar2000.IsChecked -eq $true ) { 
        $wingetinstall.Add("PeterPawlowski.foobar2000")
        $WPFinstallfoobar2000.IsChecked = $false
    }
    If ( $WPFinstallmusicbee.IsChecked -eq $true ) { 
        $wingetinstall.Add("MusicBee.MusicBee")
        $WPFinstallmusicbee.IsChecked = $false
    }
    If ( $WPFinstallcider.IsChecked -eq $true ) { 
        $wingetinstall.Add("CiderCollective.Cider")
        $WPFinstallcider.IsChecked = $false
    }
    If ( $WPFinstallspotify.IsChecked -eq $true ) { 
        $wingetinstall.Add("Spotify.Spotify")
        $WPFinstallspotify.IsChecked = $false
    }
    If ( $WPFinstallvscode.IsChecked -eq $true ) { 
        $wingetinstall.Add("Microsoft.VisualStudioCode --source winget")
        $WPFinstallvscode.IsChecked = $false
    }
    If ( $WPFinstallvscodium.IsChecked -eq $true ) { 
        $wingetinstall.Add("Git.Git")
        $wingetinstall.Add("VSCodium.VSCodium")
        $WPFinstallvscodium.IsChecked = $false
    }
    If ( $WPFinstallstudiocode.IsChecked -eq $true ) { 
        $wingetinstall.Add("Microsoft.VisualStudio.2022.Community")
        $WPFinstallstudiocode.IsChecked = $false
    }
    If ( $WPFinstallnotepadplusplus.IsChecked -eq $true ) { 
        $wingetinstall.Add("Notepad++.Notepad++")
        $WPFinstallnotepadplusplus.IsChecked = $false
    }
    If ( $WPFinstallobsidian.IsChecked -eq $true ) { 
        $wingetinstall.Add("Obsidian.Obsidian")
        $WPFinstallobsidian.IsChecked = $false
    }
    If ( $WPFinstalljoplin.IsChecked -eq $true ) { 
        $wingetinstall.Add("Joplin.Joplin")
        $WPFinstalljoplin.IsChecked = $false
    }
    If ( $WPFinstalllibreoffice.IsChecked -eq $true ) { 
        $wingetinstall.Add("TheDocumentFoundation.LibreOffice")
        $WPFinstalllibreoffice.IsChecked = $false
    }
    If ( $WPFinstallonlyoffice.IsChecked -eq $true ) { 
        $wingetinstall.Add("ONLYOFFICE.DesktopEditors")
        $WPFinstallonlyoffice.IsChecked = $false
    }
    If ( $WPFinstallcalibre.IsChecked -eq $true ) { 
        $wingetinstall.Add("calibre.calibre")
        $WPFinstallcalibre.IsChecked = $false
    }
    If ( $WPFinstalladobereader.IsChecked -eq $true ) { 
        $wingetinstall.Add("Adobe.Acrobat.Reader.64-bit")
        $WPFinstalladobereader.IsChecked = $false
    }
    If ( $WPFinstallfoxit.IsChecked -eq $true ) { 
        $wingetinstall.Add("Foxit.FoxitReader")
        $WPFinstallfoxit.IsChecked = $false
    }
    If ( $WPFinstallpdf24.IsChecked -eq $true ) { 
        $wingetinstall.Add("geeksoftwareGmbH.PDF24Creator")
        $WPFinstallpdf24.IsChecked = $false
    }
    If ( $WPFinstallsumatrapdf.IsChecked -eq $true ) { 
        $wingetinstall.Add("SumatraPDF.SumatraPDF")
        $WPFinstallsumatrapdf.IsChecked = $false
    }
    If ( $WPFinstallaudacity.IsChecked -eq $true ) { 
        $wingetinstall.Add("Audacity.Audacity")
        $WPFinstallaudacity.IsChecked = $false
    }
    If ( $WPFinstallgimp.IsChecked -eq $true ) { 
        $wingetinstall.Add("GIMP.GIMP")
        $WPFinstallgimp.IsChecked = $false
    }
    If ( $WPFinstallmkvtoolnix.IsChecked -eq $true ) { 
        $wingetinstall.Add("MKVToolNix.MKVToolNix")
        $WPFinstallmkvtoolnix.IsChecked = $false
    }
    If ( $WPFinstallhandbrake.IsChecked -eq $true ) { 
        $wingetinstall.Add("HandBrake.HandBrake")
        $wingetinstall.Add("Microsoft.DotNet.Runtime.6")
        $wingetinstall.Add("Microsoft.DotNet.DesktopRuntime.6")
        $WPFinstallhandbrake.IsChecked = $false
    }
    If ( $WPFinstallkdenlive.IsChecked -eq $true ) { 
        $wingetinstall.Add("KDE.Kdenlive")
        $WPFinstallkdenlive.IsChecked = $false
    }
    If ( $WPFinstallsteam.IsChecked -eq $true ) { 
        $wingetinstall.Add("Valve.Steam")
        $WPFinstallsteam.IsChecked = $false
    }
    If ( $WPFinstallretroarch.IsChecked -eq $true ) { 
        $wingetinstall.Add("Libretro.RetroArch")
        $WPFinstallretroarch.IsChecked = $false
    }
    If ( $WPFinstallbitwarden.IsChecked -eq $true ) { 
        $wingetinstall.Add("Bitwarden.Bitwarden")
        $WPFinstallbitwarden.IsChecked = $false
    }
    If ( $WPFinstallbitdefender.IsChecked -eq $true ) { 
        $wingetinstall.Add("Bitdefender.Bitdefender")
        $WPFinstallbitdefender.IsChecked = $false
    }
    If ( $WPFinstallmalwarebytes.IsChecked -eq $true ) { 
        $wingetinstall.Add("Malwarebytes.Malwarebytes")
        $WPFinstallmalwarebytes.IsChecked = $false
    }
    If ( $WPFinstallthunderbird.IsChecked -eq $true ) { 
        $wingetinstall.Add("Mozilla.Thunderbird")
        $WPFinstallthunderbird.IsChecked = $false
    }
    If ( $WPFinstalltelegram.IsChecked -eq $true ) { 
        $wingetinstall.Add("Telegram.TelegramDesktop")
        $WPFinstalltelegram.IsChecked = $false
    }
    If ( $WPFinstallwhatsapp.IsChecked -eq $true ) { 
        $wingetinstall.Add("WhatsApp.WhatsApp.Beta")
        $WPFinstallwhatsapp.IsChecked = $false
    }
    If ( $WPFinstalldiscord.IsChecked -eq $true ) { 
        $wingetinstall.Add("Discord.Discord")
        $WPFinstalldiscord.IsChecked = $false
    }
    If ( $WPFinstallrustdesk.IsChecked -eq $true ) { 
        $wingetinstall.Add("RustDesk.RustDesk")
        $WPFinstallrustdesk.IsChecked = $false
    }
    If ( $WPFinstallqbit.IsChecked -eq $true ) { 
        $wingetinstall.Add("qBittorrent.qBittorrent")
        $WPFinstallqbit.IsChecked = $false
    }
    If ( $WPFinstallidm.IsChecked -eq $true ) { 
        $wingetinstall.Add("Tonec.InternetDownloadManager")
        $WPFinstallidm.IsChecked = $false
    }
    If ( $WPFinstallxdm.IsChecked -eq $true ) { 
        $wingetinstall.Add("subhra74.XtremeDownloadManager")
        $WPFinstallxdm.IsChecked = $false
    }
    If ( $WPFinstallhex.IsChecked -eq $true ) { 
        $wingetinstall.Add("HexChat.HexChat")
        $WPFinstallhex.IsChecked = $false
    }
    If ( $WPFinstallautohotkey.IsChecked -eq $true ) { 
        $wingetinstall.Add("Lexikos.AutoHotkey")
        $WPFinstallautohotkey.IsChecked = $false
    }
    If ( $WPFinstalleverything.IsChecked -eq $true ) { 
        $wingetinstall.Add("voidtools.Everything --source winget")
        $WPFinstalleverything.IsChecked = $false
    }
    If ( $WPFinstallkdeconnect.IsChecked -eq $true ) { 
        $wingetinstall.Add("KDE.KDEConnect")
        $WPFinstallkdeconnect.IsChecked = $false
    }
    If ( $WPFinstallputty.IsChecked -eq $true ) { 
        $wingetinstall.Add("PuTTY.PuTTY")
        $WPFinstallputty.IsChecked = $false
    }
    If ( $WPFinstallobsstudio.IsChecked -eq $true ) { 
        $wingetinstall.Add("OBSProject.OBSStudio")
        $WPFinstallobsstudio.IsChecked = $false
    }
        If ( $WPFr1.IsChecked -eq $true ) {
    $wingetinstall.Add("CPUID.CPU-Z")
    $WPFr1.IsChecked = $false
    }
        If ( $WPFr2.IsChecked -eq $true ) {
    $wingetinstall.Add("TechPowerUp.GPU-Z")
    $WPFr2.IsChecked = $false
    }
        If ( $WPFr3.IsChecked -eq $true ) {
    $wingetinstall.Add("CrystalDewWorld.CrystalDiskInfo")
    $WPFr3.IsChecked = $false
    }
        If ( $WPFr4.IsChecked -eq $true ) {
    $wingetinstall.Add("CrystalDewWorld.CrystalDiskMark")
    $WPFr4.IsChecked = $false
    }
        If ( $WPFr5.IsChecked -eq $true ) {
    $wingetinstall.Add("REALiX.HWiNFO")
    $WPFr5.IsChecked = $false
    }
        If ( $WPFr7.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://download.sysinternals.com/files/SysinternalsSuite.zip" -Destination "C:\Users\Public\Desktop"
    $WPFr7.IsChecked = $false
    }
        If ( $WPFr8.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://download.sysinternals.com/files/ProcessExplorer.zip" -Destination "C:\Users\Public\Desktop"
    $WPFr8.IsChecked = $false
    }
        If ( $WPFr9.IsChecked -eq $true ) {
    start "https://www.techpowerup.com/download/counter-control/"
    $WPFr9.IsChecked = $false
    }
        If ( $WPFr10.IsChecked -eq $true ) {
    $wingetinstall.Add("ALCPU.CoreTemp")
    $WPFr10.IsChecked = $false
    }
        If ( $WPFr11.IsChecked -eq $true ) {
    $wingetinstall.Add("Piriform.Speccy")
    $WPFr11.IsChecked = $false
    }
        If ( $WPFr12.IsChecked -eq $true ) {
    $wingetinstall.Add("KCSoftwares.SUMo")
    $WPFr12.IsChecked = $false
    }
        If ( $WPFr13.IsChecked -eq $true ) {
    Start-Process powershell.exe -ArgumentList "Start-BitsTransfer -Source 'https://www.ocbase.com/download/edition:Personal' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
    $WPFr13.IsChecked = $false
    }
        If ( $WPFr14.IsChecked -eq $true ) {
    $wingetinstall.Add("FinalWire.AIDA64.Extreme")
    $WPFr14.IsChecked = $false
    }
        If ( $WPFr15.IsChecked -eq $true ) {
    start "https://www.techpowerup.com/download/techpowerup-throttlestop/"
    $WPFr15.IsChecked = $false
    }
        If ( $WPFr16.IsChecked -eq $true ) {
    Start-Process powershell.exe -ArgumentList "Start-BitsTransfer -Source 'https://download.sysinternals.com/files/Autoruns.zip' -Destination 'C:\Users\Public\Desktop'" -Wait -WindowStyle Maximized
    $WPFr16.IsChecked = $false
    }
        If ( $WPFr17.IsChecked -eq $true ) {
    $wingetinstall.Add("WiresharkFoundation.Wireshark")
    $WPFr17.IsChecked = $false
    }
    If ( $WPFinstallr18.IsChecked -eq $true ) {
    $wingetinstall.Add("BleachBit.BleachBit")
    $WPFinstallr18.IsChecked = $false
    }
    If ( $WPFinstallr21.IsChecked -eq $true ) {
    $wingetinstall.Add("RevoUninstaller.RevoUninstaller")
    $WPFinstallr21.IsChecked = $false
    }
        If ( $WPFr19.IsChecked -eq $true ) {
    $wingetinstall.Add("Glarysoft.GlaryUtilities")
    $WPFr19.IsChecked = $false
    }
        If ( $WPFr23.IsChecked -eq $true ) {
    $wingetinstall.Add("Microsoft.dotNetFramework")
    $WPFr23.IsChecked = $false
    }
        If ( $WPFr24.IsChecked -eq $true ) {
    $wingetinstall.Add("Microsoft.VC++2017Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2017Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2015Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2015Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2015-2022Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2015-2022Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2015-2019Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2015-2019Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2013Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2013Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2012Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2012Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2010Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2010Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2008Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2008Redist-x64")
    $wingetinstall.Add("Microsoft.VC++2005Redist-x86")
    $wingetinstall.Add("Microsoft.VC++2005Redist-x64")
    $WPFr24.IsChecked = $false
    }

    $wingetinstall.ToArray()
    $wingetResult = New-Object System.Collections.Generic.List[System.Object]
    foreach ( $node in $wingetinstall )
    {
        Start-Process powershell.exe -Verb RunAs -ArgumentList "-command winget install -e --accept-source-agreements --accept-package-agreements --silent $node | Out-Host" -Wait -WindowStyle Maximized
        $wingetResult.Add("$node`n")
    }
    $wingetResult.ToArray()
    $wingetResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Installed "
    $Messageboxbody = ($wingetResult)
    $MessageIcon = [System.Windows.MessageBoxImage]::Information

    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)

})

##########################################
############## Bloatware #################
##########################################

$WPFTab3P1.Add_Click({
    $WPFbcalculator.IsChecked = $true
    $WPFbphotos.IsChecked = $true
    $WPFbcanonical.IsChecked = $true
    $WPFbxboxtcui.IsChecked = $true
    $WPFbxboxapp.IsChecked = $true
    $WPFbxboxgamingoverlay.IsChecked = $true
    $WPFbxboxspeech.IsChecked = $true
    $WPFbstickynotes.IsChecked = $true
    $WPFbmspaint.IsChecked = $true
    $WPFbcamera.IsChecked = $true
    $WPFbheifi.IsChecked = $true
    $WPFbscreensketch.IsChecked = $true
    $WPFbvp9video.IsChecked = $true
    $WPFbwebmedia.IsChecked = $true
    $WPFbwebimage.IsChecked = $true
    $WPFbwindsynth.IsChecked = $true
    $WPFbmidiberry.IsChecked = $true
    $WPFbslack.IsChecked = $true
    $WPFbmixedreality.IsChecked = $true
    $WPFbppiprojection.IsChecked = $true
    $WPFbbingnews.IsChecked = $true
    $WPFbgethelp.IsChecked = $true
    $WPFbgetstarted.IsChecked = $true
    $WPFbmessaging.IsChecked = $true
    $WPFb3dviewer.IsChecked = $true
    $WPFbofficehub.IsChecked = $true
    $WPFbsolitaire.IsChecked = $true
    $WPFbnetworkspeedtest.IsChecked = $true
    $WPFbnews.IsChecked = $true
    $WPFbofficelens.IsChecked = $true
    $WPFbonenote.IsChecked = $true
    $WPFbofficesway.IsChecked = $true
    $WPFboneconnect.IsChecked = $true
    $WPFbpeople.IsChecked = $true
    $WPFbprint3d.IsChecked = $true
    $WPFbremotedesktop.IsChecked = $true
    $WPFbskypeapp.IsChecked = $true
    $WPFbofficetodo.IsChecked = $true
    $WPFbwhiteboard.IsChecked = $true
    $WPFbwindowsalarm.IsChecked = $true
    $WPFbwindowscommunications.IsChecked = $true
    $WPFbfeedback.IsChecked = $true
    $WPFbmaps.IsChecked = $true
    $WPFbsound.IsChecked = $true
    $WPFbzune.IsChecked = $true
    $WPFbxboxidentity.IsChecked = $false
    $WPFbzunevideo.IsChecked = $true
    $WPFbeclipse.IsChecked = $true
    $WPFblanguage.IsChecked = $true
    $WPFbadobe.IsChecked = $true
    $WPFbduolingo.IsChecked = $true
    $WPFbpandoramedia.IsChecked = $true
    $WPFbcandycrush.IsChecked = $true
    $WPFbbubblewitch.IsChecked = $true
    $WPFbwunderlist.IsChecked = $true
    $WPFbflipboard.IsChecked = $true
    $WPFbtwitter.IsChecked = $true
    $WPFbfacebook.IsChecked = $true
    $WPFbspotify.IsChecked = $true
    $WPFbminecraft.IsChecked = $true
    $WPFbroyalrevolt.IsChecked = $true
    $WPFbsway.IsChecked = $true
    $WPFbdolby.IsChecked = $true
    $WPFbadvertising.IsChecked = $true
    $WPFbwallet.IsChecked = $true
    $WPFbyourphone.IsChecked = $true
    $WPFbedge.IsChecked = $true
    $WPFbwinget.IsChecked = $false
    $WPFbstore.IsChecked = $false
    $WPFbui.IsChecked = $false
    $WPFbvclibs.IsChecked = $false
    $WPFbnet.IsChecked = $false
})

$WPFTab3P2.Add_Click({
    $global:Bloatware = @(
        "Microsoft.Windows.Photos"
        "CanonicalGroupLimited.UbuntuonWindows"
        "Microsoft.Xbox.TCUI"
        "Microsoft.XboxApp"
        "Microsoft.XboxGameOverlay"
        "Microsoft.XboxGamingOverlay"
        "Microsoft.XboxSpeechToTextOverlay"
        "Microsoft.MicrosoftStickyNotes"
        "Microsoft.MSPaint"
        "Microsoft.WindowsCamera"
        "Microsoft.ScreenSketch"
        "Microsoft.VP9VideoExtensions"
        "Microsoft.WebMediaExtensions"
        "Microsoft.WebpImageExtension"
        "WindSynthBerry"
        "MIDIBerry"
        "Slack"
        "Microsoft.MixedReality.Portal"
        "Microsoft.PPIProjection"
        "Microsoft.BingNews"
        "Microsoft.GetHelp"
        "Microsoft.Getstarted"
        "Microsoft.Messaging"
        "Microsoft.Microsoft3DViewer"
        "Microsoft.MicrosoftOfficeHub"
        "Microsoft.MicrosoftSolitaireCollection"
        "Microsoft.NetworkSpeedTest"
        "Microsoft.News"
        "Microsoft.Office.Lens"
        "Microsoft.Office.OneNote"
        "Microsoft.Office.Sway"
        "Microsoft.OneConnect"
        "Microsoft.People"
        "Microsoft.Print3D"
        "Microsoft.RemoteDesktop"
        "Microsoft.SkypeApp"
        "Microsoft.Office.Todo.List"
        "Microsoft.Whiteboard"
        "Microsoft.WindowsAlarms"
        "microsoft.windowscommunicationsapps"
        "Microsoft.WindowsFeedbackHub"
        "Microsoft.WindowsMaps"
        "Microsoft.WindowsSoundRecorder"
        "Microsoft.Xbox.TCUI"
        "Microsoft.XboxApp"
        "Microsoft.XboxGameOverlay"
        "Microsoft.XboxGamingOverlay"
        "Microsoft.XboxSpeechToTextOverlay"
        "Microsoft.ZuneMusic"
        "Microsoft.ZuneVideo"
        "EclipseManager"
        "ActiproSoftwareLLC"
        "AdobeSystemsIncorporated.AdobePhotoshopExpress"
        "Duolingo-LearnLanguagesforFree"
        "PandoraMediaInc"
        "CandyCrush"
        "BubbleWitch3Saga"
        "Wunderlist"
        "Flipboard"
        "Twitter"
        "Facebook"
        "Spotify"
        "Minecraft"
        "Royal Revolt"
        "Sway"
        "Dolby"
        "Microsoft.Advertising.Xaml"
        "Microsoft.Wallet"
        "Microsoft.YourPhone"
        "Microsoft.LanguageExperiencePackit-IT"
        "Microsoft.MicrosoftEdge.Stable"
        "MicrosoftCorporationII.QuickAssist"
        "MicrosoftWindows.Client.WebExperience"
        "Clipchamp.Clipchamp"
        "Microsoft.RawImageExtension"
        "Microsoft.Todos"
        "Microsoft.PowerAutomateDesktop"
    )

    $global:WhiteListedApps = @(
        "Microsoft.HEIFImageExtension"
        "Microsoft.HEVCVideoExtension"
        "Microsoft.Services.Store.Engagement"
        "Microsoft.Services.Store.Engagement"
        "Microsoft.StorePurchaseApp"
        "Microsoft.WindowsStore"
        "NVIDIACorp.NVIDIAControlPanel"
        "\.NET"
        "Microsoft.DesktopAppInstaller"
        "Microsoft.Windows.ShellExperienceHost"
        "Microsoft.VCLibs*"
        "Microsoft.XboxIdentityProvider"
        "Microsoft.WindowsCalculator"
        "PythonSoftwareFoundation.Python.3.10"
        "5319275A.WhatsAppDesktop"
        "Microsoft.DesktopAppInstaller"
        "Microsoft.Windows.ShellExperienceHost"
        "Microsoft.UI.Xaml.2.8"
        "Microsoft.UI.Xaml.2.8"
        "Microsoft.UI.Xaml.2.4"
        "Microsoft.UI.Xaml.2.4"
        "Microsoft.UI.Xaml.2.0"
        "Microsoft.UI.Xaml.2.7"
        "Microsoft.UI.Xaml.2.7"
        "Microsoft.WindowsAppRuntime.1.2"
        "Microsoft.WindowsAppRuntime.1.2"
        "Microsoft.WindowsAppRuntime.1.3-preview1"
        "Microsoft.WindowsAppRuntime.1.3-preview1"
        "Microsoft.Advertising.Xaml"
        "Microsoft.LanguageExperiencePackit-IT"
        )

    #NonRemovable Apps that where getting attempted and the system would reject the uninstall, speeds up debloat and prevents 'initalizing' overlay when removing apps
    $NonRemovables = Get-AppxPackage -AllUsers | Where-Object { $_.NonRemovable -eq $true } | ForEach { $_.Name }
    $NonRemovables += Get-AppxPackage | Where-Object { $_.NonRemovable -eq $true } | ForEach { $_.Name }
    $NonRemovables += Get-AppxProvisionedPackage -Online | Where-Object { $_.NonRemovable -eq $true } | ForEach { $_.DisplayName }
    $NonRemovables = $NonRemovables | Sort-Object -Unique

    if ($NonRemovables -eq $null ) {
        # the .NonRemovable property doesn't exist until version 18xx. Use a hard-coded list instead.
        #WARNING: only use exact names here - no short names or wildcards
        $NonRemovables = @(
            "1527c705-839a-4832-9118-54d4Bd6a0c89"
            "c5e2524a-ea46-4f67-841f-6a9465d9d515"
            "E2A4F912-2574-4A75-9BB0-0D023378592B"
            "F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE"
            "InputApp"
            "Microsoft.AAD.BrokerPlugin"
            "Microsoft.AccountsControl"
            "Microsoft.BioEnrollment"
            "Microsoft.CredDialogHost"
            "Microsoft.ECApp"
            "Microsoft.LockApp"
            "Microsoft.MicrosoftEdgeDevToolsClient"
            "Microsoft.MicrosoftEdge"
            "Microsoft.PPIProjection"
            "Microsoft.Win32WebViewHost"
            "Microsoft.Windows.Apprep.ChxApp"
            "Microsoft.Windows.AssignedAccessLockApp"
            "Microsoft.Windows.CapturePicker"
            "Microsoft.Windows.CloudExperienceHost"
            "Microsoft.Windows.ContentDeliveryManager"
            "Microsoft.Windows.Cortana"
            "Microsoft.Windows.HolographicFirstRun"
            "Microsoft.Windows.NarratorQuickStart"
            "Microsoft.Windows.OOBENetworkCaptivePortal"
            "Microsoft.Windows.OOBENetworkConnectionFlow"
            "Microsoft.Windows.ParentalControls"
            "Microsoft.Windows.PeopleExperienceHost"
            "Microsoft.Windows.PinningConfirmationDialog"
            "Microsoft.Windows.SecHealthUI"
            "Microsoft.Windows.SecondaryTileExperience"
            "Microsoft.Windows.SecureAssessmentBrowser"
            "Microsoft.Windows.ShellExperienceHost"
            "Microsoft.Windows.XGpuEjectDialog"
            "Microsoft.XboxGameCallableUI"
            "Windows.CBSPreview"
            "windows.immersivecontrolpanel"
            "Windows.PrintDialog"
            "Microsoft.Services.Store.Engagement"
            "Nvidia"
            "Microsoft.WindowsStore"
            "Microsoft.StorePurchaseApp"
            "NVIDIACorp.NVIDIAControlPanel"
            "40459File-New-Project.EarTrumpet"
            "/.NET"
            "Microsoft.Services.Store.Engagement"
            "Microsoft.DesktopAppInstaller"
            "Microsoft.Windows.ShellExperienceHost"
            "Microsoft.UI.Xaml.2.8"
            "Microsoft.UI.Xaml.2.8"
            "Microsoft.UI.Xaml.2.4"
            "Microsoft.UI.Xaml.2.4"
            "Microsoft.UI.Xaml.2.0"
            "Microsoft.UI.Xaml.2.7"
            "Microsoft.UI.Xaml.2.7"
            "Microsoft.WindowsAppRuntime.1.2"
            "Microsoft.WindowsAppRuntime.1.2"
            "Microsoft.WindowsAppRuntime.1.3-preview1"
            "Microsoft.WindowsAppRuntime.1.3-preview1"

        )
    }

    # import library code - located relative to this script
    Function dotInclude() {
        Param(
            [Parameter(Mandatory)]
            [string]$includeFile
        )
        # Look for the file in the same directory as this script
        $scriptPath = $PSScriptRoot
        if ( $PSScriptRoot -eq $null -and $psISE) {
            $scriptPath = (Split-Path -Path $psISE.CurrentFile.FullPath)
        }
        if ( test-path $scriptPath\$includeFile ) {
            # import and immediately execute the requested file
            . $scriptPath\$includeFile
        }
    }

    # Override built-in blacklist/whitelist with user defined lists
    dotInclude 'custom-lists.ps1'

    #convert to regular expression to allow for the super-useful -match operator
    $global:BloatwareRegex = $global:Bloatware -join '|'
    $global:WhiteListedAppsRegex = $global:WhiteListedApps -join '|'


        $1CustomizeForm                  = New-Object System.Windows.Forms.Form
        $1CustomizeForm.ClientSize       = New-Object System.Drawing.Point(800,1000)
        $1CustomizeForm.StartPosition    = 'CenterScreen'
        $1CustomizeForm.FormBorderStyle  = 'FixedSingle'
        $1CustomizeForm.MinimizeBox      = $false
        $1CustomizeForm.MaximizeBox      = $true
        $1CustomizeForm.ShowIcon         = $false
        $1CustomizeForm.Text             = "Rimozione Bloatware"
        $1CustomizeForm.TopMost          = $false
        $1CustomizeForm.AutoScroll       = $true
        $1CustomizeForm.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#FF1A2733")

        $ListPanel                     = New-Object system.Windows.Forms.Panel
        $ListPanel.height              = 900
        $ListPanel.width               = 790
        $ListPanel.Anchor              = 'top,right,left'
        $ListPanel.location            = New-Object System.Drawing.Point(15,15)
        $ListPanel.AutoScroll          = $true
        $ListPanel.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#FF1F272E")

        $1Button1                       = New-Object System.Windows.Forms.Button
        $1Button1.FlatStyle             = 'Flat'
        $1Button1.Text                  = "Save Your Choices"
        $1Button1.width                 = 285
        $1Button1.height                = 50
        $1Button1.Location              = New-Object System.Drawing.Point(10, 935)
        $1Button1.Font                  = New-Object System.Drawing.Font('Consolas',9)
        $1Button1.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#7f9ebb")

        $1Button2                       = New-Object System.Windows.Forms.Button
        $1Button2.FlatStyle             = 'Flat'
        $1Button2.Text                  = "Remove Selected Bloatware"
        $1Button2.width                 = 285
        $1Button2.height                = 50
        $1Button2.Location              = New-Object System.Drawing.Point(505, 935)
        $1Button2.Font                  = New-Object System.Drawing.Font('Consolas',9)
        $1Button2.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#7f9ebb")

        $1CustomizeForm.controls.AddRange(@($1Button1,$1Button2,$ListPanel))

        $1Button1.Add_Click( {
            # $ErrorActionPreference = 'SilentlyContinue'

                '$global:WhiteListedApps = @(' | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Encoding utf8
                @($ListPanel.controls) | ForEach {
                    if ($_ -is [System.Windows.Forms.CheckBox] -and $_.Enabled -and !$_.Checked) {
                        "    ""$( $_.Text )""" | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Append -Encoding utf8
                    }
                }
                ')' | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Append -Encoding utf8

                '$global:Bloatware = @(' | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Append -Encoding utf8
                @($ListPanel.controls) | ForEach {
                    if ($_ -is [System.Windows.Forms.CheckBox] -and $_.Enabled -and $_.Checked) {
                        "    ""$($_.Text)""" | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Append -Encoding utf8
                    }
                }
                ')' | Out-File -FilePath $PSScriptRoot\custom-lists.ps1 -Append -Encoding utf8

                #Over-ride the white/blacklist with the newly saved custom list
                dotInclude custom-lists.ps1

                #convert to regular expression to allow for the super-useful -match operator
                $global:BloatwareRegex = $global:Bloatware -join '|'
                $global:WhiteListedAppsRegex = $global:WhiteListedApps -join '|'
            })

            $1Button2.Add_Click({ 
                $ErrorActionPreference = 'SilentlyContinue'
                Function DebloatBlacklist {
                    Write-Host "Removing Bloatware"
                    Get-AppxPackage | Where-Object Name -cmatch $global:BloatwareRegex | Remove-AppxPackage
                    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -cmatch $global:BloatwareRegex | Remove-AppxProvisionedPackage -Online
                    Get-AppxPackage -AllUsers | Where-Object Name -cmatch $global:BloatwareRegex | Remove-AppxPackage
                }
                DebloatBlacklist
                    Function CheckDMWService {
                
                    Param([switch]$Debloat)
                
                    If (Get-Service dmwappushservice | Where-Object { $_.StartType -eq "Disabled" }) {
                        Set-Service dmwappushservice -StartupType Automatic
                    }
                
                    If (Get-Service dmwappushservice | Where-Object { $_.Status -eq "Stopped" }) {
                        Start-Service dmwappushservice
                    } 
                }
                
                Function CheckInstallService {
                
                    If (Get-Service InstallService | Where-Object { $_.Status -eq "Stopped" }) {  
                        Start-Service InstallService
                        Set-Service InstallService -StartupType Automatic 
                    }
                }
                Write-Host "Done"
                })
        

        Function AddAppToCustomizeForm() {
            Param(
                [Parameter(Mandatory)]
                [int] $position,
                [Parameter(Mandatory)]
                [string] $appName,
                [Parameter(Mandatory)]
                [bool] $enabled,
                [Parameter(Mandatory)]
                [bool] $checked,
                [Parameter(Mandatory)]
                [bool] $autocheck,

                [string] $notes
            )

            $label = New-Object System.Windows.Forms.Label
            $label.Location = New-Object System.Drawing.Point(-10, (2 + $position * 25))
            $label.Text = $notes
            $label.Font = New-Object System.Drawing.Font('Consolas',8)
            $label.Width = 260
            $label.Height = 27
            $Label.TextAlign = [System.Drawing.ContentAlignment]::TopRight
            $label.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#888888")
            $ListPanel.controls.AddRange(@($label))

            $Checkbox = New-Object System.Windows.Forms.CheckBox
            $Checkbox.Text = $appName
            $CheckBox.Font = New-Object System.Drawing.Font('Consolas',8)
            $CheckBox.FlatStyle = 'Flat'
            $CheckBox.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#eeeeee")
            $Checkbox.Location = New-Object System.Drawing.Point(268, (0 + $position * 25))
            $Checkbox.Autosize = 1;
            $Checkbox.Checked = $checked
            $Checkbox.Enabled = $enabled
            $CheckBox.AutoCheck = $autocheck
            $ListPanel.controls.AddRange(@($CheckBox))
        }


        $Installed = @( (Get-AppxPackage).Name )
        $Online = @( (Get-AppxProvisionedPackage -Online).DisplayName )
        $AllUsers = @( (Get-AppxPackage -AllUsers).Name )
        [int]$checkboxCounter = 0
        
        ForEach ( $item in $global:WhiteListedApps ) {
            $string = ""
            if ( $null -notmatch $NonRemovables -and $NonRemovables -cmatch $item ) { $string += " NonRemovables " }
            if ( $null -notmatch $global:BloatwareRegex -and $item -cmatch $global:BloatwareRegex ) { $string += " Blacklist " }
            if ( $null -notmatch $Installed -and $Installed -cmatch $item) { $string += "Installed" }
            if ( $null -notmatch $AllUsers -and $AllUsers -cmatch $item) { $string += "" }
            if ( $null -notmatch $Online -and $Online -cmatch $item) { $string += "" }
            AddAppToCustomizeForm $checkboxCounter $item $true $false $true $string
            ++$checkboxCounter
        }
        ForEach ( $item in $global:Bloatware ) {
            $string = ""
            if ( $null -notmatch $NonRemovables -and $NonRemovables -cmatch $item ) { $string += " NonRemovables " }
            if ( $null -notmatch $global:WhiteListedAppsRegex -and $item -cmatch $global:WhiteListedAppsRegex ) { $string += "Whitelist " }
            if ( $null -notmatch $Installed -and $Installed -cmatch $item) { $string += "Installed" }
            if ( $null -notmatch $AllUsers -and $AllUsers -cmatch $item) { $string += "" }
            if ( $null -notmatch $Online -and $Online -cmatch $item) { $string += "" }
            AddAppToCustomizeForm $checkboxCounter $item $true $true $true $string
            ++$checkboxCounter
        }
        ForEach ( $item in $AllUsers ) {
            $string = ""
            if ( $null -notmatch $NonRemovables -and $NonRemovables -cmatch $item ) { continue }
            if ( $null -notmatch $global:WhiteListedAppsRegex -and $item -cmatch $global:WhiteListedAppsRegex ) { continue }
            if ( $null -notmatch $global:BloatwareRegex -and $item -cmatch $global:BloatwareRegex ) { continue }
            if ( $null -notmatch $Installed -and $Installed -cmatch $item) { $string += " Installed" }
            if ( $null -notmatch $Online -and $Online -cmatch $item) { $string += "" }
            AddAppToCustomizeForm $checkboxCounter $item $true $true $true $string
            ++$checkboxCounter
        }
        ForEach ( $item in $Installed ) {
            $string = "Installed"
            if ( $null -notmatch $NonRemovables -and $NonRemovables -cmatch $item ) { continue }
            if ( $null -notmatch $global:WhiteListedAppsRegex -and $item -cmatch $global:WhiteListedAppsRegex ) { continue }
            if ( $null -notmatch $global:BloatwareRegex -and $item -cmatch $global:BloatwareRegex ) { continue }
            if ( $null -notmatch $AllUsers -and $AllUsers -cmatch $item) { continue }
            if ( $null -notmatch $Online -and $Online -cmatch $item) { $string += "" }
            AddAppToCustomizeForm $checkboxCounter $item $true $true $true $string
            ++$checkboxCounter
        }
        ForEach ( $item in $Online ) {
            $string = ""
            if ( $null -notmatch $NonRemovables -and $NonRemovables -cmatch $item ) { continue }
            if ( $null -notmatch $global:WhiteListedAppsRegex -and $item -cmatch $global:WhiteListedAppsRegex ) { continue }
            if ( $null -notmatch $global:BloatwareRegex -and $item -cmatch $global:BloatwareRegex ) { continue }
            if ( $null -notmatch $Installed -and $Installed -cmatch $item) { continue }
            if ( $null -notmatch $AllUsers -and $AllUsers -cmatch $item) { continue }
            AddAppToCustomizeForm $checkboxCounter $item $true $true $true $string
            ++$checkboxCounter
        }
        [void]$1CustomizeForm.ShowDialog()

})

$WPFTab3P3.Add_Click({
    Start-Process powershell.exe -Verb RunAs -ArgumentList "Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”" -Wait -WindowStyle Maximized
        $WPFResult.ToArray()
    $WPFResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Result"
    $Messageboxbody = "Completed"
    $MessageIcon = [System.Windows.MessageBoxImage]::Information
    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
})

$WPFTab3P4.Add_Click({
    If ( $WPFbcalculator.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsCalculator | Remove-AppxPackage
    $WPFbcalculator.IsChecked = $false
    }
    If ( $WPFbphotos.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Windows.Photos | Remove-AppxPackage
    $WPFbphotos.IsChecked = $false
    }
    If ( $WPFbcanonical.IsChecked -eq $true ) {
    Get-AppxPackage -allusers CanonicalGroupLimited.UbuntuonWindows | Remove-AppxPackage
    $WPFbcanonical.IsChecked = $false
    }
    If ( $WPFbxboxtcui.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
    $WPFbxboxtcui.IsChecked = $false
    }
    If ( $WPFbxboxapp.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
    $WPFbxboxapp.IsChecked = $false
    }
    If ( $WPFbxboxgamingoverlay.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
    $WPFbxboxgamingoverlay.IsChecked = $false
    }
    If ( $WPFbxboxspeech.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
    $WPFbxboxspeech.IsChecked = $false
    }
    If ( $WPFbstickynotes.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
    $WPFbstickynotes.IsChecked = $false
    }
    If ( $WPFbmspaint.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MSPaint | Remove-AppxPackage
    $WPFbmspaint.IsChecked = $false
    }
    If ( $WPFbcamera.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsCamera | Remove-AppxPackage
    $WPFbcamera.IsChecked = $false
    }
    If ( $WPFbheifi.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.HEIFImageExtension | Remove-AppxPackage
    $WPFbheifi.IsChecked = $false
    }
    If ( $WPFbscreensketch.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.ScreenSketch | Remove-AppxPackage
    $WPFbscreensketch.IsChecked = $false
    }
    If ( $WPFbvp9video.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.VP9VideoExtensions | Remove-AppxPackage
    $WPFbvp9video.IsChecked = $false
    }
    If ( $WPFbwebmedia.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WebMediaExtensions | Remove-AppxPackage
    $WPFbwebmedia.IsChecked = $false
    }
    If ( $WPFbwebimage.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WebpImageExtension | Remove-AppxPackage
    $WPFbwebimage.IsChecked = $false
    }
    If ( $WPFbwindsynth.IsChecked -eq $true ) {
    Get-AppxPackage -allusers WindSynthBerry | Remove-AppxPackage
    $WPFbwindsynth.IsChecked = $false
    }
    If ( $WPFbmidiberry.IsChecked -eq $true ) {
    Get-AppxPackage -allusers MIDIBerry | Remove-AppxPackage
    $WPFbmidiberry.IsChecked = $false
    }
    If ( $WPFbslack.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Slack | Remove-AppxPackage
    $WPFbslack.IsChecked = $false
    }
    If ( $WPFbmixedreality.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MixedReality.Portal | Remove-AppxPackage
    $WPFbmixedreality.IsChecked = $false
    }
    If ( $WPFbppiprojection.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.PPIProjection | Remove-AppxPackage
    $WPFbppiprojection.IsChecked = $false
    }
    If ( $WPFbbingnews.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.BingNews | Remove-AppxPackage
    $WPFbbingnews.IsChecked = $false
    }
    If ( $WPFbgethelp.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.GetHelp | Remove-AppxPackage
    $WPFbgethelp.IsChecked = $false
    }
    If ( $WPFbgetstarted.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Getstarted | Remove-AppxPackage
    $WPFbgetstarted.IsChecked = $false
    }
    If ( $WPFbmessaging.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Messaging | Remove-AppxPackage
    $WPFbmessaging.IsChecked = $false
    }
    If ( $WPFb3dviewer.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Microsoft3DViewer | Remove-AppxPackage
    $WPFb3dviewer.IsChecked = $false
    }
    If ( $WPFbofficehub.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
    $WPFbofficehub.IsChecked = $false
    }
    If ( $WPFbsolitaire.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
    $WPFbsolitaire.IsChecked = $false
    }
    If ( $WPFbnetworkspeedtest.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.NetworkSpeedTest | Remove-AppxPackage
    $WPFbnetworkspeedtest.IsChecked = $false
    }
    If ( $WPFbnews.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.News | Remove-AppxPackage
    $WPFbnews.IsChecked = $false
    }
    If ( $WPFbofficelens.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Office.Lens | Remove-AppxPackage
    $WPFbofficelens.IsChecked = $false
    }
    If ( $WPFbonenote.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Office.OneNote | Remove-AppxPackage
    $WPFbonenote.IsChecked = $false
    }
    If ( $WPFbofficesway.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Office.Sway | Remove-AppxPackage
    $WPFbofficesway.IsChecked = $false
    }
    If ( $WPFboneconnect.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.OneConnect | Remove-AppxPackage
    $WPFboneconnect.IsChecked = $false
    }
    If ( $WPFbpeople.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.People | Remove-AppxPackage
    $WPFbpeople.IsChecked = $false
    }
    If ( $WPFbprint3d.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Print3D | Remove-AppxPackage
    $WPFbprint3d.IsChecked = $false
    }
    If ( $WPFbremotedesktop.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.RemoteDesktop | Remove-AppxPackage
    $WPFbremotedesktop.IsChecked = $false
    }
    If ( $WPFbskypeapp.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.SkypeApp | Remove-AppxPackage
    $WPFbskypeapp.IsChecked = $false
    }
    If ( $WPFbofficetodo.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Office.Todo.List | Remove-AppxPackage
    $WPFbofficetodo.IsChecked = $false
    }
    If ( $WPFbwhiteboard.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Whiteboard | Remove-AppxPackage
    $WPFbwhiteboard.IsChecked = $false
    }
    If ( $WPFbwindowsalarm.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsAlarms | Remove-AppxPackage
    $WPFbwindowsalarm.IsChecked = $false
    }
    If ( $WPFbwindowscommunications.IsChecked -eq $true ) {
    Get-AppxPackage -allusers microsoft.windowscommunicationsapps | Remove-AppxPackage
    $WPFbwindowscommunications.IsChecked = $false
    }
    If ( $WPFbfeedback.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsFeedbackHub | Remove-AppxPackage
    $WPFbfeedback.IsChecked = $false
    }
    If ( $WPFbmaps.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsMaps | Remove-AppxPackage
    $WPFbmaps.IsChecked = $false
    }
    If ( $WPFbsound.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsSoundRecorder | Remove-AppxPackage
    $WPFbsound.IsChecked = $false
    }
    If ( $WPFbzune.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.ZuneMusic | Remove-AppxPackage
    $WPFbzune.IsChecked = $false
    }
    If ( $WPFbxboxidentity.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.XboxIdentityProvider | Remove-AppxPackage
    $WPFbxboxidentity.IsChecked = $false
    }
    If ( $WPFbzunevideo.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.ZuneVideo | Remove-AppxPackage
    $WPFbzunevideo.IsChecked = $false
    }
    If ( $WPFbeclipse.IsChecked -eq $true ) {
    Get-AppxPackage -allusers EclipseManager | Remove-AppxPackage
    $WPFbeclipse.IsChecked = $false
    }
    If ( $WPFblanguage.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.LanguageExperiencePackit-IT | Remove-AppxPackage
    $WPFblanguage.IsChecked = $false
    }
    If ( $WPFbadobe.IsChecked -eq $true ) {
    Get-AppxPackage -allusers AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage
    $WPFbadobe.IsChecked = $false
    }
    If ( $WPFbduolingo.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Duolingo-LearnLanguagesforFree | Remove-AppxPackage
    $WPFbduolingo.IsChecked = $false
    }
    If ( $WPFbpandoramedia.IsChecked -eq $true ) {
    Get-AppxPackage -allusers PandoraMediaInc | Remove-AppxPackage
    $WPFbpandoramedia.IsChecked = $false
    }
    If ( $WPFbcandycrush.IsChecked -eq $true ) {
    Get-AppxPackage -allusers CandyCrush | Remove-AppxPackage
    $WPFbcandycrush.IsChecked = $false
    }
    If ( $WPFbbubblewitch.IsChecked -eq $true ) {
    Get-AppxPackage -allusers BubbleWitch3Saga | Remove-AppxPackage
    $WPFbbubblewitch.IsChecked = $false
    }
    If ( $WPFbwunderlist.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Wunderlist | Remove-AppxPackage
    $WPFbwunderlist.IsChecked = $false
    }
    If ( $WPFbflipboard.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Flipboard | Remove-AppxPackage
    $WPFbflipboard.IsChecked = $false
    }
    If ( $WPFbtwitter.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Twitter | Remove-AppxPackage
    $WPFbtwitter.IsChecked = $false
    }
    If ( $WPFbfacebook.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Facebook | Remove-AppxPackage
    $WPFbfacebook.IsChecked = $false
    }
    If ( $WPFbspotify.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Spotify | Remove-AppxPackage
    $WPFbspotify.IsChecked = $false
    }
    If ( $WPFbminecraft.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Minecraft | Remove-AppxPackage
    $WPFbminecraft.IsChecked = $false
    }
    If ( $WPFbroyalrevolt.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Royal Revolt | Remove-AppxPackage
    $WPFbroyalrevolt.IsChecked = $false
    }
    If ( $WPFbsway.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Sway | Remove-AppxPackage
    $WPFbsway.IsChecked = $false
    }
    If ( $WPFbdolby.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Dolby | Remove-AppxPackage
    $WPFbdolby.IsChecked = $false
    }
    If ( $WPFbadvertising.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Advertising.Xaml | Remove-AppxPackage
    $WPFbadvertising.IsChecked = $false
    }
    If ( $WPFbwallet.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.Wallet | Remove-AppxPackage
    $WPFbwallet.IsChecked = $false
    }
    If ( $WPFbyourphone.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.YourPhone | Remove-AppxPackage
    $WPFbyourphone.IsChecked = $false
    }
    If ( $WPFbedge.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.MicrosoftEdge.Stable | Remove-AppxPackage
    $WPFbedge.IsChecked = $false
    }
    If ( $WPFbwinget.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.DesktopAppInstaller | Remove-AppxPackage Get-AppxPackage -allusers Microsoft.Winget.Source | Remove-AppxPackage
    $WPFbwinget.IsChecked = $false
    }
    If ( $WPFbstore.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.WindowsStore | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Services.Store.Engagement | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.StorePurchaseApp | Remove-AppxPackage
    $WPFbstore.IsChecked = $false
    }
    If ( $WPFbui.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.UI.Xaml.2.0 | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.UI.Xaml.2.4 | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.UI.Xaml.2.7 | Remove-AppxPackage
    $WPFbui.IsChecked = $false
    }
    If ( $WPFbvclibs.IsChecked -eq $true ) {
    Get-AppxPackage -allusers Microsoft.VCLibs.140.00.UWPDesktop | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.VCLibs.140.00 | Remove-AppxPackage
    $WPFbvclibs.IsChecked = $false
    }
    If ( $WPFbnet.IsChecked -eq $true ) {
    Get-AppxPackage -allusers \.NET | Remove-AppxPackage
    $WPFbnet.IsChecked = $false
    }
    $WPFResult.ToArray()
    $WPFResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Result"
    $Messageboxbody = "Completed"
    $MessageIcon = [System.Windows.MessageBoxImage]::Information
    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
})

##########################################
############### Privacy ##################
##########################################

$WPFTab4P1.Add_Click({
    $WPFp1.IsChecked = $false
    $WPFp2.IsChecked = $false
    $WPFp3.IsChecked = $false
    $WPFp4.IsChecked = $false
    $WPFp5.IsChecked = $false
    $WPFp6.IsChecked = $false
    $WPFp7.IsChecked = $false
    $WPFp8.IsChecked = $false
    $WPFp9.IsChecked = $false
    $WPFp10.IsChecked = $false
    $WPFp11.IsChecked = $false
    $WPFp12.IsChecked = $false
    $WPFp13.IsChecked = $false
    $WPFp14.IsChecked = $false
    $WPFp15.IsChecked = $false
    $WPFp16.IsChecked = $false
    $WPFp17.IsChecked = $false
    $WPFp18.IsChecked = $false
    $WPFp19.IsChecked = $false
    $WPFp20.IsChecked = $false
    $WPFp21.IsChecked = $false
    $WPFp25.IsChecked = $true
    $WPFp26.IsChecked = $true
    $WPFp27.IsChecked = $true
    $WPFp28.IsChecked = $true
    $WPFp29.IsChecked = $true
    $WPFp30.IsChecked = $true
    $WPFp31.IsChecked = $true
    $WPFp32.IsChecked = $true
    $WPFp33.IsChecked = $true
    $WPFp34.IsChecked = $true
    $WPFp35.IsChecked = $true
    $WPFp36.IsChecked = $true
    $WPFp37.IsChecked = $true
    $WPFp38.IsChecked = $true
    $WPFp39.IsChecked = $true
    $WPFp40.IsChecked = $true
    $WPFp41.IsChecked = $true
    $WPFp42.IsChecked = $true
    $WPFp43.IsChecked = $true
    $WPFp44.IsChecked = $true
    $WPFp45.IsChecked = $true
    $WPFp46.IsChecked = $false
})

$WPFTab4P2.Add_Click({
    $WPFp1.IsChecked = $true
    $WPFp2.IsChecked = $true
    $WPFp3.IsChecked = $true
    $WPFp4.IsChecked = $true
    $WPFp5.IsChecked = $true
    $WPFp6.IsChecked = $true
    $WPFp7.IsChecked = $true
    $WPFp8.IsChecked = $true
    $WPFp9.IsChecked = $true
    $WPFp10.IsChecked = $true
    $WPFp11.IsChecked = $true
    $WPFp12.IsChecked = $true
    $WPFp13.IsChecked = $false
    $WPFp14.IsChecked = $false
    $WPFp15.IsChecked = $true
    $WPFp16.IsChecked = $true
    $WPFp17.IsChecked = $false
    $WPFp18.IsChecked = $false
    $WPFp19.IsChecked = $true
    $WPFp20.IsChecked = $true
    $WPFp21.IsChecked = $false
    $WPFp25.IsChecked = $false
    $WPFp26.IsChecked = $false
    $WPFp27.IsChecked = $false
    $WPFp28.IsChecked = $false
    $WPFp29.IsChecked = $false
    $WPFp30.IsChecked = $false
    $WPFp31.IsChecked = $false
    $WPFp32.IsChecked = $false
    $WPFp33.IsChecked = $false
    $WPFp34.IsChecked = $false
    $WPFp35.IsChecked = $false
    $WPFp36.IsChecked = $false
    $WPFp37.IsChecked = $true
    $WPFp38.IsChecked = $true
    $WPFp39.IsChecked = $false
    $WPFp40.IsChecked = $false
    $WPFp41.IsChecked = $true
    $WPFp42.IsChecked = $true
    $WPFp43.IsChecked = $false
    $WPFp44.IsChecked = $false
    $WPFp45.IsChecked = $true
    $WPFp46.IsChecked = $true
})

$WPFTab4P3.Add_Click({
    $WPFp1.IsChecked = $true
    $WPFp2.IsChecked = $true
    $WPFp3.IsChecked = $true
    $WPFp4.IsChecked = $true
    $WPFp5.IsChecked = $true
    $WPFp6.IsChecked = $true
    $WPFp7.IsChecked = $true
    $WPFp8.IsChecked = $true
    $WPFp9.IsChecked = $true
    $WPFp10.IsChecked = $true
    $WPFp11.IsChecked = $true
    $WPFp12.IsChecked = $true
    $WPFp13.IsChecked = $true
    $WPFp14.IsChecked = $false
    $WPFp15.IsChecked = $true
    $WPFp16.IsChecked = $true
    $WPFp17.IsChecked = $true
    $WPFp18.IsChecked = $false
    $WPFp19.IsChecked = $true
    $WPFp20.IsChecked = $true
    $WPFp21.IsChecked = $false
    $WPFp25.IsChecked = $false
    $WPFp26.IsChecked = $false
    $WPFp27.IsChecked = $false
    $WPFp28.IsChecked = $false
    $WPFp29.IsChecked = $false
    $WPFp30.IsChecked = $false
    $WPFp31.IsChecked = $false
    $WPFp32.IsChecked = $false
    $WPFp33.IsChecked = $false
    $WPFp34.IsChecked = $false
    $WPFp35.IsChecked = $false
    $WPFp36.IsChecked = $false
    $WPFp37.IsChecked = $false
    $WPFp38.IsChecked = $true
    $WPFp39.IsChecked = $false
    $WPFp40.IsChecked = $false
    $WPFp41.IsChecked = $false
    $WPFp42.IsChecked = $true
    $WPFp43.IsChecked = $false
    $WPFp44.IsChecked = $false
    $WPFp45.IsChecked = $true
    $WPFp46.IsChecked = $true
})

$WPFTab4P4.Add_Click({
        If ( $WPFp1.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -Type DWord -Value 1 
    Write-Host "Disabled Language Options"
    $WPFp1.IsChecked = $false
    }

        If ( $WPFp25.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut"
    New-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -Type DWord -Value 0
    Write-host "Enabled Languages Options" 
    $WPFp25.IsChecked = $false
    }

        If ( $WPFp2.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableThirdPartySuggestions" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Name "CEIPEnable" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "AITEnable" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "DisableUAR" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" -Name "Start" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" -Name "Start" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SoftLandingEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-314559Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353694Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Write-Host "Disabled Suggested Apps"
    $WPFp2.IsChecked = $false
    }

        If ( $WPFp26.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 1
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -ErrorAction SilentlyContinue
    Write-host "Enabled Suggested Apps" 
    $WPFp26.IsChecked = $false
    }

        If ( $WPFp3.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Write-Host "Disabled Telemetry"
    $WPFp3.IsChecked = $false
    }

        If ( $WPFp27.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
    Start-Service DiagTrack | Set-Service -StartupType Automatic
    Start-Service dmwappushservice | Set-Service -StartupType Automatic
    Write-host "Enabled Telemetry" 
    $WPFp27.IsChecked = $false
    }

        If ( $WPFp4.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
    Write-host "Disabled Activity History"
    $WPFp4.IsChecked = $false
    }

        If ( $WPFp28.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -ErrorAction SilentlyContinue
    Write-host "Enabled Activity History" 
    $WPFp28.IsChecked = $false
    }

        If ( $WPFp5.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
    Write-host "Disabled Location Tracking"
    $WPFp5.IsChecked = $false
    }

        If ( $WPFp29.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1
    Write-host "Enabled Location Tracking" 
    $WPFp29.IsChecked = $false
    }

        If ( $WPFp6.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
    Write-host "Disabled Error Reporting"
    $WPFp6.IsChecked = $false
    }

        If ( $WPFp30.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -ErrorAction SilentlyContinue
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
    Write-host "Enabled Error Reporting" 
    $WPFp30.IsChecked = $false
    }

        If ( $WPFp7.IsChecked -eq $true ) {
    Stop-Service "DiagTrack" -WarningAction SilentlyContinue
    Set-Service "DiagTrack" -StartupType Disabled
    Write-host "Disabled Diagnostic Tracking"
    $WPFp7.IsChecked = $false
    }

        If ( $WPFp31.IsChecked -eq $true ) {
    Set-Service "DiagTrack" -StartupType Automatic
    Start-Service "DiagTrack" -WarningAction SilentlyContinue
    Write-host "Enabled Diagnostic Tracking" 
    $WPFp31.IsChecked = $false
    }

        If ( $WPFp8.IsChecked -eq $true ) {
    Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
    Set-Service "dmwappushservice" -StartupType Disabled
    Write-host "Disabled WAP Push Service"
    $WPFp8.IsChecked = $false
    }

        If ( $WPFp32.IsChecked -eq $true ) {
    Set-Service "dmwappushservice" -StartupType Automatic
    Start-Service "dmwappushservice" -WarningAction SilentlyContinue
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\dmwappushservice" -Name "DelayedAutoStart" -Type DWord -Value 1
    Write-host "Enabled WAP Push Service" 
    $WPFp32.IsChecked = $false
    }

        If ( $WPFp9.IsChecked -eq $true ) {
    Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
    Set-Service "HomeGroupListener" -StartupType Disabled
    Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
    Set-Service "HomeGroupProvider" -StartupType Disabled
    Write-host "Disabled Home Group Services"
    $WPFp9.IsChecked = $false
    }

        If ( $WPFp33.IsChecked -eq $true ) {
    Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
    Set-Service "HomeGroupListener" -StartupType Manual
    Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
    Set-Service "HomeGroupProvider" -StartupType Manual
    Write-host "Enabled Home Group Services" 
    $WPFp33.IsChecked = $false
    }

        If ( $WPFp10.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
    Write-host "Disabled Remote Assistance"
    $WPFp10.IsChecked = $false
    }

        If ( $WPFp34.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 1
    Write-host "Enabled Remote Assistance" 
    $WPFp34.IsChecked = $false
    }

        If ( $WPFp11.IsChecked -eq $true ) {
    Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
    Write-host "Disabled Storage Check" 
    $WPFp11.IsChecked = $false
    }

        If ( $WPFp35.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "01" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "04" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "08" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "32" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "StoragePoliciesNotified" -Type DWord -Value 1
    Write-host "Enabled Storage Check" 
    $WPFp35.IsChecked = $false
    }

        If ( $WPFp12.IsChecked -eq $true ) {
    Stop-Service "SysMain" -WarningAction SilentlyContinue
    Set-Service "SysMain" -StartupType Disabled
    Write-host "Disabled Superfetch" 
    $WPFp12.IsChecked = $false
    }

        If ( $WPFp36.IsChecked -eq $true ) {
    Set-Service "SysMain" -StartupType Automatic
    Start-Service "SysMain" -WarningAction SilentlyContinue
    Write-host "Enabled Superfetch" 
    $WPFp36.IsChecked = $false
    }

        If ( $WPFp13.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type DWord -Value 0
    powercfg /HIBERNATE OFF 2>&1 | Out-Null
    Write-host "Disabled Hibernation" 
    $WPFp13.IsChecked = $false
    }

        If ( $WPFp37.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
    Write-host "Enabled Hibernation" 
    $WPFp37.IsChecked = $false
    }

        If ( $WPFp14.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -Type DWord -Value 2
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Type DWord -Value 2
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 1
    Write-host "Disabled Fullscreen Optimization" 
    $WPFp14.IsChecked = $false
    }

        If ( $WPFp38.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 0
    Remove-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -ErrorAction SilentlyContinue
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 0
    Write-host "Enabled Optimization Fullscreen" 
    $WPFp38.IsChecked = $false
    }

        If ( $WPFp15.IsChecked -eq $true ) {
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Defrag\ScheduledDefrag" | Out-Null
    Write-host "Disabled Scheduled Defrag" 
    $WPFp15.IsChecked = $false
    }

        If ( $WPFp39.IsChecked -eq $true ) {
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Defrag\ScheduledDefrag" | Out-Null
    Write-host "Enabled Scheduled Defrag" 
    $WPFp39.IsChecked = $false
    }

        If ( $WPFp16.IsChecked -eq $true ) {
    Get-AppxPackage "Microsoft.XboxApp" | Remove-AppxPackage
    Get-AppxPackage "Microsoft.XboxIdentityProvider" | Remove-AppxPackage -ErrorAction SilentlyContinue
    Get-AppxPackage "Microsoft.XboxSpeechToTextOverlay" | Remove-AppxPackage
    Get-AppxPackage "Microsoft.XboxGameOverlay" | Remove-AppxPackage
    Get-AppxPackage "Microsoft.Xbox.TCUI" | Remove-AppxPackage
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -Type DWord -Value 0
    Write-host "Disabled Xbox Features" 
    $WPFp16.IsChecked = $false
    }

        If ( $WPFp40.IsChecked -eq $true ) {
    Get-AppxPackage -AllUsers "Microsoft.XboxApp" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -AllUsers "Microsoft.XboxIdentityProvider" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -AllUsers "Microsoft.XboxSpeechToTextOverlay" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -AllUsers "Microsoft.XboxGameOverlay" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -AllUsers "Microsoft.Xbox.TCUI" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 1
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -ErrorAction SilentlyContinue
    Write-host "Enabled Xbox Features" 
    $WPFp40.IsChecked.IsChecked = $false
    }

        If ( $WPFp17.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0
    Write-host "Disabled Fast Startup" 
    $WPFp17.IsChecked = $false
    }

        If ( $WPFp41.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 1
    Write-host "Enabled Fast Startup" 
    $WPFp41.IsChecked = $false
    }

        If ( $WPFp18.IsChecked -eq $true ) {
    $ErrorActionPreference = 'SilentlyContinue'
    $Bandwidth = "HKLM:\SOFTWARE\Policies\Microsoft\Psched"
    Remove-ItemProperty -Path $Bandwidth -Name "NonBestEffortLimit"
    Write-host "Normal Bandwidth" 

    $WPFp18.IsChecked = $false
    }

        If ( $WPFp42.IsChecked -eq $true ) {
    $ErrorActionPreference = 'SilentlyContinue'
    $Bandwidth = "HKLM:\SOFTWARE\Policies\Microsoft\Psched"
    New-Item -Path $Bandwidth -ItemType Directory -Force
    Set-ItemProperty -Path $Bandwidth -Name "NonBestEffortLimit" -Type DWord -Value 0
    Write-host "Enabled All Bandwidth" 
    $WPFp42.IsChecked = $false
    }

        If ( $WPFp19.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "MaintenanceDisabled" -Type dword -Value 1
    Write-host "Disabled Auto Manteinance" 
    $WPFp19.IsChecked = $false
    }


        If ( $WPFp43.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "MaintenanceDisabled" -Type dword -Value 0
    Write-host "Enabled Auto Manteinance" 
    $WPFp43.IsChecked = $false
    }

        If ( $WPFp20.IsChecked -eq $true ) {
    Set-WindowsReservedStorageState -State Disabled
    Write-host "Disabled Reserved Storage" 
    $WPFp20.IsChecked = $false
    }

        If ( $WPFp44.IsChecked -eq $true ) {
    Set-WindowsReservedStorageState -State Enabled
    Write-host "Enabled Reserved Storage" 
    $WPFp44.IsChecked = $false
    }

        If ( $WPFp21.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 00000000
    Write-host "Disabled Tweaks GameDVR" 
    $WPFp21.IsChecked = $false
    }

        If ( $WPFp45.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -ErrorAction SilentlyContinue
    Write-host "Enabled Tweaks GameDVR" 
    $WPFp45.IsChecked = $false
    }

        If ( $WPFp46.IsChecked -eq $true ) {
    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/OO.cfg" -Destination ooshutup10.cfg
    Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
    ./OOSU10.exe ooshutup10.cfg /quiet
    Write-Host "Executed O&O Shutup with Recommended Settings"
    $WPFp46.IsChecked = $false
    }
    [System.Windows.MessageBox]::Show("All Done", "Privacy Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############### Utility ##################
##########################################

$WPFTab5P1.Add_Click({
    $WPFUT1.IsChecked = $false
    $WPFUT2.IsChecked = $true
    $WPFUT3.IsChecked = $false
    $WPFUT4.IsChecked = $true
    $WPFUT5.IsChecked = $false
    $WPFUT6.IsChecked = $true
    $WPFUT7.IsChecked = $false
    $WPFUT8.IsChecked = $true
    $WPFUT9.IsChecked = $false
    $WPFUT10.IsChecked = $true
    $WPFUT11.IsChecked = $false
    $WPFUT12.IsChecked = $true
    $WPFUT13.IsChecked = $false
    $WPFUT14.IsChecked = $true
    $WPFUT15.IsChecked = $true
    $WPFUT16.IsChecked = $false
    $WPFUT17.IsChecked = $false
    $WPFUT18.IsChecked = $true
    $WPFUT19.IsChecked = $true
    $WPFUT20.IsChecked = $false
    $WPFUT21.IsChecked = $true
    $WPFUT22.IsChecked = $false
    $WPFUT23.IsChecked = $false
    $WPFUT24.IsChecked = $true
    $WPFUT25.IsChecked = $true
    $WPFUT26.IsChecked = $false
    $WPFUT28.IsChecked = $false
    $WPFUT29.IsChecked = $true
    $WPFUT30.IsChecked = $false
    $WPFUT31.IsChecked = $false
    $WPFUT32.IsChecked = $true
    $WPFUT34.IsChecked = $false
    $WPFUT38.IsChecked = $false
    $WPFUT40.IsChecked = $false
    $WPFUT42.IsChecked = $false
    $WPFUT43.IsChecked = $false
    $WPFUT44.IsChecked = $false
    $WPFUT45.IsChecked = $false
})

$WPFTab5P2.Add_Click({
    $WPFUT1.IsChecked = $true
    $WPFUT2.IsChecked = $false
    $WPFUT3.IsChecked = $true
    $WPFUT4.IsChecked = $false
    $WPFUT5.IsChecked = $true
    $WPFUT6.IsChecked = $false
    $WPFUT7.IsChecked = $true
    $WPFUT8.IsChecked = $false
    $WPFUT9.IsChecked = $true
    $WPFUT10.IsChecked = $false
    $WPFUT11.IsChecked = $true
    $WPFUT12.IsChecked = $false
    $WPFUT13.IsChecked = $true
    $WPFUT14.IsChecked = $false
    $WPFUT15.IsChecked = $true
    $WPFUT16.IsChecked = $false
    $WPFUT17.IsChecked = $true
    $WPFUT18.IsChecked = $false
    $WPFUT19.IsChecked = $true
    $WPFUT20.IsChecked = $false
    $WPFUT21.IsChecked = $false
    $WPFUT22.IsChecked = $true
    $WPFUT23.IsChecked = $true
    $WPFUT24.IsChecked = $false
    $WPFUT25.IsChecked = $false
    $WPFUT26.IsChecked = $true
    $WPFUT28.IsChecked = $true
    $WPFUT29.IsChecked = $true
    $WPFUT30.IsChecked = $false
    $WPFUT31.IsChecked = $true
    $WPFUT32.IsChecked = $false
    $WPFUT34.IsChecked = $true
    $WPFUT38.IsChecked = $true
    $WPFUT40.IsChecked = $true
    $WPFUT42.IsChecked = $true
    $WPFUT43.IsChecked = $true
    $WPFUT44.IsChecked = $false
    $WPFUT45.IsChecked = $true
})

$WPFTab5P3.Add_Click({
    $WPFUT1.IsChecked = $true
    $WPFUT2.IsChecked = $false
    $WPFUT3.IsChecked = $true
    $WPFUT4.IsChecked = $false
    $WPFUT5.IsChecked = $true
    $WPFUT6.IsChecked = $false
    $WPFUT7.IsChecked = $true
    $WPFUT8.IsChecked = $false
    $WPFUT9.IsChecked = $true
    $WPFUT10.IsChecked = $false
    $WPFUT11.IsChecked = $true
    $WPFUT12.IsChecked = $false
    $WPFUT13.IsChecked = $true
    $WPFUT14.IsChecked = $false
    $WPFUT15.IsChecked = $true
    $WPFUT16.IsChecked = $false
    $WPFUT17.IsChecked = $true
    $WPFUT18.IsChecked = $false
    $WPFUT19.IsChecked = $true
    $WPFUT20.IsChecked = $false
    $WPFUT21.IsChecked = $false
    $WPFUT22.IsChecked = $false
    $WPFUT23.IsChecked = $true
    $WPFUT24.IsChecked = $false
    $WPFUT25.IsChecked = $false
    $WPFUT26.IsChecked = $true
    $WPFUT28.IsChecked = $true
    $WPFUT29.IsChecked = $true
    $WPFUT30.IsChecked = $false
    $WPFUT31.IsChecked = $true
    $WPFUT32.IsChecked = $false
    $WPFUT34.IsChecked = $true
    $WPFUT38.IsChecked = $true
    $WPFUT40.IsChecked = $true
    $WPFUT42.IsChecked = $true
    $WPFUT43.IsChecked = $true
    $WPFUT44.IsChecked = $false
    $WPFUT45.IsChecked = $true
})

$WPFTab5P4.Add_Click({
        If ( $WPFUT1.IsChecked -eq $true ) {
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
        Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
        Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
    }
    Write-host "Disabled Background App Access" 
    $WPFUT1.IsChecked = $false
    }

        If ( $WPFUT3.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
    Write-host "Disabled Automatic Maps Updates" 
    $WPFUT3.IsChecked = $false
    }

        If ( $WPFUT5.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-host "Disabled Feedback" 
    $WPFUT5.IsChecked = $false
    }

        If ( $WPFUT7.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableCdp" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableMmx" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
    Write-host "Disabled Tailored Experiences" 
    $WPFUT7.IsChecked = $false
    }

        If ( $WPFUT9.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
    Write-host "Disabled Advertising ID" 
    $WPFUT9.IsChecked = $false
    }

        If ( $WPFUT11.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Name "EnabledV9" -Type DWord -Value 0
    Write-host "Disabled Smartscreen Filter" 
    $WPFUT11.IsChecked = $false
    }

        If ( $WPFUT13.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "AutoConnectAllowedOEM" -Type Dword -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "WiFISenseAllowed" -Type Dword -Value 0
    Write-host "Disabled WiFi-Sense" 
    $WPFUT13.IsChecked = $false
    }

        If ( $WPFUT15.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
    Write-host "Set BIOS UTC Time" 
    $WPFUT15.IsChecked = $false
    }

        If ( $WPFUT17.IsChecked -eq $true ) {
    If ([System.Environment]::OSVersion.Version.Build -ge 17763) {
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsRunInBackground" -Type DWord -Value 2
    } Else {
        Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*", "Microsoft.Windows.ShellExperienceHost*" | ForEach-Object {
            Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
            Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
        }
    }
    Write-Host "Disabling access to voice activation from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoice" -Type DWord -Value 2
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoiceAboveLock" -Type DWord -Value 2
    Write-Host "Disabling access to notifications from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessNotifications" -Type DWord -Value 2
    Write-Host "Disabling access to account info from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessAccountInfo" -Type DWord -Value 2
    Write-Host "Disabling access to contacts from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessContacts" -Type DWord -Value 2
    Write-Host "Disabling access to calendar from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCalendar" -Type DWord -Value 2
    Write-Host "Disabling access to phone calls from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessPhone" -Type DWord -Value 2
    Write-Host "Disabling access to call history from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCallHistory" -Type DWord -Value 2
    Write-Host "Disabling access to email from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessEmail" -Type DWord -Value 2
    Write-Host "Disabling access to tasks from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTasks" -Type DWord -Value 2
    Write-Host "Disabling access to messaging from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessMessaging" -Type DWord -Value 2
    Write-Host "Disabling access to radios from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessRadios" -Type DWord -Value 2
    Write-Host "Disabling access to other devices from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsSyncWithDevices" -Type DWord -Value 2
    Write-Host "Disabling access to diagnostic information from UWP apps..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsGetDiagnosticInfo" -Type DWord -Value 2
    Write-Host "Disabling access to libraries and file system from UWP apps..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" -Name "Value" -Type String -Value "Deny"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" -Name "Value" -Type String -Value "Deny"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" -Name "Value" -Type String -Value "Deny"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" -Name "Value" -Type String -Value "Deny"
    Write-Host "Disabling UWP apps swap file..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "SwapfileControl" -Type Dword -Value 0
    Write-host "Disabled UWP App Access" 
    $WPFUT17.IsChecked = $false
    }

        If ( $WPFUT19.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 1
    Disable-NetFirewallRule -Name "RemoteDesktop*"
    Write-host "Disabled Remote Desktop" 
    $WPFUT19.IsChecked = $false
    }

        If ( $WPFUT21.IsChecked -eq $true ) {
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name "HKU" -PSProvider "Registry" -Root "HKEY_USERS" | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483648
	Add-Type -AssemblyName System.Windows.Forms
	If ([System.Windows.Forms.Control]::IsKeyLocked('NumLock')) {
		$wsh = New-Object -ComObject WScript.Shell
		$wsh.SendKeys('{NUMLOCK}')
	}
    Write-host "Disabled NumLock after Startup" 
    $WPFUT21.IsChecked = $false
    }

        If ( $WPFUT2.IsChecked -eq $true ) {
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
        Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
    }
    Write-host "Enabled Background App Access" 
    $WPFUT2.IsChecked = $false
    }

        If ( $WPFUT4.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -ErrorAction SilentlyContinue
    Write-host "Enabled Automatic Maps Updates" 
    $WPFUT4.IsChecked = $false
    }

        If ( $WPFUT6.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -ErrorAction SilentlyContinue
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-host "Enabled Feedback" 
    $WPFUT6.IsChecked = $false
    }

        If ( $WPFUT8.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -ErrorAction SilentlyContinue
    Write-host "Enabled Tailored Experiences" 
    $WPFUT8.IsChecked = $false
    }

        If ( $WPFUT10.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -ErrorAction SilentlyContinue
    Write-host "Enabled Advertising ID" 
    $WPFUT10.IsChecked = $false
    }

        If ( $WPFUT12.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Name "EnabledV9" -ErrorAction SilentlyContinue
    Write-host "Enabled Smartscreen Filter" 
    $WPFUT12.IsChecked = $false
    }

        If ( $WPFUT14.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 1
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "AutoConnectAllowedOEM" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "WiFISenseAllowed" -ErrorAction SilentlyContinue
    Write-host "Enabled WiFi-Sense" 
    $WPFUT14.IsChecked = $false
    }

        If ( $WPFUT16.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 0
    Write-host "BIOS in Local Time" 
    $WPFUT16.IsChecked = $false
    }

        If ( $WPFUT18.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "SwapfileControl" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to libraries and file system from UWP apps..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" -Name "Value" -Type String -Value "Allow"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" -Name "Value" -Type String -Value "Allow"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" -Name "Value" -Type String -Value "Allow"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" -Name "Value" -Type String -Value "Allow"
    Write-Host "Enabling access to diagnostic information from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsGetDiagnosticInfo" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to other devices from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsSyncWithDevices" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to radios from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessRadios" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to messaging from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessMessaging" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to tasks from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTasks" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to email from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessEmail" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to call history from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCallHistory" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to phone calls from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessPhone" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to calendar from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCalendar" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to contacts from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessContacts" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to account info from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessAccountInfo" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to notifications from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessNotifications" -ErrorAction SilentlyContinue
    Write-Host "Enabling access to voice activation from UWP apps..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoice" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoiceAboveLock" -ErrorAction SilentlyContinue
    Write-Host "Enabling UWP apps background access..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsRunInBackground" -ErrorAction SilentlyContinue
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" | ForEach-Object {
        Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
    }
    Write-host "Enabled UWP App Access"  
    $WPFUT18.IsChecked = $false
    }

            If ( $WPFUT20.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 0
    Enable-NetFirewallRule -Name "RemoteDesktop*"
    Write-host "Enabled Remote Desktop" 
    $WPFUT20.IsChecked = $false
    }

            If ( $WPFUT22.IsChecked -eq $true ) {
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name "HKU" -PSProvider "Registry" -Root "HKEY_USERS" | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
	Add-Type -AssemblyName System.Windows.Forms
	If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
		$wsh = New-Object -ComObject WScript.Shell
		$wsh.SendKeys('{NUMLOCK}')
	}
    Write-host "Enabled NumLock after Startup" 
    $WPFUT22.IsChecked = $false
    }

        If ( $WPFUT23.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" -Name "29" -Type String -Value "%SystemRoot%\System32\imageres.dll,-1015"
    Write-host "Hided Shortcut Icon Arrow" 
    $WPFUT23.IsChecked = $false
    }

        If ( $WPFUT25.IsChecked -eq $true ) {
	Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type String -Value "0"
	Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type String -Value "0"
	Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type String -Value "0"
    Write-host "Disabled Enhanced Pointer Precision" 
    $WPFUT25.IsChecked = $false
    }

        If ( $WPFUT29.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -ErrorAction SilentlyContinue
    Write-host "Hided Seconds from Taskbar" 
    $WPFUT29.IsChecked = $false
    }

        If ( $WPFUT31.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "link" -Type Binary -Value ([byte[]](0,0,0,0))
    Write-host "Disabled adding '- Shortcut' to shorcut name" 
    $WPFUT31.IsChecked = $false
    }

        If ( $WPFUT42.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 0
    Write-host "Disabled News and Interests" 
    $WPFUT42.IsChecked = $false
    }

        If ( $WPFUT24.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" -Name "29" -ErrorAction SilentlyContinue
    Write-host "Showed Shortcut Icon Arrow" 
    $WPFUT24.IsChecked = $false
    }

        If ( $WPFUT26.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type String -Value "1"
	Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type String -Value "6"
	Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type String -Value "10"
    Write-host "Enabled Enhanced Pointer Precision" 
    $WPFUT26.IsChecked = $false
    }

        If ( $WPFUT30.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced")) {
		New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -Type DWord -Value 1
    Write-host "Showed Seconds from Taskbar" 
    $WPFUT30.IsChecked = $false
    }

        If ( $WPFUT32.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "link" -ErrorAction SilentlyContinue
    Write-host "Enabled adding '- Shortcut' to shorcut name" 
    $WPFUT32.IsChecked = $false
    }

        If ( $WPFUT44.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 1
    Write-Host "Reset News and Interests"
    $WPFUT44.IsChecked = $false
    }

        If ( $WPFUT34.IsChecked -eq $true ) {
    powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
    powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
    powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
    Write-host "Custom Powerplan Installed" 
    $WPFUT34.IsChecked = $false
    }

        If ( $WPFUT38.IsChecked -eq $true ) {
    fsutil behavior set DisableLastAccess 1
    fsutil behavior set EncryptPagingFile 0
    Write-host "Set Better SSD Use" 
    $WPFUT38.IsChecked = $false
    }

        If ( $WPFUT40.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
    Write-host "Set IRP Stack Size to 20" 
    $WPFUT40.IsChecked = $false
    }

        If ( $WPFUT45.IsChecked -eq $true ) {
    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://github.com/kolmogorov42/maiuscole-accentate/releases/download/1.0/ItaLinux.zip" -Destination "$env:TEMP\ItaLinux.zip"
    $zipPath = "$env:TEMP\ItaLinux.zip"
    $extractPath = "$env:TEMP"
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipPath, $extractPath)
    Start-Process -FilePath setup.exe
    Write-host "Added Accented Capitals" 
    $WPFUT45.IsChecked = $false
    }

        If ( $WPFUT28.IsChecked -eq $true ) {
    $obj = Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='$Drive'"
    $indexing = $obj.IndexingEnabled
    if("$indexing" -eq $True){
        write-host "Disabling indexing of drive $Drive"
        $obj | Set-WmiInstance -Arguments @{IndexingEnabled=$False} | Out-Null
    }
    Write-host "Disabled Indexing" 
    $WPFUT28.IsChecked = $false
    }

        If ( $WPFUT43.IsChecked -eq $true ) {
    $NoPDF = "HKCR:\.pdf"
    $NoProgids = "HKCR:\.pdf\OpenWithProgids"
    $NoWithList = "HKCR:\.pdf\OpenWithList" 
    If (!(Get-ItemProperty $NoPDF  NoOpenWith)) {
        New-ItemProperty $NoPDF NoOpenWith 
    }        
    If (!(Get-ItemProperty $NoPDF  NoStaticDefaultVerb)) {
        New-ItemProperty $NoPDF  NoStaticDefaultVerb 
    }        
    If (!(Get-ItemProperty $NoProgids  NoOpenWith)) {
        New-ItemProperty $NoProgids  NoOpenWith 
    }        
    If (!(Get-ItemProperty $NoProgids  NoStaticDefaultVerb)) {
        New-ItemProperty $NoProgids  NoStaticDefaultVerb 
    }        
    If (!(Get-ItemProperty $NoWithList  NoOpenWith)) {
        New-ItemProperty $NoWithList  NoOpenWith
    }        
    If (!(Get-ItemProperty $NoWithList  NoStaticDefaultVerb)) {
        New-ItemProperty $NoWithList  NoStaticDefaultVerb 
    }
        
    #Appends an underscore '_' to the Registry key for Edge
    $Edge = "HKCR:\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_"
    If (Test-Path $Edge) {
        Set-Item $Edge AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_ 
    } 
    Write-host "Disabled PDF Control in Edge" 
    $WPFUT43.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Utility Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Defender ##################
##########################################

$WPFTab6P1.Add_Click({
    $WPFd1.IsChecked = $false
    $WPFd2.IsChecked = $false
    $WPFd3.IsChecked = $false
    $WPFd4.IsChecked = $false
    $WPFd5.IsChecked = $false
    $WPFd6.IsChecked = $false
    $WPFd7.IsChecked = $false
    $WPFd8.IsChecked = $false
    $WPFd9.IsChecked = $false
    $WPFd10.IsChecked = $false
    $WPFd11.IsChecked = $false
    $WPFd12.IsChecked = $false
    $WPFd13.IsChecked = $false
    $WPFd14.IsChecked = $false
    $WPFd15.IsChecked = $false
    $WPFd16.IsChecked = $false
    $WPFd17.IsChecked = $false
    $WPFd18.IsChecked = $false
    $WPFd19.IsChecked = $false
    $WPFd20.IsChecked = $false
    $WPFd21.IsChecked = $false
    $WPFd22.IsChecked = $false
    $WPFd23.IsChecked = $false
    $WPFd24.IsChecked = $false
    $WPFd25.IsChecked = $true
    $WPFd26.IsChecked = $true
    $WPFd27.IsChecked = $true
    $WPFd28.IsChecked = $true
    $WPFd29.IsChecked = $true
    $WPFd30.IsChecked = $true
    $WPFd31.IsChecked = $true
    $WPFd32.IsChecked = $true
    $WPFd33.IsChecked = $true
    $WPFd34.IsChecked = $true
    $WPFd35.IsChecked = $true
    $WPFd36.IsChecked = $true
    $WPFd37.IsChecked = $true
    $WPFd38.IsChecked = $true
    $WPFd39.IsChecked = $true
    $WPFd40.IsChecked = $true
    $WPFd41.IsChecked = $true
    $WPFd42.IsChecked = $true
    $WPFd43.IsChecked = $true
    $WPFd44.IsChecked = $true
    $WPFd45.IsChecked = $true
    $WPFd46.IsChecked = $true
    $WPFd47.IsChecked = $true
    $WPFd48.IsChecked = $true

})

$WPFTab6P2.Add_Click({
    $WPFd1.IsChecked = $false
    $WPFd2.IsChecked = $true
    $WPFd3.IsChecked = $false
    $WPFd4.IsChecked = $true
    $WPFd5.IsChecked = $true
    $WPFd6.IsChecked = $false
    $WPFd7.IsChecked = $true
    $WPFd8.IsChecked = $false
    $WPFd9.IsChecked = $true
    $WPFd10.IsChecked = $true
    $WPFd11.IsChecked = $true
    $WPFd12.IsChecked = $false
    $WPFd13.IsChecked = $false
    $WPFd14.IsChecked = $true
    $WPFd15.IsChecked = $true
    $WPFd16.IsChecked = $false
    $WPFd17.IsChecked = $false
    $WPFd18.IsChecked = $false
    $WPFd19.IsChecked = $false
    $WPFd20.IsChecked = $false
    $WPFd21.IsChecked = $false
    $WPFd22.IsChecked = $false
    $WPFd23.IsChecked = $false
    $WPFd24.IsChecked = $false
    $WPFd25.IsChecked = $false
    $WPFd26.IsChecked = $false
    $WPFd27.IsChecked = $false
    $WPFd28.IsChecked = $false
    $WPFd29.IsChecked = $false
    $WPFd30.IsChecked = $false
    $WPFd31.IsChecked = $false
    $WPFd32.IsChecked = $false
    $WPFd33.IsChecked = $false
    $WPFd34.IsChecked = $false
    $WPFd35.IsChecked = $false
    $WPFd36.IsChecked = $false
    $WPFd37.IsChecked = $false
    $WPFd38.IsChecked = $false
    $WPFd39.IsChecked = $false
    $WPFd40.IsChecked = $false
    $WPFd41.IsChecked = $false
    $WPFd42.IsChecked = $false
    $WPFd43.IsChecked = $false
    $WPFd44.IsChecked = $true
    $WPFd45.IsChecked = $false
    $WPFd46.IsChecked = $false
    $WPFd47.IsChecked = $false
    $WPFd48.IsChecked = $false

})

$WPFTab6P3.Add_Click({
    $WPFd1.IsChecked = $true
    $WPFd2.IsChecked = $true
    $WPFd3.IsChecked = $true
    $WPFd4.IsChecked = $true
    $WPFd5.IsChecked = $true
    $WPFd6.IsChecked = $true
    $WPFd7.IsChecked = $true
    $WPFd8.IsChecked = $true
    $WPFd9.IsChecked = $true
    $WPFd10.IsChecked = $true
    $WPFd11.IsChecked = $true
    $WPFd12.IsChecked = $true
    $WPFd13.IsChecked = $true
    $WPFd14.IsChecked = $true
    $WPFd15.IsChecked = $true
    $WPFd16.IsChecked = $true
    $WPFd17.IsChecked = $false
    $WPFd18.IsChecked = $true
    $WPFd19.IsChecked = $true
    $WPFd20.IsChecked = $true
    $WPFd21.IsChecked = $true
    $WPFd22.IsChecked = $true
    $WPFd23.IsChecked = $true
    $WPFd24.IsChecked = $true
    $WPFd25.IsChecked = $false
    $WPFd26.IsChecked = $false
    $WPFd27.IsChecked = $false
    $WPFd28.IsChecked = $false
    $WPFd29.IsChecked = $false
    $WPFd30.IsChecked = $false
    $WPFd31.IsChecked = $false
    $WPFd32.IsChecked = $false
    $WPFd33.IsChecked = $false
    $WPFd34.IsChecked = $false
    $WPFd35.IsChecked = $false
    $WPFd36.IsChecked = $false
    $WPFd37.IsChecked = $false
    $WPFd38.IsChecked = $false
    $WPFd39.IsChecked = $false
    $WPFd40.IsChecked = $false
    $WPFd41.IsChecked = $false
    $WPFd42.IsChecked = $false
    $WPFd43.IsChecked = $false
    $WPFd44.IsChecked = $false
    $WPFd45.IsChecked = $false
    $WPFd46.IsChecked = $false
    $WPFd47.IsChecked = $false
    $WPFd48.IsChecked = $false

})

$WPFTab6P4.Add_Click({
        If ( $WPFd1.IsChecked -eq $true ) {
    Set-MpPreference -EnableControlledFolderAccess Disabled -ErrorAction SilentlyContinue
    Write-Host "Disabled Controlled Folder Access"        
    $WPFd1.IsChecked = $false
    }

        If ( $WPFd2.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -ErrorAction SilentlyContinue
    Write-Host "Disabled Core Isolation Memory Integrity"
    $WPFd2.IsChecked = $false
    }

        If ( $WPFd3.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -online -FeatureName "Windows-Defender-ApplicationGuard" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Disabled Windows Defender Application Guard"
    $WPFd3.IsChecked = $false
    }

        If ( $WPFd4.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows Security Health\State")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows Security Health\State" -Force | Out-Null
    }
    Set-ItemProperty "HKCU:\Software\Microsoft\Windows Security Health\State" -Name "AccountProtection_MicrosoftAccount_Disconnected" -Type DWord -Value 1
    Write-Host "Hided Account Protection Warning"
    $WPFd4.IsChecked = $false
    }

        If ( $WPFd5.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" -Name "SaveZoneInformation" -Type DWord -Value 1
    Write-Host "Disabled Block of Downloaded Files"
    $WPFd5.IsChecked = $false
    }

        If ( $WPFd6.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name "Enabled" -Type DWord -Value 0
    Write-Host "Disabled Windows Script Host"
    $WPFd6.IsChecked = $false
    }

        If ( $WPFd7.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -ErrorAction SilentlyContinue
    Write-Host "Disabled .NET Strong Cryptography"
    $WPFd7.IsChecked = $false
    }

        If ( $WPFd8.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -ErrorAction SilentlyContinue
    Write-Host "Disalbed Meltdown (CVE-2017-5754) Compatibility Flag"
    $WPFd8.IsChecked = $false
    }

        If ( $WPFd9.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
    Write-Host "Minimum UAC Level"
    $WPFd9.IsChecked = $false
    }

        If ( $WPFd10.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -ErrorAction SilentlyContinue
    Write-Host "Disabled Share Mapped Drives Between Users"
    $WPFd10.IsChecked = $false
    }

        If ( $WPFd11.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareWks" -Type DWord -Value 0
    Write-Host "Disabled Implicit Administrative Shares"
    $WPFd11.IsChecked = $false
    }

        If ( $WPFd12.IsChecked -eq $true ) {
    Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
    Set-SmbServerConfiguration -EnableSMB2Protocol $false -Force
    Write-Host "Disabled SMB Server"
    $WPFd12.IsChecked = $false
    }

        If ( $WPFd13.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -Type DWord -Value 0
    Write-Host "Disabled LLMNR"
    $WPFd13.IsChecked = $false
    }

        If ( $WPFd14.IsChecked -eq $true ) {
    Set-NetConnectionProfile -NetworkCategory Private
    Write-Host "Set Current Network Profile to Private"
    $WPFd14.IsChecked = $false
    }

        If ( $WPFd15.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24" -Name "Category" -Type DWord -Value 1
    Write-Host "Set Unknown Networks Profile to Private"
    $WPFd15.IsChecked = $false
    }

        If ( $WPFd16.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private" -Name "AutoSetup" -Type DWord -Value 0
    Write-Host "Disabled Automatic Installation of Network Devices"
    $WPFd16.IsChecked = $false
    }

        If ( $WPFd17.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Name "EnableFirewall" -Type DWord -Value 0
    Write-Host "Disabled Firewall"
    $WPFd17.IsChecked = $false
    }

        If ( $WPFd18.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Type DWord -Value 1
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
    } ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defende\Real-Time Protectionr")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableRealtimeMonitoring" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableBehaviorMonitoring" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableOnAccessProtection" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableScanOnRealtimeEnable" -Type DWord -Value 1
    Write-Host "Disabled Windows Defender"
    $WPFd18.IsChecked = $false
    }

        If ( $WPFd19.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -Type DWord -Value 2
    Write-Host "Disabled Windows Defender Cloud"
    $WPFd19.IsChecked = $false
    }

        If ( $WPFd20.IsChecked -eq $true ) {
    bcdedit /set `{current`} bootmenupolicy Standard | Out-Null
    Write-Host "Disabled F8 Boot Menu Options"
    $WPFd20.IsChecked = $false
    }

        If ( $WPFd21.IsChecked -eq $true ) {
    Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces\Tcpip*" -Name "NetbiosOptions" -Type DWord -Value 2
    Write-Host "Disabled NetBIOS over TCP/IP"
    $WPFd21.IsChecked = $false
    }

        If ( $WPFd22.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections" -Name "NC_ShowSharedAccessUI" -Type DWord -Value 0
    Write-Host "Disabled Internet Connection Sharing"
    $WPFd22.IsChecked = $false
    }

        If ( $WPFd23.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -Name "HideSystray" -Type DWord -Value 1
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
    } ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
    }
    Write-Host "Hide Windows Defender SysTray Icon"
    $WPFd23.IsChecked = $false
    }

        If ( $WPFd24.IsChecked -eq $true ) {
    Takeown-Registry("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend")
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" "Start" 4
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" "AutorunsDisabled" 3
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" "Start" 4
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" "AutorunsDisabled" 3
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" "Start" 4
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" "AutorunsDisabled" 3
    Write-Host "Disabled Windows Defender Services"
    $WPFd24.IsChecked = $false
    }

        If ( $WPFd25.IsChecked -eq $true ) {
    Set-MpPreference -EnableControlledFolderAccess Enabled -ErrorAction SilentlyContinue
    Write-Host "Enabled Controlled Folder Access"
    $WPFd25.IsChecked = $false
    }

        If ( $WPFd26.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity")) {
    New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -Type DWord -Value 1
    Write-Host "Enabled Core Isolation Memory Integrity"
    $WPFd26.IsChecked = $false
    }

        If ( $WPFd27.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -online -FeatureName "Windows-Defender-ApplicationGuard" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Enabled Windows Defender Application Guard"
    $WPFd27.IsChecked = $false
    }

        If ( $WPFd28.IsChecked -eq $true ) {
    Remove-ItemProperty "HKCU:\Software\Microsoft\Windows Security Health\State" -Name "AccountProtection_MicrosoftAccount_Disconnected" -ErrorAction SilentlyContinue
    Write-Host "Show Account Protection Warning"
    $WPFd28.IsChecked = $false
    }

        If ( $WPFd29.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" -Name "SaveZoneInformation" -ErrorAction SilentlyContinue        
    Write-Host "Enabled Block of Downloaded Files"
    $WPFd29.IsChecked = $false
    }

        If ( $WPFd30.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name "Enabled" -ErrorAction SilentlyContinue
    Write-Host "Enabled Windows Script Host"
    $WPFd30.IsChecked = $false
    }

        If ( $WPFd31.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v4.0.30319" -Name "SchUseStrongCrypto" -Type DWord -Value 1
    Write-Host "Enabled .NET Strong Cryptography"
    $WPFd31.IsChecked = $false
    }

        If ( $WPFd32.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -Type DWord -Value 0
    Write-Host "Enabled Meltdown (CVE-2017-5754) Compatibility Flag"
    $WPFd32.IsChecked = $false
    }

        If ( $WPFd33.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
    Write-Host "Maximum UAC Level"
    $WPFd33.IsChecked = $false
    }

        If ( $WPFd34.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -Type DWord -Value 1
    Write-Host "Enabled Share Mapped Drives Between Users"
    $WPFd34.IsChecked = $false
    }

        If ( $WPFd35.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "AutoShareWks" -ErrorAction SilentlyContinue
    Write-Host "Enabled Implicit Administrative Shares"
    $WPFd35.IsChecked = $false
    }

        If ( $WPFd36.IsChecked -eq $true ) {
    Set-SmbServerConfiguration -EnableSMB2Protocol $true -Force
    Write-Host "Enabled SMB Server"
    $WPFd36.IsChecked = $false
    }

        If ( $WPFd37.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -ErrorAction SilentlyContinue
    Write-Host "Enabled LLMNR"
    $WPFd37.IsChecked = $false
    }

        If ( $WPFd38.IsChecked -eq $true ) {
    Set-NetConnectionProfile -NetworkCategory Public
    Write-Host "Set Current Network Profile to Public"
    $WPFd38.IsChecked = $false
    }

        If ( $WPFd39.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24" -Name "Category" -ErrorAction SilentlyContinue
    Write-Host "Set Unknown Networks Profile to Public"
    $WPFd39.IsChecked = $false
    }

        If ( $WPFd40.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\NcdAutoSetup\Private" -Name "AutoSetup" -ErrorAction SilentlyContinue
    Write-Host "Enabled Automatic Installation of Network Devices"
    $WPFd40.IsChecked = $false
    }

        If ( $WPFd41.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Name "EnableFirewall" -ErrorAction SilentlyContinue
    Write-Host "Enabled Firewall"
    $WPFd41.IsChecked = $false
    }

        If ( $WPFd42.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -ErrorAction SilentlyContinue
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
    } ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
    }
    Write-Host "Enabled Windows Defender"
    $WPFd42.IsChecked = $false
    }

        If ( $WPFd43.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -ErrorAction SilentlyContinue
    Write-Host "Enabled Windows Defender Cloud"
    $WPFd43.IsChecked.IsChecked = $false
    }

        If ( $WPFd44.IsChecked -eq $true ) {
    bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Enabled F8 Boot Menu Options"
    $WPFd44.IsChecked = $false
    }

        If ( $WPFd45.IsChecked -eq $true ) {
    Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces\Tcpip*" -Name "NetbiosOptions" -Type DWord -Value 0
    Write-Host "Enabled NetBIOS over TCP/IP"
    $WPFd45.IsChecked = $false
    }

        If ( $WPFd46.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections" -Name "NC_ShowSharedAccessUI" -ErrorAction SilentlyContinue
    Write-Host "Enabled Internet Connection Sharing"
    $WPFd46.IsChecked = $false
    }

        If ( $WPFd47.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" -Name "HideSystray" -ErrorAction SilentlyContinue
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
    } ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063 -And [System.Environment]::OSVersion.Version.Build -le 17134) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "%ProgramFiles%\Windows Defender\MSASCuiL.exe"
    } ElseIf ([System.Environment]::OSVersion.Version.Build -ge 17763) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "%windir%\system32\SecurityHealthSystray.exe"
    }
    Write-Host "Show Windows Defender SysTray"
    $WPFd46.IsChecked = $false
    }

        If ( $WPFd48.IsChecked -eq $true ) {
    Takeown-Registry("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend")
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" "Start" 3
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" "AutorunsDisabled" 4
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" "Start" 3
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" "AutorunsDisabled" 4
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" "Start" 3
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" "AutorunsDisabled" 4
    Write-Host "Enabled Windows Defender Services"
    $WPFd46.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Defender Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Update ####################
##########################################

$WPFTab7P1.Add_Click({
    $WPFu1.IsChecked = $false
    $WPFu2.IsChecked = $false
    $WPFu3.IsChecked = $false
    $WPFu4.IsChecked = $false
    $WPFu5.IsChecked = $false
    $WPFu6.IsChecked = $false
    $WPFu7.IsChecked = $false
    $WPFu8.IsChecked = $false
    $WPFu9.IsChecked = $false
    $WPFu10.IsChecked = $true
    $WPFu11.IsChecked = $true
    $WPFu12.IsChecked = $true
    $WPFu13.IsChecked = $true
    $WPFu14.IsChecked = $true
    $WPFu15.IsChecked = $true
    $WPFu16.IsChecked = $true
    $WPFu17.IsChecked = $true
    $WPFu18.IsChecked = $true

})

$WPFTab7P2.Add_Click({
    $WPFu1.IsChecked = $true
    $WPFu2.IsChecked = $true
    $WPFu3.IsChecked = $false
    $WPFu4.IsChecked = $false
    $WPFu5.IsChecked = $true
    $WPFu6.IsChecked = $false
    $WPFu7.IsChecked = $true
    $WPFu8.IsChecked = $true
    $WPFu9.IsChecked = $true
    $WPFu10.IsChecked = $false
    $WPFu11.IsChecked = $false
    $WPFu12.IsChecked = $false
    $WPFu13.IsChecked = $false
    $WPFu14.IsChecked = $false
    $WPFu15.IsChecked = $false
    $WPFu16.IsChecked = $false
    $WPFu17.IsChecked = $false
    $WPFu18.IsChecked = $false

})

$WPFTab7P3.Add_Click({
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 3
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1

    $services = @(
        "BITS"
        "wuauserv"
    )

    foreach ($service in $services) {
        # -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist

        Write-Host "Setting $service StartupType to Automatic"
        Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Automatic
    }
    Write-Host "Enabling driver offering through Windows Update..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
    Write-Host "Enabling Windows Update automatic restart..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
    Write-Host "Enabled driver offering through Windows Update"
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "BranchReadinessLevel" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferFeatureUpdatesPeriodInDays" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferQualityUpdatesPeriodInDays" -ErrorAction SilentlyContinue
    Write-Host "Windows Update Settings Reset to Default"

})

$WPFTab7P4.Add_Click({
        If ( $WPFu1.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "WakeUp" -Type DWord -Value 0
    Write-Host "Disabled Nightly Wake-Up for Automatic Maintenance"
    $WPFu1.IsChecked = $false
    }

        If ( $WPFu2.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 2
    }
    Write-Host "Disabled Windows Update Automatic Downloads"
    $WPFu2.IsChecked = $false
    }

        If ( $WPFu3.IsChecked -eq $true ) {
    If ((New-Object -ComObject Microsoft.Update.ServiceManager).Services | Where-Object { $_.ServiceID -eq "7971f918-a847-4430-9279-4a52d1efe18d"}) {
    (New-Object -ComObject Microsoft.Update.ServiceManager).RemoveService("7971f918-a847-4430-9279-4a52d1efe18d") | Out-Null
    }
    Write-Host "Disabled Updates for Other Microsoft Products"
    $WPFu3.IsChecked = $false
    }

        If ( $WPFu4.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -Type DWord -Value 1
    Write-Host "Disabled Malicious Software Removal Tool Offering"
    $WPFu4.IsChecked = $false
    }

        If ( $WPFu5.IsChecked -eq $true ) {
    If ([System.Environment]::OSVersion.Version.Build -eq 10240) {
    # Method used in 1507
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
    } ElseIf ([System.Environment]::OSVersion.Version.Build -le 14393) {
    # Method used in 1511 and 1607
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Type DWord -Value 1
    } Else {
    # Method used since 1703
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -ErrorAction SilentlyContinue
    }
    Write-Host "Restrict Windows Update P2P Optimization to Local Network"
    $WPFu5.IsChecked = $false
    }

        If ( $WPFu6.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "SearchOrderConfig" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Disabled Driver Download from Windows Update"
    $WPFu6.IsChecked = $false
    }

        If ( $WPFu7.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Name "Debugger" -Type String -Value "cmd.exe"
    Write-Host "Disabled Windows Update Automatic Restart"
    $WPFu7.IsChecked = $false
    }

        If ( $WPFu8.IsChecked -eq $true ) {
    takeown /F "$env:WinDIR\System32\MusNotification.exe"
    icacls "$env:WinDIR\System32\MusNotification.exe" /deny "$($EveryOne):(X)"
    takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
    icacls "$env:WinDIR\System32\MusNotificationUx.exe" /deny "$($EveryOne):(X)"
    Write-Host "Disabled Update Notifications"
    $WPFu8.IsChecked = $false
    }

        If ( $WPFu9.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Disabling Windows Update automatic restart..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
    Write-Host "Only Security Update"
    $WPFu9.IsChecked = $false
    }

        If ( $WPFu10.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "WakeUp" -ErrorAction SilentlyContinue
    Write-Host "Enabled Nightly Wake-Up for Automatic Maintenance"
    $WPFu10.IsChecked = $false
    }

        If ( $WPFu11.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -ErrorAction SilentlyContinue
    Write-Host "Enabled Windows Update Automatic Downloads"
    $WPFu11.IsChecked = $false
    }

        If ( $WPFu12.IsChecked -eq $true ) {
    (New-Object -ComObject Microsoft.Update.ServiceManager).AddService2("7971f918-a847-4430-9279-4a52d1efe18d", 7, "") | Out-Null
    Write-Host "Enabled Updates for Other Microsoft Products"
    $WPFu12.IsChecked = $false
    }

        If ( $WPFu13.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -ErrorAction SilentlyContinue
    Write-Host "Enabled Malicious Software Removal Tool Offering"
    $WPFu13.IsChecked = $false
    }

    If ( $WPFu14.IsChecked -eq $true ) {
    If ([System.Environment]::OSVersion.Version.Build -eq 10240) {
    # Method used in 1507
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 3
    } ElseIf ([System.Environment]::OSVersion.Version.Build -le 14393) {
    # Method used in 1511 and 1607
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -ErrorAction SilentlyContinue
    } Else {
    # Method used since 1703
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Type DWord -Value 3
    }
    Write-Host "Unrestrict Windows Update P2P Optimization to Local Network"
    $WPFu14.IsChecked = $false
    }

        If ( $WPFu15.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "SearchOrderConfig" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue  
    Write-Host "Enabled Driver Download from Windows Update"
    $WPFu15.IsChecked = $false
    }

        If ( $WPFu16.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.exe" -Name "Debugger" -ErrorAction SilentlyContinue
    Write-Host "Enabled Windows Update Automatic Restart"
    $WPFu16.IsChecked = $false
    }

        If ( $WPFu17.IsChecked -eq $true ) {
    takeown /F "$env:WinDIR\System32\MusNotification.exe"
    icacls "$env:WinDIR\System32\MusNotification.exe" /allow "$($EveryOne):(X)"
    takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
    icacls "$env:WinDIR\System32\MusNotificationUx.exe" /allow "$($EveryOne):(X)"
    Write-Host "Enabled Update Notifications"
    $WPFu17.IsChecked = $false
    }

        If ( $WPFu18.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
    Write-Host "Default Windows Update"
    $WPFu18.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Update Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Application ###############
##########################################

$WPFTab8P1.Add_Click({
    $WPFa1.IsChecked = $false
    $WPFa2.IsChecked = $false
    $WPFa3.IsChecked = $false
    $WPFa4.IsChecked = $false
    $WPFa5.IsChecked = $false
    $WPFa6.IsChecked = $false
    $WPFa7.IsChecked = $false
    $WPFa8.IsChecked = $false
    $WPFa9.IsChecked = $false
    $WPFa10.IsChecked = $false
    $WPFa11.IsChecked = $false
    $WPFa12.IsChecked = $false
    $WPFa13.IsChecked = $false
    $WPFa14.IsChecked = $false
    $WPFa15.IsChecked = $false
    $WPFa16.IsChecked = $false
    $WPFa17.IsChecked = $false
    $WPFa18.IsChecked = $false
    $WPFa19.IsChecked = $false
    $WPFa20.IsChecked = $false
    $WPFa21.IsChecked = $false
    $WPFa22.IsChecked = $false
    $WPFa23.IsChecked = $false
    $WPFa24.IsChecked = $true
    $WPFa25.IsChecked = $true
    $WPFa26.IsChecked = $true
    $WPFa27.IsChecked = $true
    $WPFa28.IsChecked = $false
    $WPFa29.IsChecked = $false
    $WPFa30.IsChecked = $false
    $WPFa31.IsChecked = $true
    $WPFa32.IsChecked = $true
    $WPFa33.IsChecked = $true
    $WPFa34.IsChecked = $false
    $WPFa35.IsChecked = $true
    $WPFa36.IsChecked = $false
    $WPFa37.IsChecked = $false

})

$WPFTab8P2.Add_Click({
    $WPFa1.IsChecked = $true
    $WPFa2.IsChecked = $true
    $WPFa3.IsChecked = $true
    $WPFa4.IsChecked = $true
    $WPFa5.IsChecked = $false
    $WPFa6.IsChecked = $true
    $WPFa7.IsChecked = $false
    $WPFa8.IsChecked = $true
    $WPFa9.IsChecked = $true
    $WPFa10.IsChecked = $true
    $WPFa11.IsChecked = $true
    $WPFa12.IsChecked = $true
    $WPFa13.IsChecked = $true
    $WPFa14.IsChecked = $false
    $WPFa15.IsChecked = $false
    $WPFa16.IsChecked = $true
    $WPFa17.IsChecked = $true
    $WPFa18.IsChecked = $false
    $WPFa19.IsChecked = $false
    $WPFa20.IsChecked = $true
    $WPFa21.IsChecked = $false
    $WPFa22.IsChecked = $false
    $WPFa23.IsChecked = $true
    $WPFa24.IsChecked = $false
    $WPFa25.IsChecked = $false
    $WPFa26.IsChecked = $false
    $WPFa27.IsChecked = $false
    $WPFa28.IsChecked = $false
    $WPFa29.IsChecked = $false
    $WPFa30.IsChecked = $false
    $WPFa31.IsChecked = $false
    $WPFa32.IsChecked = $false
    $WPFa33.IsChecked = $false
    $WPFa34.IsChecked = $false
    $WPFa35.IsChecked = $false
    $WPFa36.IsChecked = $false
    $WPFa37.IsChecked = $false

})

$WPFTab8P3.Add_Click({
    $WPFa1.IsChecked = $true
    $WPFa2.IsChecked = $true
    $WPFa3.IsChecked = $true
    $WPFa4.IsChecked = $true
    $WPFa5.IsChecked = $false
    $WPFa6.IsChecked = $false
    $WPFa7.IsChecked = $false
    $WPFa8.IsChecked = $true
    $WPFa9.IsChecked = $true
    $WPFa10.IsChecked = $true
    $WPFa11.IsChecked = $true
    $WPFa12.IsChecked = $true
    $WPFa13.IsChecked = $true
    $WPFa14.IsChecked = $false
    $WPFa15.IsChecked = $true
    $WPFa16.IsChecked = $true
    $WPFa17.IsChecked = $true
    $WPFa18.IsChecked = $false
    $WPFa19.IsChecked = $false
    $WPFa20.IsChecked = $true
    $WPFa21.IsChecked = $false
    $WPFa22.IsChecked = $false
    $WPFa23.IsChecked = $true
    $WPFa24.IsChecked = $false
    $WPFa25.IsChecked = $false
    $WPFa26.IsChecked = $false
    $WPFa27.IsChecked = $false
    $WPFa28.IsChecked = $false
    $WPFa29.IsChecked = $false
    $WPFa30.IsChecked = $false
    $WPFa31.IsChecked = $false
    $WPFa32.IsChecked = $false
    $WPFa33.IsChecked = $false
    $WPFa34.IsChecked = $false
    $WPFa35.IsChecked = $false
    $WPFa36.IsChecked = $false
    $WPFa37.IsChecked = $false

})

$WPFTab8P4.Add_Click({
        If ( $WPFa1.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1
    Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
    Start-Sleep -s 2
    $onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
    If (!(Test-Path $onedrive)) {
    $onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
    }
    Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
    Start-Sleep -s 2
    Remove-Item -Path "$env:USERPROFILE\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
    }
    Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Remove OneDrive"
    $WPFa1.IsChecked = $false
    }

        If ( $WPFa2.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Disabled Windows Media Player"
    $WPFa2.IsChecked = $false
    }

        If ( $WPFa3.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-$env:PROCESSOR_ARCHITECTURE" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Disabled Internet Explorer"
    $WPFa3.IsChecked = $false
    }

        If ( $WPFa4.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Disabled Work Folders"
    $WPFa4.IsChecked = $false
    }

        If ( $WPFa5.IsChecked -eq $true ) {
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 0
    }
    Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Disabled WSL (Linux Subsystem)"
    $WPFa5.IsChecked = $false
    }

        If ( $WPFa6.IsChecked -eq $true ) {
    If ((Get-WmiObject -Class "Win32_OperatingSystem").Caption -like "*Server*") {
    Uninstall-WindowsFeature -Name "Hyper-V" -IncludeManagementTools -WarningAction SilentlyContinue | Out-Null
    } Else {
    Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -NoRestart -WarningAction SilentlyContinue | Out-Null
    }
    Write-Host "Disabled Hyper-V"
    $WPFa6.IsChecked = $false
    }

        If ( $WPFa7.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
    }
    Remove-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Remove PhotoViewer from Context Menu"
    $WPFa7.IsChecked = $false
    }

        If ( $WPFa8.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Remove Microsoft Print to PDF"
    $WPFa8.IsChecked = $false
    }

        If ( $WPFa9.IsChecked -eq $true ) {
    Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Remove Microsoft XPS Document Writer"
    $WPFa9.IsChecked = $false
    }

        If ( $WPFa10.IsChecked -eq $true ) {
    Remove-Printer -Name "Fax" -ErrorAction SilentlyContinue
    Write-Host "Remove Fax Printer"
    $WPFa10.IsChecked = $false
    }

        If ( $WPFa11.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -ErrorAction SilentlyContinue
    Write-Host "Remove Developer Mode"
    $WPFa11.IsChecked = $false
    }

        If ( $WPFa12.IsChecked -eq $true ) {
    Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Remove-WindowsCapability -Online | Out-Null
    Write-Host "Remove Math Recognizer"
    $WPFa12.IsChecked = $false
    }

        If ( $WPFa13.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" "BackupPolicy" 0x3c
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" "DeviceMetadataUploaded" 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" "PriorLogons" 1
    $groups = @(
    "Accessibility"
    "AppSync"
    "BrowserSettings"
    "Credentials"
    "DesktopTheme"
    "Language"
    "PackageState"
    "Personalization"
    "StartLayout"
    "Windows"
    )
    foreach ($group in $groups) {
    New-FolderForced -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\$group"
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\$group" "Enabled" 0
    }     
    Write-Host "Disabled Setting Sync"
    $WPFa13.IsChecked = $false
    }

        If ( $WPFa14.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\services\wlidsvc" -Name Start -Type "DWORD" -Value 4 -Force
    Set-Service wlidsvc -StartupType Disabled
    Write-Host "Disabled Windows Live ID Service"
    $WPFa14.IsChecked = $false
    }

        If ( $WPFa15.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
    Write-Host "Performance Settings FX"
    $WPFa15.IsChecked = $false
    }

        If ( $WPFa16.IsChecked -eq $true ) {
    Stop-Process -Force -Force -Name  ccleaner.exe
    Stop-Process -Force -Force -Name  ccleaner64.exe
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "HomeScreen" -Type "String" -Value 2 -Force
    Stop-Process -Force -Force -Name "IMAGENAME eq CCleaner*"
    schtasks /Change /TN "CCleaner Update" /Disable
    Get-ScheduledTask -TaskName "CCleaner Update" | Disable-ScheduledTask
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "Monitoring" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "HelpImproveCCleaner" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "SystemMonitoring" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "UpdateAuto" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "UpdateCheck" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Piriform\CCleaner" -Name "CheckTrialOffer" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)HealthCheck" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)QuickClean" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)QuickCleanIpm" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)GetIpmForTrial" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)SoftwareUpdater" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Piriform\CCleaner" -Name "(Cfg)SoftwareUpdaterIpm" -Type "DWORD" -Value 0 -Force
    Write-Host "Disabled CCleaner Telemetry"
    $WPFa16.IsChecked = $false
    }

        If ( $WPFa17.IsChecked -eq $true ) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" -Name "DisableTelemetry" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" -Name "DisableTelemetry" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" -Name "VerboseLogging" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" -Name "VerboseLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Mail" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Mail" -Name "EnableLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail" -Name "EnableLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Calendar" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Calendar" -Name "EnableCalendarLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Calendar" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Calendar" -Name "EnableCalendarLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Word\Options" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Word\Options" -Name "EnableLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Word\Options" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Word\Options" -Name "EnableLogging" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" -Name "EnableLogging" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" -Name "EnableUpload" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" -Name "EnableLogging" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" -Name "EnableUpload" -Type "DWORD" -Value 0 -Force
    schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /DISABLE
    schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /DISABLE
    schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /DISABLE
    schtasks /change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /DISABLE
    schtasks /change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /DISABLE
    schtasks /change /TN "Microsoft\Office\Office 16 Subscription Heartbeat" /DISABLE
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Common\Feedback" -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\Feedback" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Common\Feedback" -Name "Enabled" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\Feedback" -Name "Enabled" -Type "DWORD" -Value 0 -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Common" -Force
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common" -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\15.0\Common" -Name "QMEnable" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common" -Name "QMEnable" -Type "DWORD" -Value 0 -Force
    Write-Host "Disabled Office Telemetry"
    $WPFa17.IsChecked = $false
    }

        If ( $WPFa18.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Adobe\Adobe ARM\1.0\ARM" -Name "iCheck" -Type "String" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown" -Name "cSharePoint" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bToggleAdobeDocumentServices" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bToggleAdobeSign" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bTogglePrefSync" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bToggleWebConnectors" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bAdobeSendPluginToggle" -Type "String" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockdown\cServices" -Name "bUpdater" -Type "String" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Adobe\Adobe ARM\1.0\ARM" -Name "iCheck" -Type "String" -Value 0 -Force
    Set-Service "Adobe Acrobat Update Task" -StartupType Disabled
    Set-Service "Adobe Flash Player Updater" -StartupType Disabled
    Set-Service "adobeflashplayerupdatesvc" -StartupType Disabled
    Set-Service "adobeupdateservice" -StartupType Disabled
    Set-Service "AdobeARMservice" -StartupType Disabled
    Write-Host "Disabled Adobe Telemetry"
    $WPFa18.IsChecked = $false
    }

        If ( $WPFa19.IsChecked -eq $true ) {
    Set-Service dbupdate -StartupType Disabled
    Set-Service dbupdatem -StartupType Disabled
    Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineCore" | Disable-ScheduledTask
    Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineUA" | Disable-ScheduledTask
    #schtasks /Change /TN "DropboxUpdateTaskMachineCore" /Disable
    #schtasks /Change /TN "DropboxUpdateTaskMachineUA" /Disable
    Write-Host "Disabled Dropbox Telemetry"
    $WPFa19.IsChecked = $false
    }

        If ( $WPFa20.IsChecked -eq $true ) {
    Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineCore" | Disable-ScheduledTask
    Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineUA" | Disable-ScheduledTask
    #schtasks /Change /TN "GoogleUpdateTaskMachineCore" /Disable
    #schtasks /Change /TN "GoogleUpdateTaskMachineUA" /Disable
    Write-Host "Disabled Google Update Service"
    $WPFa20.IsChecked = $false
    }

        If ( $WPFa21.IsChecked -eq $true ) {
    Stop-Service "LogiRegistryService"
    Set-Service "LogiRegistryService" -StartupType Disabled
    Write-Host "Disabled Logitech Telemetry"
    $WPFa21.IsChecked = $false
    }

        If ( $WPFa22.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\VSCommon\14.0\SQM" -Name "OptIn" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\VSCommon\15.0\SQM" -Name "OptIn" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\VSCommon\16.0\SQM" -Name "OptIn" -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\VSCommon\14.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\VSCommon\15.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\VSCommon\16.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\VSCommon\14.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\VSCommon\15.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\VSCommon\16.0\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\VisualStudio\SQM" -Name OptIn -Type "DWORD" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\VisualStudio\Telemetry" -Name TurnOffSwitch -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\VisualStudio\Feedback" -Name "DisableFeedbackDialog" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\VisualStudio\Feedback" -Name "DisableEmailInput" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\VisualStudio\Feedback" -Name "DisableScreenshotCapture" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\VisualStudio\Telemetry" -Name "TurnOffSwitch" -Type "DWORD" -Value 1 -Force
    Stop-Service "VSStandardCollectorService150"
    Set-Service "VSStandardCollectorService150" -StartupType Disabled
    Write-Host "Disabled Vs Code Telemetry"
    $WPFa22.IsChecked = $false
    }

        If ( $WPFa23.IsChecked -eq $true ) {
    New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "ChromeCleanupEnabled" -Type "String" -Value 0 -Force
    New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "ChromeCleanupReportingEnabled" -Type "String" -Value 0 -Force
    New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "MetricsReportingEnabled" -Type "String" -Value 0 -Force
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "DisallowRun" -Type "DWORD" -Value 1 -Force
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" -Name "1" -Type "String" -Value "software_reporter_tool.exe" /f
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\software_reporter_tool.exe" -Name Debugger -Type "String" -Value "%windir%\System32\taskkill.exe" -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Google\Chrome" -Name "ChromeCleanupEnabled" -Type "String" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Google\Chrome" -Name "ChromeCleanupReportingEnabled" -Type "String" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\Software\Policies\Google\Chrome" -Name "MetricsReportingEnabled" -Type "String" -Value 0 -Force
    Write-Host "Disabled Chrome Telemetry"
    $WPFa23.IsChecked = $false
    }

        If ( $WPFa24.IsChecked -eq $true ) {
    $onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
	If (!(Test-Path $onedrive)) {
    $onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
	}
	Start-Process $onedrive -NoNewWindow
    Write-Host "Reinstall OneDrive"
    $WPFa24.IsChecked = $false
    }

        If ( $WPFa25.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Reactive Windows Media Player"
    $WPFa25.IsChecked = $false
    }

        If ( $WPFa26.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-$env:PROCESSOR_ARCHITECTURE" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Reactive Internet Explorer"
    $WPFa26.IsChecked = $false
    }

        If ( $WPFa27.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Reactive Work Folders"
    $WPFa27.IsChecked = $false
    }

        If ( $WPFa28.IsChecked -eq $true ) {
    If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
    # 1607 needs developer mode to be enabled
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 1
    }
    Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Reactive WSL (Linux Subsystem)"
    $WPFa28.IsChecked = $false
    }

        If ( $WPFa29.IsChecked -eq $true ) {
    If ((Get-WmiObject -Class "Win32_OperatingSystem").Caption -like "*Server*") {
    Install-WindowsFeature -Name "Hyper-V" -IncludeManagementTools -WarningAction SilentlyContinue | Out-Null
    } Else {
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -NoRestart -WarningAction SilentlyContinue | Out-Null
    }
    Enable-WindowsOptionalFeature -Online -FeatureName "HypervisorPlatform" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Tools-All" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-PowerShell" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Hypervisor" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Services" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-Clients" -All
    cmd /c bcdedit /set hypervisorschedulertype classic
    Write-Host "Reactive Hyper-V"
    $WPFa29.IsChecked = $false
    }

        If ( $WPFa30.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
    }
    New-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open\command" -Force | Out-Null
    New-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open\DropTarget" -Force | Out-Null
    Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open" -Name "MuiVerb" -Type String -Value "@photoviewer.dll,-3043"
    Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open\command" -Name "(Default)" -Type ExpandString -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
    Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open\DropTarget" -Name "Clsid" -Type String -Value "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
    Write-Host "Add PhotoViewer to Context Menu"
    $WPFa30.IsChecked = $false
    }

        If ( $WPFa31.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Add Microsoft Print to PDF"
    $WPFa31.IsChecked = $false
    }

        If ( $WPFa32.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
    Write-Host "Add Microsoft XPS Document Writer"
    $WPFa32.IsChecked = $false
    }

        If ( $WPFa33.IsChecked -eq $true ) {
    Add-Printer -Name "Fax" -DriverName "Microsoft Shared Fax Driver" -PortName "SHRFAX:" -ErrorAction SilentlyContinue
    Write-Host "Add Fax Printer"
    $WPFa33.IsChecked = $false
    }

        If ( $WPFa34.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 1
    Write-Host "Add Developer Mode"
    $WPFa34.IsChecked = $false
    }

        If ( $WPFa35.IsChecked -eq $true ) {
    Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Add-WindowsCapability -Online | Out-Null
    Write-Host "Add Math Recognizer"
    $WPFa35.IsChecked = $false
    }

        If ( $WPFa36.IsChecked -eq $true ) {
    Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
	nfsadmin client stop
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
    nfsadmin client start
    nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
    Write-Host "Enabled NFS"
    $WPFa36.IsChecked = $false
    }

        If ( $WPFa37.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158,30,7,128,18,0,0,0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1
    Write-Host "Graphic Settings FX"
    $WPFa37.IsChecked = $false
    }

        If ( $WPFa38.IsChecked -eq $true ) {
    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://swupmf.adobe.com/webfeed/CleanerTool/win/AdobeCreativeCloudCleanerTool.exe" -Destination "$env:TEMP\creative_cloud_uninstallerwin.zip"
    $zipPath = "$env:TEMP\creative_cloud_uninstallerwin.zip"
    $extractPath = "$env:TEMP"
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipPath, $extractPath)
    Start-Process -FilePath "Creative Cloud Uninstaller.exe"
    Write-Host "Removed Adobe Creative Cloud"
    $WPFa38.IsChecked = $false
    }

        If ( $WPFa39.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Clipboard")) {
    New-Item -Path "HKCU:\Software\Microsoft\Clipboard" -Force | Out-Null
    }
    Set-ItemProperty "HKCU:\Software\Microsoft\Clipboard" -Name "EnableClipboardHistory" -Type DWord -Value 1
       Write-Host "Enabled Clipboard History"
    $WPFa39.IsChecked = $false
    }

        If ( $WPFa40.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Force | Out-Null
    }
    Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "ConfirmationCheckBoxDoForAll" -Type DWord -Value 1

    Write-Host "Check 'Do this for all operation'"
    $WPFa40.IsChecked = $false
    }

        If ( $WPFa41.IsChecked -eq $true ) {
    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://github.com/Iblis94/debloat3.0/raw/main/resources/gpedit.bat" -Destination gpedit.bat
    Start-Process gpedit.bat
    Write-Host "Installed Gpedit on Home Version"
    $WPFa41.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Application Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## System ####################
##########################################

$WPFTab9P1.Add_Click({
    $WPFe1.IsChecked = $true
    $WPFe2.IsChecked = $true
    $WPFe3.IsChecked = $false
    $WPFe4.IsChecked = $false
    $WPFe5.IsChecked = $false
    $WPFe6.IsChecked = $false
    $WPFe7.IsChecked = $false
    $WPFe8.IsChecked = $false
    $WPFe9.IsChecked = $false
    $WPFe10.IsChecked = $false
    $WPFe11.IsChecked = $false
    $WPFe12.IsChecked = $false
    $WPFe13.IsChecked = $false
    $WPFe14.IsChecked = $false
    $WPFe15.IsChecked = $false
    $WPFe16.IsChecked = $false
    $WPFe17.IsChecked = $false
    $WPFe18.IsChecked = $false
    $WPFe19.IsChecked = $false
    $WPFe20.IsChecked = $false
    $WPFe21.IsChecked = $false
    $WPFe22.IsChecked = $false
    $WPFe23.IsChecked = $false
    $WPFe24.IsChecked = $false
    $WPFe25.IsChecked = $false
    $WPFe26.IsChecked = $false
    $WPFe27.IsChecked = $false
    $WPFe28.IsChecked = $false
    $WPFe29.IsChecked = $true
    $WPFe30.IsChecked = $false
    $WPFe31.IsChecked = $false
    $WPFe32.IsChecked = $false
    $WPFe33.IsChecked = $true
    $WPFe34.IsChecked = $false
    $WPFe35.IsChecked = $true
    $WPFe36.IsChecked = $true
    $WPFe37.IsChecked = $true
    $WPFe38.IsChecked = $true
    $WPFe39.IsChecked = $false
    $WPFe40.IsChecked = $false
    $WPFe41.IsChecked = $false
    $WPFe42.IsChecked = $true
    $WPFe43.IsChecked = $false
    $WPFe44.IsChecked = $false
    $WPFe45.IsChecked = $false
    $WPFe46.IsChecked = $false

})

$WPFTab9P2.Add_Click({
    $WPFe1.IsChecked = $false
    $WPFe2.IsChecked = $false
    $WPFe3.IsChecked = $false
    $WPFe4.IsChecked = $false
    $WPFe5.IsChecked = $false
    $WPFe6.IsChecked = $true
    $WPFe7.IsChecked = $false
    $WPFe8.IsChecked = $false
    $WPFe9.IsChecked = $false
    $WPFe10.IsChecked = $false
    $WPFe11.IsChecked = $true
    $WPFe12.IsChecked = $true
    $WPFe13.IsChecked = $true
    $WPFe14.IsChecked = $true
    $WPFe15.IsChecked = $false
    $WPFe16.IsChecked = $false
    $WPFe17.IsChecked = $false
    $WPFe18.IsChecked = $false
    $WPFe19.IsChecked = $false
    $WPFe20.IsChecked = $false
    $WPFe21.IsChecked = $false
    $WPFe22.IsChecked = $false
    $WPFe23.IsChecked = $false
    $WPFe24.IsChecked = $true
    $WPFe25.IsChecked = $true
    $WPFe26.IsChecked = $false
    $WPFe27.IsChecked = $false
    $WPFe28.IsChecked = $false
    $WPFe29.IsChecked = $false
    $WPFe30.IsChecked = $false
    $WPFe31.IsChecked = $false
    $WPFe32.IsChecked = $false
    $WPFe33.IsChecked = $false
    $WPFe34.IsChecked = $false
    $WPFe35.IsChecked = $false
    $WPFe36.IsChecked = $false
    $WPFe37.IsChecked = $false
    $WPFe38.IsChecked = $false
    $WPFe39.IsChecked = $false
    $WPFe40.IsChecked = $false
    $WPFe41.IsChecked = $false
    $WPFe42.IsChecked = $true
    $WPFe43.IsChecked = $true
    $WPFe44.IsChecked = $false
    $WPFe45.IsChecked = $false
    $WPFe46.IsChecked = $false

})

$WPFTab9P3.Add_Click({
    $WPFe1.IsChecked = $false
    $WPFe2.IsChecked = $false
    $WPFe3.IsChecked = $false
    $WPFe4.IsChecked = $false
    $WPFe5.IsChecked = $false
    $WPFe6.IsChecked = $true
    $WPFe7.IsChecked = $false
    $WPFe8.IsChecked = $false
    $WPFe9.IsChecked = $false
    $WPFe10.IsChecked = $false
    $WPFe11.IsChecked = $true
    $WPFe12.IsChecked = $true
    $WPFe13.IsChecked = $true
    $WPFe14.IsChecked = $true
    $WPFe15.IsChecked = $true
    $WPFe16.IsChecked = $false
    $WPFe17.IsChecked = $false
    $WPFe18.IsChecked = $false
    $WPFe19.IsChecked = $false
    $WPFe20.IsChecked = $false
    $WPFe21.IsChecked = $false
    $WPFe22.IsChecked = $false
    $WPFe23.IsChecked = $false
    $WPFe24.IsChecked = $true
    $WPFe25.IsChecked = $true
    $WPFe26.IsChecked = $false
    $WPFe27.IsChecked = $false
    $WPFe28.IsChecked = $false
    $WPFe29.IsChecked = $false
    $WPFe30.IsChecked = $false
    $WPFe31.IsChecked = $false
    $WPFe32.IsChecked = $false
    $WPFe33.IsChecked = $false
    $WPFe34.IsChecked = $false
    $WPFe35.IsChecked = $false
    $WPFe36.IsChecked = $false
    $WPFe37.IsChecked = $false
    $WPFe38.IsChecked = $false
    $WPFe39.IsChecked = $false
    $WPFe40.IsChecked = $false
    $WPFe41.IsChecked = $false
    $WPFe42.IsChecked = $true
    $WPFe43.IsChecked = $true
    $WPFe44.IsChecked = $false
    $WPFe45.IsChecked = $false
    $WPFe46.IsChecked = $false

})

$WPFTab9P4.Add_Click({
        If ( $WPFe24.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0       
    Write-Host "Showed known File Extensions"
    $WPFe24.IsChecked = $false
    }

        If ( $WPFe25.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
    Write-Host "Showed Hidden Files"
    $WPFe25.IsChecked = $false
    }
    
        If ( $WPFe26.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 1
    Write-Host "Showed Protected Operating System Files"
    $WPFe26.IsChecked = $false
    }
    
        If ( $WPFe27.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideDrivesWithNoMedia" -Type DWord -Value 0
    Write-Host "Showed Empty Drives (With no Media)"
    $WPFe27.IsChecked = $false
    }
    
        If ( $WPFe28.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -Type DWord -Value 0
    Write-Host "Showed Folder Merge Conflicts"
    $WPFe28.IsChecked = $false
    }
    
        If ( $WPFe29.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneExpandToCurrentFolder" -Type DWord -Value 1
    Write-Host "Enabled Navigation Panel Expand to Current Folder"
    $WPFe29.IsChecked = $false
    }
    
        If ( $WPFe30.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SeparateProcess" -Type DWord -Value 1
    Write-Host "Enabled Launching Folder in a Separate Process"
    $WPFe30.IsChecked = $false
    }
    
        If ( $WPFe31.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -Type DWord -Value 1
    Write-Host "Enabled Restoring Previous Folder at Logon"
    $WPFe31.IsChecked = $false
    }
    
        If ( $WPFe32.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowEncryptCompressedColor" -Type DWord -Value 1
    Write-Host "Showed Coloring of Encrypted or Compressed NTFS Files"
    $WPFe32.IsChecked = $false
    }
    
        If ( $WPFe33.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -ErrorAction SilentlyContinue
    Write-Host "Enabled Sharing Wizard"
    $WPFe33.IsChecked = $false
    }
    
        If ( $WPFe34.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 1
    Write-Host "Showed Checkbox"
    $WPFe34.IsChecked = $false
    }
    
        If ( $WPFe35.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 1
    Write-Host "Showed Sync Provider Notifications"
    $WPFe35.IsChecked = $false
    }
    
        If ( $WPFe36.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    New-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -Name "(Default)" -Type String -Value "{3dad6c5d-2167-4cae-9914-f99e41c12cfa}"
    Write-Host "Showed 'Include in Library' in Context Menu"
    $WPFe36.IsChecked = $false
    }
    
        If ( $WPFe37.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    New-Item -Path "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -Name "(Default)" -Type String -Value "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}"
    New-Item -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -Name "(Default)" -Type String -Value "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}"
    New-Item -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -Name "(Default)" -Type String -Value "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}"
    New-Item -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -Name "(Default)" -Type String -Value "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}"    
    Write-Host "Showed 'Give Access to' in Context Menu"
    $WPFe37.IsChecked = $false
    }
    
        If ( $WPFe38.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    New-Item -Path "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue | Out-Null
    Set-ItemProperty -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -Name "(Default)" -Type String -Value "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}"
    Write-Host "Showed 'Share' in Context Menu"
    $WPFe38.IsChecked = $false
    }
    
        If ( $WPFe39.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 0
    Write-Host "Enabled Thumbnails"
    $WPFe39.IsChecked = $false
    }
    
        If ( $WPFe40.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -ErrorAction SilentlyContinue
    Write-Host "Enabled Creation of Thumbnail Cache Files"
    $WPFe40.IsChecked = $false
    }
    
        If ( $WPFe41.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -ErrorAction SilentlyContinue
    Write-Host "Enabled Creation of Thumbs.db on Network Folders"
    $WPFe41.IsChecked = $false
    }
    
        If ( $WPFe42.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
    Write-Host "Showed Recycle Bin Shorcut on Desktop"
    $WPFe42.IsChecked = $false
    }
    
        If ( $WPFe43.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
    Write-Host "Showed This PC Shorcut on Desktop"
    $WPFe43.IsChecked = $false
    }
    
        If ( $WPFe44.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -Type DWord -Value 0
    Write-Host "Showed User Folder Shorcut on Desktop"
    $WPFe44.IsChecked = $false
    }
    
        If ( $WPFe45.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -Type DWord -Value 0
    Write-Host "Showed Control Panel Shorcut on Desktop"
    $WPFe45.IsChecked = $false
    }
    
        If ( $WPFe46.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" )) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu"  -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" )) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
    Write-Host "Showed Network Shorcut on Desktop"
    $WPFe46.IsChecked = $false
    }
    
        If ( $WPFe1.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 1
    Write-Host "Hided known File Extensions"
    $WPFe1.IsChecked = $false
    }
    
        If ( $WPFe2.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 2
    Write-Host "Hided Hidden Files"
    $WPFe2.IsChecked = $false
    }
    
        If ( $WPFe3.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 0
    Write-Host "Hided Protected Operating System Files"
    $WPFe3.IsChecked = $false
    }
    
        If ( $WPFe4.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideDrivesWithNoMedia" -ErrorAction SilentlyContinue
    Write-Host "Hided Empty Drives (With no Media)"
        $WPFe4.IsChecked = $false
    }
    
        If ( $WPFe5.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -ErrorAction SilentlyContinue
    Write-Host "Hided Foldeer Merge Conflicts"
    $WPFe5.IsChecked = $false
    }
    
        If ( $WPFe6.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneExpandToCurrentFolder" -ErrorAction SilentlyContinue
    Write-Host "Disabled Navigation Panel Expand to Current Folder"
    $WPFe6.IsChecked = $false
    }
    
        If ( $WPFe7.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SeparateProcess" -Type DWord -Value 0
    Write-Host "Disabled Launching Folder in a Separate Process"
    $WPFe7.IsChecked = $false
    }
    
        If ( $WPFe8.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -ErrorAction SilentlyContinue
    Write-Host "Disabled Restoring Previous Folder at Logon"
    $WPFe8.IsChecked = $false
    }
    
        If ( $WPFe9.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowEncryptCompressedColor" -ErrorAction SilentlyContinue
    Write-Host "Hided Coloring of Encrypted or Compressed NTFS Files"
    $WPFe9.IsChecked = $false
    }
    
        If ( $WPFe10.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -Type DWord -Value 0
    Write-Host "Disabled Sharing Wizard"
    $WPFe10.IsChecked = $false
    }
    
        If ( $WPFe11.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 0
    Write-Host "Hided Checkbox"
    $WPFe11.IsChecked = $false
    }
    
        If ( $WPFe12.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 0
    Write-Host "Hided Sync Provider Notifications"
    $WPFe12.IsChecked = $false
    }
    
        If ( $WPFe13.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    Remove-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue    
    Write-Host "Hided 'Include in Library"
    $WPFe13.IsChecked = $false
    }
    
        If ( $WPFe14.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
    Remove-Item -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
    Remove-Item -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
    Remove-Item -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue    
    Write-Host "Hided 'Give Access to' in Context Menu"
    $WPFe14.IsChecked = $false
    }
    
        If ( $WPFe15.IsChecked -eq $true ) {
    If (!(Test-Path "HKCR:")) {
    New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
    }
    Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue   
    Write-Host "Hided 'Share' in Context Menu"
    $WPFe15.IsChecked = $false
    }
    
        If ( $WPFe16.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 1
    Write-Host "Disabled Thumbnails"
    $WPFe16.IsChecked = $false
    }
    
        If ( $WPFe17.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -Type DWord -Value 1
    Write-Host "Disabled Creation of Thumbnail Cache Files"
    $WPFe17.IsChecked = $false
    }
    
        If ( $WPFe18.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -Type DWord -Value 1
    Write-Host "Disabled Creation of Thumbs.db on Network Folders"
    $WPFe18.IsChecked = $false
    }
    
        If ( $WPFe19.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -Type DWord -Value 1
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -Type DWord -Value 1
    Write-Host "Hided Recycle Bin Shorcut from Desktop"
    $WPFe19.IsChecked = $false
    }
    
        If ( $WPFe20.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ErrorAction SilentlyContinue
    Write-Host "Hided This PC Shorcut on Desktop"
    $WPFe20.IsChecked.IsChecked = $false
    }
    
        If ( $WPFe21.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -ErrorAction SilentlyContinue
    Write-Host "Hided User Folder Shorcut on Desktop"
    $WPFe21.IsChecked = $false
    }
    
        If ( $WPFe22.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -ErrorAction SilentlyContinue
    Write-Host "Hided Control Panel Shorcut on Desktop"
    $WPFe22.IsChecked = $false
    }
    
        If ( $WPFe23.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
    Write-Host "Hided Network Shorcut on Desktop"
    $WPFe23.IsChecked = $false
    }

        If ( $WPFe47.IsChecked -eq $true ) {
    Get-AppxPackage "Microsoft.DesktopAppInstaller" | Remove-AppxPackage
    Get-AppxPackage "Microsoft.WindowsStore" | Remove-AppxPackage
    Write-host "Uninstalled Microsoft Store" 
    $WPFe47.IsChecked = $false
    }

        If ( $WPFe48.IsChecked -eq $true ) {
    Get-AppxPackage -AllUsers "Microsoft.DesktopAppInstaller" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -AllUsers "Microsoft.WindowsStore" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Write-host "Installed Microsoft Store" 
    $WPFe48.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "System Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Explorer ##################
##########################################

$WPFTab10P1.Add_Click({
    $WPFed1.IsChecked = $false
    $WPFed2.IsChecked = $false
    $WPFed3.IsChecked = $false
    $WPFed4.IsChecked = $false
    $WPFed5.IsChecked = $false
    $WPFed6.IsChecked = $false
    $WPFed7.IsChecked = $false
    $WPFed8.IsChecked = $false
    $WPFed9.IsChecked = $false
    $WPFed10.IsChecked = $false
    $WPFed11.IsChecked = $false
    $WPFed12.IsChecked = $false
    $WPFed13.IsChecked = $false
    $WPFed14.IsChecked = $false
    $WPFed15.IsChecked = $false
    $WPFed16.IsChecked = $false
    $WPFed17.IsChecked = $false
    $WPFed18.IsChecked = $false
    $WPFed19.IsChecked = $false
    $WPFed20.IsChecked = $false
    $WPFed21.IsChecked = $false
    $WPFed22.IsChecked = $false
    $WPFed23.IsChecked = $true
    $WPFed24.IsChecked = $true
    $WPFed25.IsChecked = $true
    $WPFed26.IsChecked = $true
    $WPFed27.IsChecked = $true
    $WPFed28.IsChecked = $true
    $WPFed29.IsChecked = $true
    $WPFed30.IsChecked = $true
    $WPFed31.IsChecked = $true
    $WPFed32.IsChecked = $false
    $WPFed33.IsChecked = $false
    $WPFed34.IsChecked = $true
    $WPFed35.IsChecked = $true
    $WPFed36.IsChecked = $true
    $WPFed37.IsChecked = $true
    $WPFed38.IsChecked = $true
    $WPFed39.IsChecked = $true
    $WPFed40.IsChecked = $true
    $WPFed41.IsChecked = $true
    $WPFed42.IsChecked = $true
    $WPFed43.IsChecked = $true
    $WPFed44.IsChecked = $true

})

$WPFTab10P2.Add_Click({
    $WPFed1.IsChecked = $false
    $WPFed2.IsChecked = $false
    $WPFed3.IsChecked = $false
    $WPFed4.IsChecked = $false
    $WPFed5.IsChecked = $false
    $WPFed6.IsChecked = $false
    $WPFed7.IsChecked = $false
    $WPFed8.IsChecked = $false
    $WPFed9.IsChecked = $false
    $WPFed10.IsChecked = $false
    $WPFed11.IsChecked = $false
    $WPFed12.IsChecked = $true
    $WPFed13.IsChecked = $true
    $WPFed14.IsChecked = $true
    $WPFed15.IsChecked = $true
    $WPFed16.IsChecked = $false
    $WPFed17.IsChecked = $false
    $WPFed18.IsChecked = $false
    $WPFed19.IsChecked = $false
    $WPFed20.IsChecked = $false
    $WPFed21.IsChecked = $false
    $WPFed22.IsChecked = $false
    $WPFed23.IsChecked = $false
    $WPFed24.IsChecked = $false
    $WPFed25.IsChecked = $false
    $WPFed26.IsChecked = $false
    $WPFed27.IsChecked = $false
    $WPFed28.IsChecked = $false
    $WPFed29.IsChecked = $false
    $WPFed30.IsChecked = $false
    $WPFed31.IsChecked = $false
    $WPFed32.IsChecked = $true
    $WPFed33.IsChecked = $false
    $WPFed34.IsChecked = $false
    $WPFed35.IsChecked = $false
    $WPFed36.IsChecked = $false
    $WPFed37.IsChecked = $false
    $WPFed38.IsChecked = $false
    $WPFed39.IsChecked = $false
    $WPFed40.IsChecked = $false
    $WPFed41.IsChecked = $false
    $WPFed42.IsChecked = $false
    $WPFed43.IsChecked = $false
    $WPFed44.IsChecked = $false

})

$WPFTab10P3.Add_Click({
    $WPFed1.IsChecked = $false
    $WPFed2.IsChecked = $false
    $WPFed3.IsChecked = $false
    $WPFed4.IsChecked = $false
    $WPFed5.IsChecked = $false
    $WPFed6.IsChecked = $false
    $WPFed7.IsChecked = $false
    $WPFed8.IsChecked = $false
    $WPFed9.IsChecked = $false
    $WPFed10.IsChecked = $false
    $WPFed11.IsChecked = $false
    $WPFed12.IsChecked = $true
    $WPFed13.IsChecked = $true
    $WPFed14.IsChecked = $true
    $WPFed15.IsChecked = $true
    $WPFed16.IsChecked = $false
    $WPFed17.IsChecked = $false
    $WPFed18.IsChecked = $false
    $WPFed19.IsChecked = $false
    $WPFed20.IsChecked = $false
    $WPFed21.IsChecked = $false
    $WPFed22.IsChecked = $false
    $WPFed23.IsChecked = $true
    $WPFed24.IsChecked = $false
    $WPFed25.IsChecked = $false
    $WPFed26.IsChecked = $false
    $WPFed27.IsChecked = $false
    $WPFed28.IsChecked = $false
    $WPFed29.IsChecked = $false
    $WPFed30.IsChecked = $false
    $WPFed31.IsChecked = $false
    $WPFed32.IsChecked = $true
    $WPFed33.IsChecked = $false
    $WPFed34.IsChecked = $false
    $WPFed35.IsChecked = $false
    $WPFed36.IsChecked = $false
    $WPFed37.IsChecked = $false
    $WPFed38.IsChecked = $false
    $WPFed39.IsChecked = $false
    $WPFed40.IsChecked = $false
    $WPFed41.IsChecked = $false
    $WPFed42.IsChecked = $false
    $WPFed43.IsChecked = $false
    $WPFed44.IsChecked = $false

})

$WPFTab10P4.Add_Click({
        If ( $WPFed23.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 0
    Write-Host "Showed All Icon on Desktop"
    $WPFed23.IsChecked = $false
    }

        If ( $WPFed24.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "PaintDesktopVersion" -Type DWord -Value 1
    Write-Host "Showed Windows Build Number on Desktop"
    $WPFed24.IsChecked = $false
    }

        If ( $WPFed25.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" | Out-Null
    }
    Write-Host "Showed Desktop Icon in This PC"
    $WPFed25.IsChecked = $false
    }

        If ( $WPFed26.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" | Out-Null
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" | Out-Null
    }
    Write-Host "Showed Documents Icon in This PC"
    $WPFed26.IsChecked = $false
    }

        If ( $WPFed27.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" | Out-Null
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" | Out-Null
    }
    Write-Host "Showed Downloads Icon in This PC"
    $WPFed27.IsChecked = $false
    }

        If ( $WPFed28.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" | Out-Null
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" | Out-Null
    }
    Write-Host "Showed Music Icon in This PC"
    $WPFed28.IsChecked = $false
    }

        If ( $WPFed29.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" | Out-Null
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" | Out-Null
    }
    Write-Host "Showed Pictures Icon in This PC"
    $WPFed29.IsChecked = $false
    }

        If ( $WPFed30.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" | Out-Null
    }
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" | Out-Null
    }
    Write-Host "Showed Videos Icon in This PC"
    $WPFed30.IsChecked = $false
    }

        If ( $WPFed31.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 1
    Write-Host "Showed Network Icon in This PC"
    $WPFed31.IsChecked = $false
    }

        If ( $WPFed32.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Type DWord -Value 1
    Write-Host "Showed Full Directory Path in Explorer"
    $WPFed32.IsChecked = $false
    }

        If ( $WPFed33.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneShowAllFolders" -Type DWord -Value 1
    Write-Host "Showed All Folder in Explorer Navigation Panel"
    $WPFed33.IsChecked = $false
    }

        If ( $WPFed34.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -ErrorAction SilentlyContinue
    Write-Host "Showed Recent Shorcuts in Explorer"
    $WPFed34.IsChecked = $false
    }

        If ( $WPFed35.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
    Write-Host "Change Default Explorer view to This PC"
    $WPFed35.IsChecked = $false
    }

        If ( $WPFed36.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "HubMode" -ErrorAction SilentlyContinue
    Write-Host "Showed Quick Access in Explorer Navigation Panel"
    $WPFed36.IsChecked = $false
    }

        If ( $WPFed37.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}")) {
    New-Item -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -Type DWord -Value 1
    Write-Host "Showed Libraries Icon in Explorer Namespace"
    $WPFed37.IsChecked = $false
    }

        If ( $WPFed38.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Desktop Icon in Explorer Namespace"
    $WPFed38.IsChecked = $false
    }

        If ( $WPFed39.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Documents Icon in Explorer Namespace"
    $WPFed39.IsChecked = $false
    }

        If ( $WPFed40.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Downloads Icon in Explorer Namespace"
    $WPFed40.IsChecked = $false
    }

        If ( $WPFed41.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Music icon in Explorer Namespace"
    $WPFed41.IsChecked = $false
    }

        If ( $WPFed42.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Pictures Icon in Explorer Namespace"
    $WPFed42.IsChecked = $false
    }

        If ( $WPFed43.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
    Write-Host "Showed Videos Icon in Explorer Namespace"
    $WPFed43.IsChecked = $false
    }

        If ( $WPFed44.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
    Write-Host "Showed Network Icon in Explorer Namespace"
    $WPFed44.IsChecked = $false
    }

        If ( $WPFed1.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 1
    Write-Host "Hided All Icon on Desktop"
    $WPFed1.IsChecked = $false
    }

        If ( $WPFed2.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 1
    Write-Host "Hided Windows Build Number on Desktop"
    $WPFed2.IsChecked = $false
    }

        If ( $WPFed3.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Desktop Icon in This PC"
        $WPFed3.IsChecked = $false
    }

        If ( $WPFed4.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Documents Icon in This PC"
    $WPFed4.IsChecked = $false
    }

        If ( $WPFed5.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Downloads Icon in This PC"
    $WPFed5.IsChecked = $false
    }

        If ( $WPFed6.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Music Icon in This PC"
    $WPFed6.IsChecked = $false
    }

        If ( $WPFed7.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Pictures Icon in This PC"
    $WPFed7.IsChecked = $false
    }

        If ( $WPFed8.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Recurse -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Hided Videos Icon in This PC"
    $WPFed8.IsChecked = $false
    }

        If ( $WPFed9.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
    Write-Host "Hided Network Icon in This PC"
    $WPFed9.IsChecked = $false
    }

        If ( $WPFed10.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -ErrorAction SilentlyContinue
    Write-Host "Hided Full Directory Path in Explorer"
    $WPFed10.IsChecked = $false
    }

        If ( $WPFed11.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneShowAllFolders" -ErrorAction SilentlyContinue
    Write-Host "Hided All Folder in Explorer Navigation Panel"
    $WPFed11.IsChecked = $false
    }

        If ( $WPFed12.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
    Write-Host "Hided Recent Shorcuts in Explorer"
    $WPFed12.IsChecked = $false
    }

        If ( $WPFed13.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -ErrorAction SilentlyContinue
    Write-Host "Change Default Explorer view to Quick Access"
    $WPFed13.IsChecked = $false
    }

        If ( $WPFed14.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "HubMode" -Type DWord -Value 1
    Write-Host "Hided Quick Access in Explorer Navigation Panel"
    $WPFed14.IsChecked = $false
    }

        If ( $WPFed15.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -ErrorAction SilentlyContinue
    Write-Host "Hided Libraries Icon in Explorer Namespace"
    $WPFed15.IsChecked = $false
    }

        If ( $WPFed16.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Desktop Icon in Explorer Namespace"
    $WPFed16.IsChecked = $false
    }

        If ( $WPFed17.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Documents Icon in Explorer Namespace"
    $WPFed17.IsChecked = $false
    }

        If ( $WPFed18.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Downloads Icon in Explorer Namespace"
    $WPFed18.IsChecked = $false
    }

        If ( $WPFed19.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Music icon in Explorer Namespace"
    $WPFed19.IsChecked = $false
    }

        If ( $WPFed20.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Pictures Icon in Explorer Namespace"
    $WPFed20.IsChecked = $false
    }

        If ( $WPFed21.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Hided Videos Icon in Explorer Namespace"
    $WPFed21.IsChecked.IsChecked = $false
    }

        If ( $WPFed22.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 1
    Write-Host "Hided Network Icon in Explorer Namespace"
    $WPFed22.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Explorer Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Taskbar ###################
##########################################

$WPFTab11P1.Add_Click({
    $WPFt1.IsChecked = $false
    $WPFt2.IsChecked = $false
    $WPFt3.IsChecked = $false
    $WPFt4.IsChecked = $false
    $WPFt5.IsChecked = $false
    $WPFt6.IsChecked = $false
    $WPFt7.IsChecked = $false
    $WPFt8.IsChecked = $false
    $WPFt9.IsChecked = $false
    $WPFt10.IsChecked = $true
    $WPFt11.IsChecked = $true
    $WPFt12.IsChecked = $true
    $WPFt13.IsChecked = $true
    $WPFt14.IsChecked = $false
    $WPFt15.IsChecked = $false
    $WPFt16.IsChecked = $false
    $WPFt17.IsChecked = $false
    $WPFt18.IsChecked = $true
    $WPFt19.IsChecked = $false
    $WPFt20.IsChecked = $false
    $WPFt21.IsChecked = $false
    $WPFt22.IsChecked = $false
    $WPFt23.IsChecked = $false
    $WPFt24.IsChecked = $true
    $WPFt25.IsChecked = $true
    $WPFt26.IsChecked = $true
    $WPFt27.IsChecked = $true
    $WPFt28.IsChecked = $true
    $WPFt29.IsChecked = $true
    $WPFt30.IsChecked = $false
    $WPFt31.IsChecked = $true
    $WPFt32.IsChecked = $true
    $WPFt33.IsChecked = $false
    $WPFt34.IsChecked = $false
    $WPFt35.IsChecked = $false
    $WPFt36.IsChecked = $false
    $WPFt37.IsChecked = $true
    $WPFt38.IsChecked = $true
    $WPFt39.IsChecked = $true
    $WPFt40.IsChecked = $true
    $WPFt41.IsChecked = $false
    $WPFt42.IsChecked = $true
    $WPFt44.IsChecked = $true
    $WPFt45.IsChecked = $true
    $WPFt46.IsChecked = $false
    $WPFt47.IsChecked = $true
})

$WPFTab11P2.Add_Click({
    $WPFt1.IsChecked = $true
    $WPFt2.IsChecked = $true
    $WPFt3.IsChecked = $false
    $WPFt4.IsChecked = $true
    $WPFt5.IsChecked = $true
    $WPFt6.IsChecked = $true
    $WPFt7.IsChecked = $false
    $WPFt8.IsChecked = $false
    $WPFt9.IsChecked = $true
    $WPFt10.IsChecked = $false
    $WPFt11.IsChecked = $false
    $WPFt12.IsChecked = $false
    $WPFt13.IsChecked = $false
    $WPFt14.IsChecked = $true
    $WPFt15.IsChecked = $false
    $WPFt16.IsChecked = $false
    $WPFt17.IsChecked = $false
    $WPFt18.IsChecked = $false
    $WPFt19.IsChecked = $true
    $WPFt20.IsChecked = $false
    $WPFt21.IsChecked = $true
    $WPFt22.IsChecked = $true
    $WPFt23.IsChecked = $true
    $WPFt24.IsChecked = $false
    $WPFt25.IsChecked = $false
    $WPFt26.IsChecked = $false
    $WPFt27.IsChecked = $false
    $WPFt28.IsChecked = $false
    $WPFt29.IsChecked = $false
    $WPFt30.IsChecked = $false
    $WPFt31.IsChecked = $false
    $WPFt32.IsChecked = $false
    $WPFt33.IsChecked = $true
    $WPFt34.IsChecked = $true
    $WPFt35.IsChecked = $true
    $WPFt36.IsChecked = $true
    $WPFt37.IsChecked = $false
    $WPFt38.IsChecked = $false
    $WPFt39.IsChecked = $false
    $WPFt40.IsChecked = $false
    $WPFt41.IsChecked = $true
    $WPFt42.IsChecked = $false
    $WPFt44.IsChecked = $false
    $WPFt45.IsChecked = $false
    $WPFt46.IsChecked = $true
    $WPFt47.IsChecked = $false
})

$WPFTab11P3.Add_Click({
    $WPFt1.IsChecked = $true
    $WPFt2.IsChecked = $true
    $WPFt3.IsChecked = $false
    $WPFt4.IsChecked = $true
    $WPFt5.IsChecked = $true
    $WPFt6.IsChecked = $true
    $WPFt7.IsChecked = $false
    $WPFt8.IsChecked = $false
    $WPFt9.IsChecked = $true
    $WPFt10.IsChecked = $false
    $WPFt11.IsChecked = $false
    $WPFt12.IsChecked = $false
    $WPFt13.IsChecked = $false
    $WPFt14.IsChecked = $true
    $WPFt15.IsChecked = $true
    $WPFt16.IsChecked = $false
    $WPFt17.IsChecked = $false
    $WPFt18.IsChecked = $false
    $WPFt19.IsChecked = $true
    $WPFt20.IsChecked = $true
    $WPFt21.IsChecked = $true
    $WPFt22.IsChecked = $true
    $WPFt23.IsChecked = $true
    $WPFt24.IsChecked = $false
    $WPFt25.IsChecked = $false
    $WPFt26.IsChecked = $false
    $WPFt27.IsChecked = $false
    $WPFt28.IsChecked = $false
    $WPFt29.IsChecked = $false
    $WPFt30.IsChecked = $false
    $WPFt31.IsChecked = $false
    $WPFt32.IsChecked = $false
    $WPFt33.IsChecked = $true
    $WPFt34.IsChecked = $true
    $WPFt35.IsChecked = $true
    $WPFt36.IsChecked = $true
    $WPFt37.IsChecked = $false
    $WPFt38.IsChecked = $false
    $WPFt39.IsChecked = $false
    $WPFt40.IsChecked = $false
    $WPFt41.IsChecked = $true
    $WPFt42.IsChecked = $false
    $WPFt44.IsChecked = $false
    $WPFt45.IsChecked = $false
    $WPFt46.IsChecked = $true
    $WPFt47.IsChecked = $false
})

$WPFTab11P4.Add_Click({
        If ( $WPFt1.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
    Write-Host "Disabled 'Recent Elements' in Start Menu"
    $WPFt1.IsChecked = $false
    }

        If ( $WPFt2.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -Type DWord -Value 1
    Write-Host "Disabled 'Most Used' in Start Menu"
    $WPFt2.IsChecked = $false
    }

        If ( $WPFt3.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name ShellFeedsTaskbarViewMode -Type DWord -Value 2
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1 -ErrorAction SilentlyContinue
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1    
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
    Stop-Service "WSearch" -WarningAction SilentlyContinue
    Set-Service "WSearch" -StartupType Disabled
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
    Write-Host "Disabled Windows Search in Start Menu"
    $WPFt3.IsChecked = $false
    }

        If ( $WPFt4.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
    Write-Host "Hided Task Icon in Taskbar"
    $WPFt4.IsChecked = $false
    }

        If ( $WPFt5.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
    Write-Host "Hided People Icon in Taskbar"
    $WPFt5.IsChecked = $false
    }

        If ( $WPFt6.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -Name "ForceEffectMode" -Type dword -Value 1
    Write-Host "Set Transparent Taskbar"
    $WPFt6.IsChecked = $false
    }

        If ( $WPFt30.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
    Write-Host "Showed All Tray Icon"
    $WPFt30.IsChecked = $false
    }

        If ( $WPFt8.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
    Write-Host "Disabled Action Center"
    $WPFt8.IsChecked = $false
    }

        If ( $WPFt9.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
    Write-Host "Disabled Cortana"
    $WPFt9.IsChecked = $false
    }

        If ( $WPFt10.IsChecked -eq $true ) {
    Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme
    Write-Host "Set Light Theme"
    $WPFt10.IsChecked = $false
    }

        If ( $WPFt11.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Type dword -Value 1
    Write-Host "Disabled AeroShake"
    $WPFt11.IsChecked = $false
    }

        If ( $WPFt35.IsChecked -eq $true ) {
    $taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
    Do {
    Start-Sleep -Milliseconds 100
    $preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
    } Until ($preferences)
    Stop-Process $taskmgr
    $preferences.Preferences[28] = 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
    Write-Host "Set Task Manager, Show Details"
    $WPFt35.IsChecked = $false
    }

        If ( $WPFt36.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
    Write-Host "Set Show Details Operation Files"
    $WPFt36.IsChecked = $false
    }

        If ( $WPFt14.IsChecked -eq $true ) {
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -Type DWord -Value 0
    Write-Host "Set Control Panel Icon View"
    $WPFt14.IsChecked = $false
    }

        If ( $WPFt15.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -Type DWord -Value 1
    Write-Host "Disabled Search for App in Store for Unknown Extensions"
    $WPFt15.IsChecked = $false
    }

        If ( $WPFt16.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoNewAppAlert" -Type DWord -Value 1
    Write-Host "Disabled 'How do you want to open this file?' Prompt"
    $WPFt16.IsChecked = $false
    }

        If ( $WPFt17.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -Type DWord -Value 1
    Write-Host "Disabled Recent Files Lists"
    $WPFt17.IsChecked = $false
    }

        If ( $WPFt18.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "ClearRecentDocsOnExit" -ErrorAction SilentlyContinue
    Write-Host "Disabled Clearing of Recent Files on Exit"
    $WPFt18.IsChecked = $false
    }

        If ( $WPFt19.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 1
    Write-Host "Disabled Autoplay"
    $WPFt19.IsChecked = $false
    }

        If ( $WPFt20.IsChecked -eq $true ) {
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device" -Name "TreatAsInternalPort"   -Type MultiString -Value 0,1,2,3,4,5
    Write-Host "Set Treat As Internal Port"
    $WPFt20.IsChecked = $false
    }

        If ( $WPFt21.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Type DWord -Value 255
    Write-Host "Disabled Autorun for All Drives"
    $WPFt21.IsChecked = $false
    }

        If ( $WPFt22.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
    Write-Host "Disabled Sticky Keys Prompt"
    $WPFt22.IsChecked = $false
    }

        If ( $WPFt23.IsChecked -eq $true ) {
    $Paint3Dstuff = @(
    "HKCR:\SystemFileAssociations\.3mf\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.bmp\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.fbx\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.gif\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.jfif\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.jpe\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.jpeg\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.jpg\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.png\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.tif\Shell\3D Edit"
    "HKCR:\SystemFileAssociations\.tiff\Shell\3D Edit"
    )
    #Rename reg key to remove it, so it's revertible
    foreach ($Paint3D in $Paint3Dstuff) {
    If (Test-Path $Paint3D) {
    $rmPaint3D = $Paint3D + "_"
    Set-Item $Paint3D $rmPaint3D
    }
    }
    Write-Host "Disabled Paint3D"
    $WPFt23.IsChecked = $false
    }

        If ( $WPFt24.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -ErrorAction SilentlyContinue
    Write-Host "Enabled 'Recent Elements' in Start Menu"
    $WPFt24.IsChecked = $false
    }

        If ( $WPFt25.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -ErrorAction SilentlyContinue
    Write-Host "Enabled 'Most Used' in Start Menu"
    $WPFt25.IsChecked = $false
    }

        If ( $WPFt26.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value "1"
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -ErrorAction SilentlyContinue
    Write-Host "Restore and Starting Windows Search Service..."
    Set-Service "WSearch" -StartupType Automatic
    Start-Service "WSearch" -WarningAction SilentlyContinue
    Write-Host "Restore Windows Search Icon..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 1
    Write-Host "Enabled Windows Search in Start Menu"
    $WPFt26.IsChecked = $false
    }

        If ( $WPFt27.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -ErrorAction SilentlyContinue
    Write-Host "Set Show Task Icon in Taskbar"
    $WPFt27.IsChecked = $false
    }

        If ( $WPFt28.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -ErrorAction SilentlyContinue
    Write-Host "Set Show People Icon in Taskbar"
    $WPFt28.IsChecked = $false
    }

        If ( $WPFt29.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Dwm" -Name "ForceEffectMode" -Type dword -Value 1
    Write-Host "Set Solid Taskbar"
    $WPFt29.IsChecked = $false
    }

        If ( $WPFt7.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -ErrorAction SilentlyContinue 
    Write-Host "Set Hide All Tray Icon"
    $WPFt7.IsChecked = $false
    }

        If ( $WPFt31.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -ErrorAction SilentlyContinue 
    Write-Host "Enabled Action Center"
    $WPFt31.IsChecked = $false
    }

        If ( $WPFt32.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -ErrorAction SilentlyContinue
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 0
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -ErrorAction SilentlyContinue 
    Write-Host "Enabled Cortana"
    $WPFt32.IsChecked = $false
    }

        If ( $WPFt33.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 0
    Write-Host "Set Dark Theme"
    $WPFt33.IsChecked = $false
    }

        If ( $WPFt34.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -ErrorAction SilentlyContinue
    Write-Host "Enabled AeroShake"
    $WPFt34.IsChecked = $false
    }

        If ( $WPFt12.IsChecked -eq $true ) {
    $preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
    If ($preferences) {
    $preferences.Preferences[28] = 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
    }
    Write-Host "Set Task Manager, Hide Details"
    $WPFt12.IsChecked = $false
    }

        If ( $WPFt13.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -ErrorAction SilentlyContinue
    Write-Host "Hided Details Operation Files"
    $WPFt13.IsChecked = $false
    }

        If ( $WPFt37.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -ErrorAction SilentlyContinue
    Write-Host "Set Control Panel Categories View"
    $WPFt37.IsChecked = $false
    }

        If ( $WPFt38.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -ErrorAction SilentlyContinue
    Write-Host "Enabled Search for App in Store for Unknown Extensions"
    $WPFt38.IsChecked = $false
    }

        If ( $WPFt39.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoNewAppAlert" -ErrorAction SilentlyContinue
    Write-Host "Enabled 'How do you want to open this file?' Prompt"
    $WPFt39.IsChecked = $false
    }

        If ( $WPFt40.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -ErrorAction SilentlyContinue
    Write-Host "Enabled Recent Files Lists"
    $WPFt40.IsChecked = $false
    }

        If ( $WPFt41.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "ClearRecentDocsOnExit" -Type DWord -Value 1
    Write-Host "Enabled Clearing of Recent Files on Exit"
    $WPFt41.IsChecked = $false
    }

        If ( $WPFt42.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 0
    Write-Host "Enabled Autoplay"
    $WPFt42.IsChecked = $false
    }

        If ( $WPFt44.IsChecked -eq $true ) {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -ErrorAction SilentlyContinue
    Write-Host "Enable Autorun for All Drives"
    $WPFt44.IsChecked = $false
    }

        If ( $WPFt45.IsChecked -eq $true ) {
    Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "510"
    Write-Host "Enable Sticky Keys Prompt"
    $WPFt45.IsChecked = $false
    }

        If ( $WPFt46.IsChecked -eq $true ) {
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    If (!(Test-Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag")) {
        New-Item -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
    Write-Host "Disabled 3D Object"
    $WPFt46.IsChecked = $false
    }

        If ( $WPFt47.IsChecked -eq $true ) {
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" | Out-Null
    }
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -ErrorAction SilentlyContinue
    Write-Host "Enabled 3D Object"
    $WPFt47.IsChecked = $false
    }

    [System.Windows.MessageBox]::Show("All Done", "Taskbar Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
})

##########################################
############## Repair PC #################
##########################################

$WPFTab12P1.Add_Click({
	Start-Process "https://learn.microsoft.com/it-it/windows/powertoys/"
})
$WPFTab12P2.Add_Click({
	Start-Process "https://www.stardock.com/products/start11/"
})
$WPFTab12P3.Add_Click({
	Start-Process "https://github.com/Open-Shell/Open-Shell-Menu"
})
$WPFTab12P4.Add_Click({
	Start-Process "https://github.com/TranslucentTB/TranslucentTB"
})
$WPFTab12P5.Add_Click({
	Start-Process "https://github.com/ChrisAnd1998/TaskbarX"
})
$WPFTab12P6.Add_Click({
	Start-Process "https://winaerotweaker.com/"
})
$WPFTab12P7.Add_Click({
	Start-Process "https://www.startallback.com/"
})
$WPFTab12P8.Add_Click({
	Start-Process "https://roundedtb.com/"
})
$WPFTab12P9.Add_Click({
	Start-Process "https://github.com/files-community/Files"
})
$WPFTab12P10.Add_Click({
	Start-Process "https://www.stardock.com/products/fences/"
})
$WPFTab12P11.Add_Click({
	Start-Process "https://www.rainmeter.net/"
})
$WPFTab12P42.Add_Click({
	Start-Process "https://github.com/ThioJoe/Windows-Super-God-Mode"
})
$WPFTab12P13.Add_Click({
    Add-Type -AssemblyName PresentationFramework
    $xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        Title="More Tweaks" Height="1260" Width="305" Background="#FF1A2733">
    <Grid>
            <StackPanel Margin="0,5,0,0" Grid.Column="0">
            <Button Content="Add or Remove Programs" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P1">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>    

        <Button Content="Power Options" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P2">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>      

        <Button Content="Devices and Printers" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P3">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Multimedia / Sound" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" FontSize="20" Height="50" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P4">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

    <Button Content="Network Properties" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P5">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Network and Sharing" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P6">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="System Properties" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P7">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="services.msc" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P8">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="regedit.exe" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P9">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="msconfig.exe" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P10">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Component Services" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P11">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Device Manager" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P12">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="User Accounts" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P13">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="compmgmt.msc /s" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P14">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Color Management" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P15">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Credential Manager" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P16">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Default Programs" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P17">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Folder Options" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P18">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Taskbar and Navigation" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P19">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="Display Properties" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P20">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="msinfo32.exe" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P21">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>

        <Button Content="taskschd.msc /s" Margin= "0,5,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="50" FontSize="20" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="270" Name="MTab12P22">
            <Button.Background>
                <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                    <GradientStop Color="#FF10171E" Offset="1"/>
                    <GradientStop Color="#FF1A2733" Offset="0.257"/>
                </LinearGradientBrush>
            </Button.Background>
            <Button.Style>
                <Style/>
            </Button.Style>
        </Button>      
        </StackPanel>           
    </Grid>
</Window>
"@
    $window = [Windows.Markup.XamlReader]::Parse($xaml)

    $window.FindName("MTab12P1").Add_Click({
	control appwiz.cpl
    })
    $window.FindName("MTab12P2").Add_Click({
	powercfg.cpl
    })
    $window.FindName("MTab12P3").Add_Click({
	control printers
    })
    $window.FindName("MTab12P4").Add_Click({
	control mmsys.cpl
    })
    $window.FindName("MTab12P5").Add_Click({
	ncpa.cpl
    })
    $window.FindName("MTab12P6").Add_Click({
    control.exe /name Microsoft.NetworkandSharingCenter
    })
    $window.FindName("MTab12P7").Add_Click({
	sysdm.cpl
    })
    $window.FindName("MTab12P8").Add_Click({
	services.msc
    })
    $window.FindName("MTab12P9").Add_Click({
	regedit.exe
    })
    $window.FindName("MTab12P10").Add_Click({
	msconfig.exe
    })
    $window.FindName("MTab12P11").Add_Click({
	dcomcnfg
    })
    $window.FindName("MTab12P12").Add_Click({
	devmgmt.msc
    })
    $window.FindName("MTab12P13").Add_Click({
	control nusrmgr.cpl
    })
    $window.FindName("MTab12P14").Add_Click({
	compmgmt.msc /s
    })
    $window.FindName("MTab12P15").Add_Click({
	colorcpl
    })
    $window.FindName("MTab12P16").Add_Click({
	control.exe /name Microsoft.CredentialManager
    })
    $window.FindName("MTab12P17").Add_Click({
	control.exe /name Microsoft.DefaultPrograms
    })
    $window.FindName("MTab12P18").Add_Click({
	control folders
    })
    $window.FindName("MTab12P19").Add_Click({
	control.exe /name Microsoft.TaskbarandStartMenu
    })
    $window.FindName("MTab12P20").Add_Click({
	control desk.cpl
    })
    $window.FindName("MTab12P21").Add_Click({
	msinfo32.exe
    })
    $window.FindName("MTab12P22").Add_Click({
	taskschd.msc /s
    })

    $window.ShowDialog() | Out-Null
})
$WPFTab12P14.Add_Click({
    Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k slmgr /dli}
})
$WPFTab12P15.Add_Click({
    Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus}
})
$WPFTab12P16.Add_Click({
	powercfg /batteryreport /output "C:\battery-report.html"
	Write-Host "Troverai il report in C:\" 
        $WPFResult.ToArray()
    $WPFResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Result"
    $Messageboxbody = "Troverai il Report in C:\"
    $MessageIcon = [System.Windows.MessageBoxImage]::Information
    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
})
$WPFTab12P17.Add_Click({
	New-Item -Path 'C:\Drivers' -ItemType Directory
    DISM.exe /Online /Export-Driver /Destination:C:\Drivers
    Write-host "Troverai i Tuoi Driver nella cartella C:\Drivers"
        $WPFResult.ToArray()
    $WPFResult | % { $_ } | Out-Host
    $ButtonType = [System.Windows.MessageBoxButton]::OK
    $MessageboxTitle = "Result"
    $Messageboxbody = "Troverai i tuoi driver nella cartella C:\Drivers"
    $MessageIcon = [System.Windows.MessageBoxImage]::Information
    [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
})
$WPFTab12P18.Add_Click({
    netsh winsock reset
    netsh int ip reset
    ipconfig /release
    ipconfig /renew
    ipconfig /flushdns
    ipconfig /release6
    ipconfig /renew6 *Ethernet*
    ipconfig /renew *Ethernet*
    netsh advfirewall reset
})
$WPFTab12P19.Add_Click({
	Start-Process wsreset -NoNewWindow
})
$WPFTab12P20.Add_Click({
	Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k dism.exe /online /cleanup-image /restorehealth} 
})
$WPFTab12P21.Add_Click({
	Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k sfc /scannow}   
})
$WPFTab12P22.Add_Click({
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/ResetExplorer.bat" -Destination ResetExplorer.bat
	Start-Process ResetExplorer.bat
	Write-Host "Changed Owner"
})
$WPFTab12P23.Add_Click({
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_kill_not_responding_tasks.reg" -Destination Add_kill_not_responding_tasks.reg
    ./Add_kill_not_responding_tasks.reg /quiet
})
$WPFTab12P24.Add_Click({
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/HideUpdate.diagcab" -Destination HideUpdate.diagcab
	Start-Process HideUpdate.diagcab
	Write-Host "Hide Update Downloaded Correctly"
})
$WPFTab12P25.Add_Click({
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/clean_windows_update_files/clean_win_update.bat" -Destination clean_win_update.bat
	Start-Process clean_win_update.bat
	Write-Host "Windows Update Cache Cleaned"
})
$WPFTab12P26.Add_Click({
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/ChangeOwner.bat" -Destination ChangeOwner.bat
	Start-Process ChangeOwner.bat
	Write-Host "Changed Owner"
})


##########################################
############## Windows 11 ################
##########################################

$WPFTab13P1.Add_Click({
    $WPFw1.IsChecked = $true
    $WPFw2.IsChecked = $true
    $WPFw3.IsChecked = $true
    $WPFw4.IsChecked = $true
    $WPFw5.IsChecked = $true
    $WPFw6.IsChecked = $true
    $WPFw7.IsChecked = $true
    $WPFw8.IsChecked = $true
    $WPFw9.IsChecked = $true
    $WPFw10.IsChecked = $true
    $WPFw11.IsChecked = $true
    $WPFw12.IsChecked = $true
    $WPFw13.IsChecked = $false
    $WPFw14.IsChecked = $false
    $WPFw15.IsChecked = $false
    $WPFw16.IsChecked = $false
    $WPFw17.IsChecked = $false
    $WPFw18.IsChecked = $false
    $WPFw19.IsChecked = $false
    $WPFw20.IsChecked = $false
    $WPFw21.IsChecked = $false
    $WPFw22.IsChecked = $false
    $WPFw23.IsChecked = $false
    $WPFw24.IsChecked = $false
})

$WPFTab13P2.Add_Click({
    $WPFw1.IsChecked = $false
    $WPFw2.IsChecked = $false
    $WPFw3.IsChecked = $false
    $WPFw4.IsChecked = $false
    $WPFw5.IsChecked = $false
    $WPFw6.IsChecked = $false
    $WPFw7.IsChecked = $false
    $WPFw8.IsChecked = $false
    $WPFw9.IsChecked = $false
    $WPFw10.IsChecked = $false
    $WPFw11.IsChecked = $false
    $WPFw12.IsChecked = $false
    $WPFw13.IsChecked = $true
    $WPFw14.IsChecked = $true
    $WPFw15.IsChecked = $false
    $WPFw16.IsChecked = $true
    $WPFw17.IsChecked = $false
    $WPFw18.IsChecked = $false
    $WPFw19.IsChecked = $false
    $WPFw20.IsChecked = $false
    $WPFw21.IsChecked = $false
    $WPFw22.IsChecked = $false
    $WPFw23.IsChecked = $true
    $WPFw24.IsChecked = $true
})

$WPFTab13P3.Add_Click({
    $WPFw1.IsChecked = $false
    $WPFw2.IsChecked = $false
    $WPFw3.IsChecked = $false
    $WPFw4.IsChecked = $false
    $WPFw5.IsChecked = $false
    $WPFw6.IsChecked = $false
    $WPFw7.IsChecked = $false
    $WPFw8.IsChecked = $false
    $WPFw9.IsChecked = $false
    $WPFw10.IsChecked = $false
    $WPFw11.IsChecked = $false
    $WPFw12.IsChecked = $false
    $WPFw13.IsChecked = $true
    $WPFw14.IsChecked = $true
    $WPFw15.IsChecked = $false
    $WPFw16.IsChecked = $true
    $WPFw17.IsChecked = $false
    $WPFw18.IsChecked = $false
    $WPFw19.IsChecked = $false
    $WPFw20.IsChecked = $false
    $WPFw21.IsChecked = $false
    $WPFw22.IsChecked = $false
    $WPFw23.IsChecked = $true
    $WPFw24.IsChecked = $true
})

$WPFTab13P4.Add_Click({
        If ( $WPFw1.IsChecked -eq $true ) {
    Start-Process "https://www.startallback.com/"
    control appwiz.cpl
    $WPFw1.IsChecked = $false
    }

        If ( $WPFw2.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Modern_Context_Menu.reg" -Destination Modern_Context_Menu.reg
    ./Modern_Context_Menu.reg /quiet
    Write-Host "Disabled Full Context Menu"
    $WPFw2.IsChecked = $false
    }

        If ( $WPFw3.IsChecked -eq $true ) {
    Start-Process "https://github.com/valinet/ExplorerPatcher"
    control appwiz.cpl
    $WPFw3.IsChecked = $false
    }

        If ( $WPFw4.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Enable_Windows_welcome_experience.reg" -Destination Enable_Windows_welcome_experience.reg
    ./Enable_Windows_welcome_experience.reg /quiet
    Write-Host "Enabled Welcome Experience"
    $WPFw4.IsChecked = $false
    }

        If ( $WPFw5.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Enable_Windows_Copilot.reg" -Destination Enable_Windows_Copilot.reg
    ./Enable_Windows_Copilot.reg /quiet
    Write-Host "Enabled Windows Copilot"
    $WPFw5.IsChecked = $false
    }

        If ( $WPFw6.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Enable_background_apps_in_Windows_11.reg" -Destination Enable_background_apps_in_Windows_11.reg
    ./Enable_background_apps_in_Windows_11.reg /quiet
    Write-Host "Enabled Background Apps"
    $WPFw6.IsChecked = $false
    }

        If ( $WPFw7.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Bash_to_Context_Menu.reg" -Destination Remove_Bash_to_Context_Menu.reg
    ./Remove_Bash_to_Context_Menu.reg /quiet
    $WPFw7.IsChecked = $false
    }

        If ( $WPFw8.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Open_PowerShell_here_as_administrator.reg" -Destination Remove_Open_PowerShell_here_as_administrator.reg
    ./Remove_Open_PowerShell_here_as_administrator.reg /quiet
    $WPFw8.IsChecked = $false
    }

        If ( $WPFw9.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Command_Prompt.reg" -Destination Remove_Command_Prompt.reg
    ./Remove_Command_Prompt.reg /quiet
    $WPFw9.IsChecked = $false
    }

        If ( $WPFw10.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg" -Destination Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg
    ./Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg /quiet
    $WPFw10.IsChecked = $false
    }

        If ( $WPFw11.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Case_Sensitivity_context_menu.reg" -Destination Remove_Case_Sensitivity_context_menu.reg
    ./Remove_Case_Sensitivity_context_menu.reg /quiet
    $WPFw11.IsChecked = $false
    }

        If ( $WPFw12.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Screen_Snip_Context_Menu.reg" -Destination Remove_Screen_Snip_Context_Menu.reg
    ./Remove_Screen_Snip_Context_Menu.reg /quiet
    $WPFw12.IsChecked = $false
    }

        If ( $WPFw13.IsChecked -eq $true ) {
    Start-Process "https://www.startallback.com/"
    $WPFw13.IsChecked = $false
    }

        If ( $WPFw14.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Old_Context_Menu.reg" -Destination Old_Context_Menu.reg
    ./Old_Context_Menu.reg /quiet
    $WPFw14.IsChecked = $false
    }

        If ( $WPFw15.IsChecked -eq $true ) {
    Start-Process "https://github.com/valinet/ExplorerPatcher"
    $WPFw15.IsChecked = $false
    }

        If ( $WPFw16.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Disable_Windows_welcome_experience.reg" -Destination Disable_Windows_welcome_experience.reg
    ./Disable_Windows_welcome_experience.reg /quiet
    Write-Host "Disabled Welcome Experience"
    $WPFw16.IsChecked = $false
    }

        If ( $WPFw17.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Bash_to_Context_Menu.reg" -Destination Add_Bash_to_Context_Menu.reg
    ./Add_Bash_to_Context_Menu.reg /quiet
    $WPFw17.IsChecked = $false
    }

        If ( $WPFw18.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Open_PowerShell_here_as_administrator.reg" -Destination Add_Open_PowerShell_here_as_administrator.reg
    ./Add_Open_PowerShell_here_as_administrator.reg /quiet
    $WPFw18.IsChecked = $false
    }

        If ( $WPFw19.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Command_Prompt.reg" -Destination Add_Command_Prompt.reg
    ./Add_Command_Prompt.reg /quiet
    $WPFw19.IsChecked = $false
    }

        If ( $WPFw20.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg" -Destination Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg
    ./Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg /quiet
    $WPFw20.IsChecked = $false
    }

        If ( $WPFw21.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Case_Sensitivity_context_menu.reg" -Destination Add_Case_Sensitivity_context_menu.reg
    ./Add_Case_Sensitivity_context_menu.reg /quiet
    $WPFw21.IsChecked = $false
    }

        If ( $WPFw22.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Screen_Snip_Context_Menu.reg" -Destination Add_Screen_Snip_Context_Menu.reg
    ./Add_Screen_Snip_Context_Menu.reg /quiet
    $WPFw22.IsChecked = $false
    }

        If ( $WPFw23.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Disable_Windows_Copilot.reg" -Destination Disable_Windows_Copilot.reg
    ./Disable_Windows_Copilot.reg /quiet
    Write-Host "Disabled Windows Copilot"
    $WPFw22.IsChecked = $false
    }

        If ( $WPFw24.IsChecked -eq $true ) {
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Disable_background_apps_in_Windows_11.reg" -Destination Disable_background_apps_in_Windows_11.reg
    ./Disable_background_apps_in_Windows_11.reg /quiet
    Write-Host "Disabled Background Apps"
    $WPFw22.IsChecked = $false
    }
})

$Form.ShowDialog() | out-null
