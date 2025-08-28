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
            <TextBlock TextWrapping="Wrap" Text="SOFTWARE" Foreground="#FF777777" Margin="31,50,0,333" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content="Windows Italia" HorizontalAlignment="Left" VerticalAlignment="Top"  Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="120" Name="Tab1A" Margin="10,10,0,0" Background="#FF1A2733" FontSize="16"/>
            <Button Content="Winget" HorizontalAlignment="Left" VerticalAlignment="Top"  Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Name="Tab2A" Margin="30,70,0,0" Background="#FF1A2733"/>
                <Image Height="18" Width="18" Name="Powershell" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Powershell.png" Margin="32,66,780,308"/>
            <Button Content="     Bloatware" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,95,0,0" Name="Tab3A" Background="#FF1A2733"/>
                <Image Height="18" Width="18" Name="Bloatware" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Bloatware.png" Margin="31,97,781,289"/>
            <TextBlock TextWrapping="Wrap" Text="TWEAKS" Foreground="#FF777777" Margin="30,128,0,255" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content=" Settings" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,150,0,0" Name="Tab4A" Background="#FF1A2733"/>
                <Image Height="18" Width="18" Name="Setting" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Setting.png" Margin="32,-82,780,0"/>
            <Button Content="   Defender" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,175,0,0" Name="Tab5A" Background="#FF1A2733"/>
                <Image Height="20" Width="20" Name="Defender" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Defender.png" Margin="31,-31,779,0"/>
            <Button Content="Update" HorizontalAlignment="Left" VerticalAlignment="Top" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,200,0,0" Name="Tab6A" Background="#FF1A2733"/>
                <Image Height="18" Width="18" Name="Update" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Update.png" Margin="32,18,780,0"/>
            <Button Content="  Explorer" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,225,0,0" Name="Tab7A"/>
                <Image Height="18" Width="18" Name="Explorer" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Explorer.png" Margin="32,68,780,0"/>
            <Button Content="Utility " HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,250,0,0" Name="Tab8A"/>
                <Image Height="18" Width="18" Name="win11" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/win11.png" Margin="32,118,780,0"/>
            <Button Content="       Application" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,275,0,0" Name="Tab9A"/>
                <Image Height="18" Width="18" Name="Taskbar" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Taskbar.png" Margin="32,168,780,0"/>
            <TextBlock TextWrapping="Wrap" Text="SETTINGS" Foreground="#FF777777" Margin="31,318,0,15" HorizontalAlignment="Left" FontFamily="Segoe UI" Width="76" FontSize="14"/>
            <Button Content="   Repair PC" HorizontalAlignment="Left" VerticalAlignment="Top" Background="#FF1A2733" Foreground="#ffffff" BorderThickness="0,0,0,0" FontWeight="Bold" Height="20" Width="100" Margin="30,345,0,0" Name="Tab10A"/>
            <Image Height="18" Width="18" Name="RepairPC" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Repair%20PC.PNG" Margin="32,323,780,14"/>
            <TextBlock HorizontalAlignment="Left" Margin="48,391,0,0" TextWrapping="NoWrap" Text="v 3.5.0 by @Paki94x" VerticalAlignment="Top" Foreground="#FF6A6A6A" Height="18" Width="70" FontStyle="Normal" FontWeight="Light" FontStretch="Expanded" TextTrimming="CharacterEllipsis" FontSize="8"/>
            <TextBlock HorizontalAlignment="Left" Margin="30,28,0,0" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="7" Foreground="#FF777777"><Run FontStyle="Italic" Text="Follow us on Telegram @windowsitaly"/></TextBlock>
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
                        <StackPanel Margin="-100,60,0,0" Grid.Column="1">
                            <Button Content="All in One Click" Width="200" Height="50" Margin="0,100,0,0" Foreground="White" BorderBrush="#FF777777" FontSize="18" FontWeight="Bold" Name="Tab1P1">
                                <Button.Background>
                                    <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                        <GradientStop Color="#FF10171E" Offset="1"/>
                                        <GradientStop Color="#FF1A2733" Offset="0.257"/>
                                    </LinearGradientBrush>
                                </Button.Background>
                            </Button>
                            <TextBlock TextWrapping="Wrap" Text="The selected presets optimize and speed up your PC. All options can be enabled or disabled in the dedicated section" Foreground="#FF777777" Margin="0,10,0,0" FontSize="8" Width="140" Height="40" TextAlignment="Center" FontStyle="Italic"/>
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
                            <Button Content="WingetUI" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Click to open a GUI to use winget for searching and installing applications (you need winget installed on your PC)" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="BulkCrap Uninstaller" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab2P3">
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
                            <TextBlock TextWrapping="Wrap" Text="Click to open Bulk Crap Uninstaller and choose the programs you want to uninstall from your PC" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
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
                            <CheckBox Name="boutlook" Content="Outlook for Windows" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bxboxapp" Content="Xbox APP" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bbing" Content="Bing Search" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bassist" Content="Game Assistant" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bstickynotes" Content="Sticky Notes" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bmspaint" Content="MS Paint" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bcamera" Content="Camera" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bCopilot" Content="Copilot" Margin="5,0,0,0" Foreground="White"/>
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
                            <CheckBox Name="bclipchamp" Content="Clipchamp" Margin="5,0,0,0" Foreground="White"/>
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
                            <CheckBox Name="bteams" Content="Microsoft Teams" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bweather" Content="Weather" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bonedrive" Content="Microsoft Onedrive" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="btodo" Content="Microsoft To Do" Margin="5,0,0,0" Foreground="White"/>
                            <CheckBox Name="bpowerautomate" Content="Power Automate" Margin="5,0,0,0" Foreground="White"/>
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
                <TabItem Header="Setting" Visibility="Collapsed" Name="Tab4">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,50,0,0" Grid.Column="0">
                            <CheckBox Name="s1" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s3" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s5" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s7" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s9" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s11" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s13" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s15" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s17" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s19" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s21" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s23" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s25" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s27" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s29" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s31" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s33" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,50,0,0" Grid.Column="1">
                            <Label Content="Settings Tweaks" Margin="-50,-45,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="s2" Content="Aero Shake" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s4" Content="All Bandwidth" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s6" Content="Background UWP Apps" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s8" Content="Better SSD Use" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s10" Content="Custom powerplan" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s12" Content="Dark Theme" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s14" Content="Details Operation Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s16" Content="File Extensions" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s18" Content="Fast Startup" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s20" Content="Graphic Settings FX" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s22" Content="Gpedit on Home Version" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s24" Content="Hidden Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s26" Content="Hibernation" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s28" Content="IRP Stack Size" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s30" Content="Reserved Storage" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s32" Content="Superfetch" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s34" Content="Telemetry" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            </StackPanel>
                        <StackPanel Margin="5,50,0,0" Grid.Column="2">
                            <CheckBox Name="s35" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s37" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s39" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s41" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s43" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s45" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s47" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s49" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s51" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s53" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s55" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s57" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s59" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s61" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s63" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s65" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="s67" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,50,0,0" Grid.Column="3">
                            <CheckBox Name="s36" Content="Activity History" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s38" Content="Advertising ID" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s40" Content="Auto Manteinance" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s42" Content="Diagnostic Tracking" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s44" Content="Error Reporting" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s46" Content="Feedback" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s48" Content="Fullscreen Optimization" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s50" Content="Language Options" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s52" Content="Location Tracking" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s54" Content="Resume Explorer at Logon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s56" Content="Scheduled Defrag" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s58" Content="Storage Check" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s60" Content="Full Task Manager (Only 10)" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s62" Content="Tailored Experiences" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s64" Content="Tweaks GameDVR" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s66" Content="WAP Push Service" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="s68" Content="Wi-Fi Sense" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
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
                            <Button Content="Suggested Choices" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Optimized Settings to obtain the best performances on your PC" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="OO ShutUp10++" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab4P3">
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
                            <TextBlock TextWrapping="Wrap" Text="Preset for OO ShutUp10++ HERE" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
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
                            <Button Content="Preset for OO ShutUp10++ HERE" Margin="30,-180,0,0" Foreground="White" FontSize="10" Height="20" HorizontalAlignment="Stretch" Width="150" Name="Tab4P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends1" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Defender" Visibility="Collapsed" Name="Tab5">
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
                            <CheckBox Name="d49" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>

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
                            <CheckBox Name="d50" Content="Smart Screen Filter" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
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
                            <CheckBox Name="d51" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="d37" Content="LLMNR" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d38" Content="Set Current Network Public" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d39" Content="Set Unknown Networks Public" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d40" Content="Installation of Network Device" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d41" Content="Windows Firewall" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d42" Content="Windows Defender" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d43" Content="Windows Defender Cloud" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d44" Content="F8 Boot Menu Options" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d45" Content="NetBIOS over TCP/IP" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d46" Content="Internet Connection Sharing" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d47" Content="Windows Defender SysTray" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d48" Content="Windows Defender Services" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="d52" Content="Protect Operating System File" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
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
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it reactivates too many services" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Suggested Choices" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P2">
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
                            <Button Content="Disable ALL Protection" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab5P3">
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
                            <Image Height="37" Width="130" Name="Legends3" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Update" Visibility="Collapsed" Name="Tab6">
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
                            <CheckBox Name="u9" Content="Security Update" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <Button Content="Disable Windows Update" Margin="-300,10,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="170" Name="Tab6P7">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>   
                            <Button Content="Hide Some Update from WU" Margin="-282,10,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="170" Name="Tab6P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Fix Missing Update" Margin="-333,10,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="170" Name="Tab6P8">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>                            
                        </StackPanel>
                        <StackPanel Grid.Column="5">
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
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not recommended because it activates automatic restart etc" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Security Update" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Install only the Essential Update" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Reset Windows Update" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab6P3">
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
                            <Button Content="Clean Windows Update Cache" Margin="35,-125,0,0" Foreground="White" FontSize="10" Height="20" HorizontalAlignment="Stretch" Width="170" Name="Tab6P6">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                         
                            <Image Height="37" Width="130" Name="Legends4" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Explorer" Visibility="Collapsed" Name="Tab7">
                        <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="60"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="120"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="135"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,70,0,0" Grid.Column="0">
                            <CheckBox Name="ex1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex17" Content="" Margin="5,25.5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex23" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex25" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex27" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex29" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,60,0,0" Grid.Column="1">
                        <Label Content="Explorer Tweaks" Margin="-50,-55,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                        <Label Content="Icon in This PC" Margin="-70,-10,0,0" FontWeight="Bold" FontSize="10" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ex2" Content="Desktop" Margin="-45,2,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex4" Content="Documents" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex6" Content="Downloads" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex8" Content="Music" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex10" Content="Pictures" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex12" Content="Videos" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex14" Content="Network" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex16" Content="3d Object" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <Label Content="Desktop Icon" Margin="-70,0,0,0" FontWeight="Bold" FontSize="10" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ex18" Content="All Icon" Margin="-45,2,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex20" Content="Recycle Bin" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex22" Content="This PC" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex24" Content="User Folder" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex26" Content="Control Panel" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex28" Content="Network" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex30" Content="Build Number" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>

                        </StackPanel>
                        <StackPanel Margin="5,70,0,0" Grid.Column="2">
                            <CheckBox Name="ex31" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex33" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex35" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex37" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex39" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex41" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex43" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex45" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex47" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex49" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex51" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex53" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex55" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex57" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex59" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex91" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,60,0,0" Grid.Column="3">
                        <Label Content="Tweaks" Margin="-29,-55,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <Label Content="Start Menu and Taskbar" Margin="-20,-10,0,0" FontWeight="Bold" FontSize="10" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ex32" Content="Recent Elements" Margin="5,2,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex34" Content="Most Used" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex36" Content="Windows Search" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex38" Content="All Tray Icon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex40" Content="Task Icon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex42" Content="People Icon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex44" Content="Transparent" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex46" Content="Action Center" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex48" Content="News and Interest" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex50" Content="Search Bar" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex52" Content="Meet Icon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex54" Content="Seconds in Clock" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex56" Content="Taskview Button" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex58" Content="Recommended" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex60" Content="Align Left" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex92" Content="PhoneLink" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,70,0,0" Grid.Column="4">
                            <CheckBox Name="ex61" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex63" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex65" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex67" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex69" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex71" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex73" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex75" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex77" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex79" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex81" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex83" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex85" Content="" Margin="5,25.5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex87" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ex89" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,60,0,0" Grid.Column="5">
                        <Label Content="Icon in Explorer NavBar" Margin="-20,-10,0,0" FontWeight="Bold" FontSize="10" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ex62" Content="Desktop" Margin="5,2,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex64" Content="Documents" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex66" Content="Downloads" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex68" Content="Music" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex70" Content="Pictures" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex72" Content="Videos" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex74" Content="Network" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex76" Content="Home" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex78" Content="Gallery" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex80" Content="OneDrive" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex82" Content="Libraries" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex84" Content="All Folder" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <Label Content="Explorer Menu" Margin="-20,0,0,0" FontWeight="Bold" FontSize="10" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ex86" Content="Checkbox" Margin="5,2,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex88" Content="Recent Files Lists" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ex90" Content="This PC Quick Access" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>

                        </StackPanel>
                        <StackPanel Grid.Column="6">
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
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it reactivates too many services" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Suggested Choices" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Optimized Settings to obtain the best performance for your PC" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Context Menu" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab7P3">
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
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
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
                            <Button Content="Reset Explorer" Margin="30,-180,0,0" Foreground="White" FontSize="10" Height="20" HorizontalAlignment="Stretch" Width="150" Name="Tab7P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends7" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Utility" Visibility="Collapsed" Name="Tab8">
                     <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="75"/>
                            <ColumnDefinition Width="155"/>
                            <ColumnDefinition Width="25"/>
                            <ColumnDefinition Width="185"/>
                            <ColumnDefinition Width="200"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Margin="5,50,0,0" Grid.Column="0">
                            <CheckBox Name="ut1" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut23" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut25" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut27" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut29" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut31" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut33" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>  
                        </StackPanel>
                        <StackPanel Margin="0,50,0,0" Grid.Column="1">
                        <Label Content="Utility Tweaks" Margin="-50,-45,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="ut2" Content="Access UWP App" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut4" Content="Autoplay" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut6" Content="Autorun for All Drives" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut8" Content="Background App Access" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut10" Content="BIOS in Local Time" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut12" Content="Coloring Compressed NTFS Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut14" Content="Creation of Thumbnail Cache" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut16" Content="Creation of Thumbnails" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut18" Content="Creation Thumbs.db Network" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut20" Content="Empty Drives (With no Media)" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut22" Content="Folder Merge Conflicts" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut24" Content="Index Files" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut26" Content="Paint3D" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut28" Content="Setting Sync" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut30" Content="Sharing Wizard" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut32" Content="Sync Provider Notifications" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut34" Content="Treat as Internal Port" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,50,0,0" Grid.Column="2">
                            <CheckBox Name="ut35" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut37" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut39" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut41" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut43" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut45" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut47" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut49" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut51" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut53" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut55" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut57" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut59" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut61" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut63" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut65" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="ut67" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>  
                        </StackPanel>
                        <StackPanel Margin="0,50,0,0" Grid.Column="3">
                            <CheckBox Name="ut36" Content="Accented Capitals" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut38" Content="Automatic Maps Update" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut40" Content="Clipboard History" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/> <!-- corretto da a42 -->
                            <CheckBox Name="ut42" Content="ControlPanel Detailed View" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut44" Content="Enhanced Pointer Precision" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut46" Content="Hyper-V" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut48" Content="'How do you want to open'" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut50" Content="Windows Live ID Service" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut52" Content="Remove 'Let's Finish Setting" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut54" Content="Numlock after Startup" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut56" Content="NFS (Network FS)" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut58" Content="Restore Explorer Ribbon" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut60" Content="Search for App in MS Store" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut62" Content="Shortcut Icon Arrow" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut64" Content="'-Shortcut' to Name" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut66" Content="Sticky Keys Prompt" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="ut68" Content="WSL (Linux Subsystem)" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>                            
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
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it reactivates too many services" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Suggested Choices" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Optimized Settings to obtain the best performance for your PC" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Reinstall Microsoft Store" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab8P3">
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
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
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
                            <Button Content="Uninstall Microsoft Store" Margin="30,-180,0,0" Foreground="White" FontSize="10" Height="20" HorizontalAlignment="Stretch" Width="150" Name="Tab8P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Image Height="37" Width="130" Name="Legends2" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Application" Visibility="Collapsed" Name="Tab9">
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
                            <CheckBox Name="a3" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a5" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a7" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a9" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a11" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a13" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a15" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a17" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a19" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a21" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a23" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="1">
                        <Label Content="App Tweaks" Margin="-50,-65,0,0" FontWeight="Bold" FontSize="25" Background="#00000000" Foreground="White"/>
                            <CheckBox Name="a2" Content="Internet Explorer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a4" Content="Work Folders" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a6" Content="MS365 Ads" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a8" Content="Xbox Features" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a10" Content="Windows Media Player" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a12" Content="Microsoft Print to PDF" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a14" Content="Microsoft XPS Writer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a16" Content="Fax Printer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a18" Content="Developer Mode" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a20" Content="Math Recognizer" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a22" Content="Remote Assistance" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a24" Content="Remote Desktop" Margin="-45,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                        </StackPanel>
                        <StackPanel Margin="5,80,0,0" Grid.Column="2">
                            <CheckBox Name="a31" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a33" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a35" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a37" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a39" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a41" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a43" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a45" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a47" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a49" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a51" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                            <CheckBox Name="a53" Content="" Margin="5,5,0,0" Foreground="White" Background="#FFBF0C0C"/>
                        </StackPanel>
                        <StackPanel Margin="0,80,0,0" Grid.Column="3">
                            <CheckBox Name="a32" Content="Debloat Adobe" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a34" Content="Debloat Edge" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a36" Content="Debloat Brave" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a38" Content="PaintAI" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a40" Content="NotepadAI" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a42" Content="LockScreen Tips" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a44" Content="Desktop Spotlight" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a46" Content="AI Data Analysis" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a48" Content="AI Recall" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a50" Content="Windows Suggestions" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a52" Content="Prefer IPv4" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                            <CheckBox Name="a54" Content="Intel MM" Margin="5,5,0,0" Foreground="White" Background="#FF0CBF5B"/>
                                               
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
                            <TextBlock TextWrapping="Wrap" Text="Default Settings, not reccomended because it reactivates too many services" Foreground="#FF777777" Margin="30,0,0,0" FontSize="8" Width="140" Height="22" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Optimized Settings" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P2">
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
                            <TextBlock TextWrapping="Wrap" Text="Optimized for Desktop to obtain the best performances on your Workstation" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="33" TextAlignment="Center" FontStyle="Italic"/>
                            <Button Content="Microsoft Edge Tweaker" Margin="30,15,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="40" Name="Tab9P3">
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
                            <TextBlock TextWrapping="Wrap" Text="" Foreground="#FF777777" Margin="41,5,0,0" FontSize="8" Width="140" Height="43" TextAlignment="Center" FontStyle="Italic"/>
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
                            <Button Content="Uninstall Microsoft Edge" Margin="30,-180,0,0" Foreground="White" FontSize="10" Height="20" HorizontalAlignment="Stretch" Width="150" Name="Tab9P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>                            
                            <Image Height="37" Width="130" Name="Legends6" SnapsToDevicePixels="True" Source="https://raw.githubusercontent.com/Iblis94/debloat3.0/main/assets/Tool/Legends.png" Margin="30,0,0,0"/>
                        </StackPanel>
                    </Grid>
                </TabItem>
                <TabItem Header="Repair PC" Visibility="Collapsed" Name="Tab10">
                    <Grid Background="#FF1F272E">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="220"/>
                            <ColumnDefinition Width="200"/>
                            <ColumnDefinition Width="200"/>
                            <ColumnDefinition Width="26"/>
                        </Grid.ColumnDefinitions>
                        <StackPanel Grid.Column="0">
                        <TextBlock TextWrapping="Wrap" Text="Customization Software" Foreground="#FF999999" Margin="5,20,0,0" FontWeight="Bold" FontSize="18" Width="140" Height="20" TextAlignment="Center"/>
                            <Button Content="PowerToys" Margin="0,15,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P1">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Start11" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P2">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="OpenShell" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P3">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Windhawk" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P4">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="TaskbarX" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P5">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Winaero" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P6">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Everything" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P7">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="FlowLauncher" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P8">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Files" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P9">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="Fences" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P10">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
                            <Button Content="RainMeter" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P11">
                                <Button.Background>
                                    <SolidColorBrush Color="#1f272e"/>
                                </Button.Background>
                                <Button.BorderBrush>
                                    <SolidColorBrush Color="Transparent"/>
                                </Button.BorderBrush>
                                <Button.BorderThickness>0</Button.BorderThickness>
                            </Button>
			                <Button Content="SuperGodMode" Margin="0,5,0,0" Foreground="White" FontWeight="Bold" Height="20" HorizontalAlignment="Stretch" Width="100" Name="Tab10P12">
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
                        
                            <Button Content="Check Windows License" Margin= "0,50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P14" Padding="1,1,1,1">
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
                            <Button Content="Check Office License" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P15">
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
                            <Button Content="Battery Report" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P16">
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
                            <Button Content="Export Drivers" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P17">
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
                            <Button Content="Reset Connection" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P18">
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
                            <Button Content="Autologin" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P19">
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
                            <Button Content="Add User Offline" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P20">
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
                            <Button Content="Dism" Margin= "0,50,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P21">
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
                            <Button Content="SFC" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P22">
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
                            <Button Content="Swap Options" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P23">
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
                            <Button Content="Change Registered Owner" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P24">
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
                            <Button Content="MediaCreationTool" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P25">
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
                            <Button Content="WhyNotWin11" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P26">
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
                            <Button Content="Control Panel App" Margin= "0,10,0,0" Foreground="White" BorderBrush="#FF777777" FontWeight="Bold" Height="35" HorizontalAlignment="Stretch" Grid.ColumnSpan="3" Width="160" Name="Tab10P13">
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
    })

##########################################
##########################################
##########################################

##########################################
################# Easy ###################
##########################################
    $WPFTab1P1.Add_Click({

$options = @"
Do you want to remove pre-installed bloatware applications from this PC?

It may take a while...

You can reinstall all Applications with Microsoft Store
"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Bloatware Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
    Write-Host "Removing Bloatware..."
    Get-AppxPackage -allusers Microsoft.Windows.Photos | Remove-AppxPackage
    Get-AppxPackage -allusers CanonicalGroupLimited.UbuntuonWindows | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.OutlookForWindows | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
    Get-AppxPackage -allusers *Microsoft.GamingApp* | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.BingSearch | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Edge.GameAssist | Remove-AppxPackage
    Get-AppxPackage -allusers MicrosoftCorporationII.QuickAssist | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MSPaint | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.WindowsCamera | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Copilot | Remove-AppxPackage
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
    Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage
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
    Get-AppxPackage -allusers Microsoft.ZuneMusic | Remove-AppxPackage
    Get-AppxPackage -AllUsers *Clipchamp* | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.ZuneVideo | Remove-AppxPackage
    Get-AppxPackage -allusers EclipseManager | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.LanguageExperiencePackit-IT | Remove-AppxPackage
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
    Get-AppxPackage -allusers Microsoft.YourPhone | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.MicrosoftEdge.Stable | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.Edge | Remove-AppxPackage
    Get-AppxPackage -AllUsers *MSTeams* | Remove-AppxPackage
    Get-AppxPackage -AllUsers *BingWeather* | Remove-AppxPackage
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
    Get-AppxPackage -AllUsers *Microsoft.Todos* | Remove-AppxPackage
    Get-AppxPackage -AllUsers *PowerAutomateDesktop* | Remove-AppxPackage
    Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
    Write-Host "Bloatware cleanup completed"
    }
    else {
        Write-Host "Bloatware cleanup skipped - no changes made"
}

$options = @"
Do you want to apply the following settings tweaks for this PC?

It may take a while...

=== DISABLE ===
- Aero Shake
- Reserved Storage
- Superfetch
- Telemetry
- Activity History
- Advertising ID
- Auto Maintenance
- Diagnostic Tracking
- Error Reporting
- Feedback
- Language Options
- Location Tracking
- Scheduled Defrag
- Storage Check
- Tailored Experiences
- WAP Push Service
- Wi-Fi Sense

=== ENABLE ===
- All Bandwidth
- Better SSD Settings
- Details Operations Files
- IRP Stack Size
- Resume Explorer at Logon
- Fullscreen Optimization
- GameDVR Tweaks
- Custom Powerplan
- Dark Theme
"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Setting Tweaks",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Type dword -Value 1
        Write-Host "Disabled AeroShake"
        $ErrorActionPreference = 'SilentlyContinue'
        $Bandwidth = "HKLM:\SOFTWARE\Policies\Microsoft\Psched"
        New-Item -Path $Bandwidth -ItemType Directory -Force
        Set-ItemProperty -Path $Bandwidth -Name "NonBestEffortLimit" -Type DWord -Value 0
        Write-host "Enabled All Bandwidth" 
        fsutil behavior set DisableLastAccess 1
        fsutil behavior set EncryptPagingFile 0
        Write-host "Set Better SSD Use" 
        powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
        powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
        powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
        powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
        Write-host "Custom Powerplan Installed" 
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0
        Write-Host "Set Dark Theme"
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
        Write-Host "Set Show Details Operation Files"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0       
        Write-Host "Showed known File Extensions"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
        Write-Host "Showed Hidden Files"
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
        Write-host "Set IRP Stack Size to 20" 
        Set-WindowsReservedStorageState -State Disabled
        Write-host "Disabled Reserved Storage" 
        Stop-Service "SysMain" -WarningAction SilentlyContinue
        Set-Service "SysMain" -StartupType Disabled
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableThirdPartySuggestions" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -PropertyType DWord -Value 1 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Name "CEIPEnable" -PropertyType DWord -Value 0 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "AITEnable" -PropertyType DWord -Value 0 -Force | Out-Null
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "DisableUAR" -PropertyType DWord -Value 1 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener")) {
            New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" -Name "Start" -PropertyType DWord -Value 0 -Force | Out-Null
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
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
        Write-host "Disabled Activity History"
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
        Write-host "Disabled Advertising ID" 
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "MaintenanceDisabled" -Type dword -Value 1
        Write-host "Disabled Auto Manteinance" 
        Stop-Service "DiagTrack" -WarningAction SilentlyContinue
        Set-Service "DiagTrack" -StartupType Disabled
        Write-host "Disabled Diagnostic Tracking"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
        Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
        Write-host "Disabled Error Reporting"
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
            New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
        Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
        Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
        Write-host "Disabled Feedback" 
        Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 0
        Remove-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -ErrorAction SilentlyContinue
        Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 0
        Write-host "Enabled Optimization Fullscreen" 
        Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -Type DWord -Value 1 
        Write-Host "Disabled Language Options"
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
        Write-host "Disabled Location Tracking"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -Type DWord -Value 1
        Write-Host "Enabled Restoring Previous Folder at Logon"
        Disable-ScheduledTask -TaskName "Microsoft\Windows\Defrag\ScheduledDefrag" | Out-Null
        Write-host "Disabled Scheduled Defrag" 
        Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
        Write-host "Disabled Storage Check" 
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableCdp" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableMmx" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
            New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
        Write-host "Disabled Tailored Experiences" 
        Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -ErrorAction SilentlyContinue
        Write-host "Enabled Tweaks GameDVR" 
        Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
        Set-Service "dmwappushservice" -StartupType Disabled
        Write-host "Disabled WAP Push Service"
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
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/OO.cfg" -Destination ooshutup10.cfg
        Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
        ./OOSU10.exe ooshutup10.cfg /quiet
        Write-Host "Executed O&O Shutup with Recommended Settings"
    }
    else {
        Write-Host "Settings Tweaks skipped - no changes made"
}

$options = @"
What do you want to do with Fast Startup and Hibernation?

- Fast Startup makes Windows boot faster, but can sometimes cause issues with updates or dual-boot setups.  
- Hibernation saves your session to disk, but uses disk space and can slow shutdown.  

Yes - Enable
No - Disable
Cancel - Do Nothing

"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Fast Startup - Hibernation",
        "YesNoCancel",
        "Question"
    )

    if ($result -eq "Yes") {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 1
        Write-host "Enabled Fast Startup" 
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type Dword -Value 1
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
        Write-host "Enabled Hibernation"
    }
    elseif ($result -eq "No") {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0
        Write-host "Disabled Fast Startup" 
        Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type DWord -Value 0
        powercfg /HIBERNATE OFF 2>&1 | Out-Null
        Write-host "Disabled Hibernation"
    }
    else {
        Write-Host "No changes applied (Do Nothing)."
}

$options = @"
Do you want to use the suggested choices for Defender?

It may take a while...

=== DISABLE ===
- Core Isolation Memory Integrity
- Account Protection Warning
- Block of Downloaded Files
- .NET Strong Cryptography
- Share Mapped Drives
- Implicit Administrative Shares
- Smart Screen Filter
- Windows Defender SysTray
- Protect Operating System File

=== ENABLE ===
- UAC Minimum Level
- F8 Boot Menu Options
- Set All Network to Private

"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Defender Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
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
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\010103000F0000F0010000000F0000F0C967A3643C3AD745950DA7859209176EF5B87C875FA20DF21951640E807D7C24" -Name "Category" -Type DWord -Value 1
        Write-Host "Set Unknown Networks Profile to Private"
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
        bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
        Write-Host "Enabled F8 Boot Menu Options"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Name "EnabledV9" -Type DWord -Value 0
        Write-host "Disabled Smartscreen Filter" 
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 0
        Write-Host "Hided Protected Operating System Files"
        Write-Host "Windows Defender suggested settings completed"
    }
    else {
        Write-Host "Windows Defender setting are intact - no changes made"
}

$options = @"
Do you want to use the suggested choices for Windows Update?

It may take a while...

=== DISABLE ===
- Nightly Wake-Up for Automatic Maintenance
- Automatic Downloads
- Automatic Restart
- Notifications

=== ENABLE ===
- Security Update
- Restrict Windows Update P2P Optimization to Local Network

"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Update Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
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
    }
    else {
        Write-Host "Windows Update setting are intact - no changes made"
}

$options = @"
Do you want to use the suggested choices for Explorer?

It may take a while...

=== DISABLE ===
- 3D Object
- Recent Elements
- Most Used
- Windows Search
- Task Icon
- People Icon
- News and Interest
- Search Bar
- Meet Icon
- Tasview Button
- Reccomended in Start
- Home in Explorer
- Gallery in Explorer
- Libraries in Explorer


=== ENABLE ===
- Old Context Menu
- Recycle Bin in Desktop
- This PC in Desktop
- All Tray Icon in Taskbar
- Transparent Taskbar
- Align Left in Taskbar
- This PC Quick Access

"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Explorer Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Old_Context_Menu.reg" -Destination Old_Context_Menu.reg
        ./Old_Context_Menu.reg /quiet	
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue   
        Write-Host "Hided 'Share' in Context Menu"	
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
        Remove-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Include in Library"	
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
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
        Write-Host "Disabled 'Recent Elements' in Start Menu"
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
        Write-Host "Disabled 'Recent Elements' in Start Menu"
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -Type DWord -Value 1
        Write-Host "Disabled 'Most Used' in Start Menu"
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
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
        Write-Host "Showed All Tray Icon"
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
        Write-Host "Hided Task Icon in Taskbar"
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
        Write-Host "Hided People Icon in Taskbar"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "EnableTransparency" -Value 1 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 1
        Write-Host "Transparency enabled"
        if (-not (Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 0 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 0 -Force | Out-Null
        if (-not (Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds")) {
            New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Force | Out-Null
        }
        New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -PropertyType DWord -Value 0 -Force | Out-Null
        Write-host "Disabled News and Interests" 
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
        Write-Host "Search box removed from taskbar"
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        $valueName = "TaskbarMn"
        if (-not (Get-ItemProperty -Path $regPath -Name $valueName -ErrorAction SilentlyContinue)) {
            New-ItemProperty -Path $regPath -Name $valueName -PropertyType DWord -Value 0 -Force | Out-Null
        } else {
            Set-ItemProperty -Path $regPath -Name $valueName -Value 0
        }
        Stop-Process -ProcessName explorer -Force
        Start-Process explorer.exe
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Value 1 -Type DWord
        Write-Host "Meet Now hidden/disabled"
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0
        Write-Host "Task View button hidden on taskbar"      
        $path1 = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
        if (-not (Test-Path $path1)) { New-Item -Path $path1 -Force | Out-Null }
        New-ItemProperty -Path $path1 -Name "HideRecommendedSection" -PropertyType DWord -Value 1 -Force | Out-Null
        $path2 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Start"
        if (-not (Test-Path $path2)) { New-Item -Path $path2 -Force | Out-Null }
        New-ItemProperty -Path $path2 -Name "HideRecommendedSection" -PropertyType DWord -Value 1 -Force | Out-Null
        $path3 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Education"
        if (-not (Test-Path $path3)) { New-Item -Path $path3 -Force | Out-Null }
        New-ItemProperty -Path $path3 -Name "IsEducationEnvironment" -PropertyType DWord -Value 1 -Force | Out-Null
        $path4 = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        if (-not (Test-Path $path4)) { New-Item -Path $path4 -Force | Out-Null }
        New-ItemProperty -Path $path4 -Name "Start_Layout" -PropertyType DWord -Value 1 -Force | Out-Null
        Write-Host "Start menu configured to hide recommended section and show more pins"
        Stop-Process -ProcessName explorer -Force
        Start-Process explorer.exe
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Value 0 -Type DWord
        Write-Host "TaskbarAl align to left"
        New-Item -Path "HKCU:\Software\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -Name "System.IsPinnedToNameSpaceTree" -Value 0
        Write-Host "Home hidden in Navigation Pane"
        New-Item -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Name "System.IsPinnedToNameSpaceTree" -Value 0
        Write-Host "Gallery hidden in Navigation Pane"
        Remove-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -ErrorAction SilentlyContinue
        Write-Host "Hided Libraries Icon in Explorer Namespace"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "HubMode" -Type DWord -Value 1
            If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Type DWord -Value 1
        Write-Host "Showed Full Directory Path in Explorer"
        Write-Host "Change Default Explorer view to This PC"
    }
    else {
        Write-Host "Explorer setting are intact - no changes made"
}

$options = @"
Do you want to apply the following utility tweaks for this PC?

It may take a while...

=== DISABLE ===
- Paint 3D
- Sync Provider Notifications
- Automatic Maps Update
- How do you want to open
- Welcome Experiences
- 'Shortcut' to Name
- Sticky Keys Prompt

=== ENABLE ===
- Clipboard History
- Control Panel Detailed View
- Numlock After Startup

"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Utility Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
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
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 0
        Write-Host "Hided Sync Provider Notifications"
        Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
        Write-host "Disabled Automatic Maps Updates" 
        If (!(Test-Path "HKCU:\Software\Microsoft\Clipboard")) {
        New-Item -Path "HKCU:\Software\Microsoft\Clipboard" -Force | Out-Null
        }
        Set-ItemProperty "HKCU:\Software\Microsoft\Clipboard" -Name "EnableClipboardHistory" -Type DWord -Value 1
        Write-Host "Enabled Clipboard History"
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -Type DWord -Value 0
        Write-Host "Set Control Panel Icon View"
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoNewAppAlert" -Type DWord -Value 1
        Write-Host "Disabled 'How do you want to open this file?' Prompt"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0 -Type DWord
        Write-Host "Disabled Welcome Experience"
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
        Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
        Write-Host "Disabled Sticky Keys Prompt"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "link" -Type Binary -Value ([byte[]](0,0,0,0))
        Write-host "Disabled adding '- Shortcut' to shorcut name" 
    }
    else {
        Write-Host "Utility Tweaks Skipped - no changes made"
}

$options = @"
Do you want to apply the following Application tweaks for this PC?

It may take a while...

=== DISABLE ===
- Internet Explorer
- Work Folders
- M365 Ads
- Windows Media Player
- Microsoft Print to PDF
- Microsoft XPS Writer
- Fax Printer
- Developer Mode
- Math Recognizer
- Paint AI
- Notepad AI
- LockScreen Tips
- Desktop Spotlight
- AI Data Analysis
- AI Recall
- Windows Suggestions
"@

    $result = [System.Windows.MessageBox]::Show(
        $options,
        "Application Section",
        "YesNo",
        "Question"
    )

    if ($result -eq "Yes") {
            Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-$env:PROCESSOR_ARCHITECTURE" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Internet Explorer"
            Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Work Folders"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableConsumerAccountStateContent" -Value 1 -Type DWord
            Write-Host "MS 365 Ads disabled"
            Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Windows Media Player"
            Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Remove Microsoft Print to PDF"
            Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Remove Microsoft XPS Document Writer"
            Remove-Printer -Name "Fax" -ErrorAction SilentlyContinue
            Write-Host "Remove Fax Printer"
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -ErrorAction SilentlyContinue
            Write-Host "Remove Developer Mode"
            Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Remove-WindowsCapability -Online | Out-Null
            Write-Host "Remove Math Recognizer"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableCocreator" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeFill" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableImageCreator" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeErase" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableRemoveBackground" -Value 1 -Type DWord
            Write-Host "Paint AI features disabled"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\WindowsNotepad" -Name "DisableAIFeatures" -Value 1 -Type DWord
            Write-Host "Notepad AI features disabled"
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenOverlayEnabled" -Value 0 -Type DWord
            Write-Host "Lock screen fun facts and tips disabled"
            Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableSpotlightCollectionOnDesktop" -Value 1 -Type DWord
            Write-Host "Spotlight collection on desktop disabled"
            Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -Value 1 -Type DWord
            Write-Host "AI Data Analysis disabled"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "AllowRecallEnablement" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "TurnOffSavingSnapshots" -Value 1 -Type DWord
            Write-Host "AI recall disabled and snapshot saving turned off"
            $regPaths = @(
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications",
                "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Suggested",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility"
            )
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_IrisRecommendations" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SoftLandingEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353694Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353696Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications" -Name "EnableAccountNotifications" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Suggested" -Name "Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility" -Name "OptedIn" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_AccountNotifications" -Value 0 -Type DWord
            Write-Host "Windows suggestions and notifications disabled"
    }
    else {
        Write-Host "Application Tweaks Skipped - no changes made"
}

Write-Host "Completed"
$result = [System.Windows.MessageBox]::Show("A restart is required. Do you want to restart the system?", "Restart Required", "YesNo", "Question")

if ($result -eq "Yes") {
    Write-Host "Riavvio del sistema in corso..."
    Restart-Computer -Force
}
else {
    Write-Host "Operazione completata senza riavvio."
}
    })
##########################################
##########################################
##########################################


##########################################
################# Winget #################
##########################################

    $WPFTab2P1.Add_Click({
        $latestWingetMsixBundleUri = $(Invoke-RestMethod https://api.github.com/repos/microsoft/winget-cli/releases/latest).assets.browser_download_url | Where-Object { $_.EndsWith('.msixbundle') }
        $latestWingetMsixBundle = $latestWingetMsixBundleUri.Split('/')[-1]
        Write-Progress -Activity 'Installing Winget CLI' -Status 'Downloading Step 1 of 2'
        Set-Variable ProgressPreference SilentlyContinue
        Invoke-WebRequest -Uri https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml -OutFile .\microsoft.ui.xaml.nupkg.zip
        Expand-Archive -Path .\microsoft.ui.xaml.nupkg.zip -Force
        $appxFile = Get-ChildItem -Path .\microsoft.ui.xaml.nupkg\tools\AppX\x64\Release -Filter "*.appx" | Select-Object -First 1
        Try { Add-AppxPackage -Path $appxFile.FullName -ErrorAction Stop } Catch {}
        Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile "./$latestWingetMsixBundle"
        Set-Variable ProgressPreference Continue
        Write-Progress -Activity 'Installing Winget CLI' -Status 'Downloading Step 2 of 2'
        Set-Variable ProgressPreference SilentlyContinue
        Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
        Try { Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx -ErrorAction Stop } Catch {}
        Try { Add-AppxPackage $latestWingetMsixBundle -ErrorAction Stop} Catch {}
        Write-Progress -Activity 'Installing Winget CLI' -Status 'Install Complete' -Completed
        Set-Variable ProgressPreference Continue
        Write-Host "`nCredit: GitHub project by Sp5rky - https://gist.github.com/Sp5rky" -ForegroundColor Cyan
    })

    $WPFTab2P2.Add_Click({
        try {
            Add-Type -AssemblyName PresentationFramework

            $installFolder = "$env:LOCALAPPDATA\Programs\UnigetUI"
            $exePath = $null

            Write-Progress -Activity "UnigetUI" -Status "Checking installation..." -PercentComplete 0

            if (-not (Test-Path "$installFolder\UnigetUI.exe")) {
                Write-Progress -Activity "UnigetUI" -Status "Installing via winget..." -PercentComplete 30

                # Installa UniGetUI via winget (accetta automaticamente accordi)
                winget install --exact --id MartiCliment.UniGetUI --source winget --accept-package-agreements --accept-source-agreements
            }

            # Verifica di nuovo se l'exe è presente
            if (Test-Path "$installFolder\UnigetUI.exe") {
                $exePath = "$installFolder\UnigetUI.exe"
            } else {
                # Cerca in userprofile escludendo la temp
                $exePath = Get-ChildItem -Path "$env:USERPROFILE" -Recurse -Filter "UnigetUI.exe" -ErrorAction SilentlyContinue -Force |
                    Where-Object { $_.FullName -notlike "*AppData\\Local\\Temp*" } |
                    Select-Object -First 1 |
                    Select-Object -ExpandProperty FullName
            }

            if ($exePath -and (Test-Path $exePath)) {
                Write-Progress -Activity "UnigetUI" -Status "Launching the app..." -PercentComplete 90

                # Avvia senza elevazione (se possibile)
                $shell = New-Object -ComObject Shell.Application
                $shell.ShellExecute($exePath, "", "", "open", 1)
            } else {
                [System.Windows.MessageBox]::Show("Error: UnigetUI executable not found.", "Error", "OK", "Error")
            }
            Write-Progress -Activity "UnigetUI" -Completed
        }
        catch {
            [System.Windows.MessageBox]::Show("Error: $($_.Exception.Message)", "Error", "OK", "Error")
        }
        Write-Host "`nCredit: GitHub project by marticliment - https://github.com/marticliment/UnigetUIr" -ForegroundColor Cyan
    })

    $WPFTab2P3.Add_Click({
        try {
            Add-Type -AssemblyName System.IO.Compression.FileSystem

            $apiUrl = "https://api.github.com/repos/Klocman/Bulk-Crap-Uninstaller/releases/latest"
            $headers = @{ "User-Agent" = "PowerShell" }

            $response = Invoke-RestMethod -Uri $apiUrl -Headers $headers
            $portableAsset = $response.assets | Where-Object { $_.name -like "*portable.zip" } | Select-Object -First 1

            if (-not $portableAsset) {
                [System.Windows.MessageBox]::Show("Couldn't find portable version in latest release.", "Error", "OK", "Error")
                return
            }

            $url = $portableAsset.browser_download_url
            $version = $response.tag_name
            $zipPath = "$env:TEMP\BCUninstaller_${version}_portable.zip"
            $extractPath = "$env:TEMP\BCUninstaller_$version"

            if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
            Start-BitsTransfer -Source $url -Destination $zipPath

            if (Test-Path $extractPath) { Remove-Item $extractPath -Recurse -Force }

            [System.IO.Compression.ZipFile]::ExtractToDirectory($zipPath, $extractPath)


            $exeFile = Get-ChildItem -Path $extractPath -Filter *.exe -Recurse |
                    Where-Object { $_.Name -like "BCUninstaller*.exe" } |
                    Select-Object -First 1

            if ($exeFile) {
                Start-Process -FilePath $exeFile.FullName -Verb RunAs
                Write-Host "BCUninstaller launched from $($exeFile.FullName)"
            } else {
                [System.Windows.MessageBox]::Show("Executable not found after extraction.", "Error", "OK", "Error")
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error during download or execution: $_", "Error", "OK", "Error")
        }
        Write-Host "`nCredit: GitHub project by Klocman - https://github.com/Klocman/Bulk-Crap-Uninstaller" -ForegroundColor Cyan
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
##########################################
##########################################

##########################################
############## Bloatware #################
##########################################

    $WPFTab3P1.Add_Click({
        $WPFbcalculator.IsChecked = $false
        $WPFbphotos.IsChecked = $true
        $WPFbcanonical.IsChecked = $true
        $WPFbbing.IsChecked = $true
        $WPFbxboxapp.IsChecked = $true
        $WPFboutlook.IsChecked = $true
        $WPFbassist.IsChecked = $true
        $WPFbstickynotes.IsChecked = $true
        $WPFbmspaint.IsChecked = $true
        $WPFbcamera.IsChecked = $true
        $WPFbcopilot.IsChecked = $true
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
        $WPFbclipchamp.IsChecked = $true
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
        $WPFbteams.IsChecked = $true
        $WPFbweather.IsChecked = $true
        $WPFbonedrive.IsChecked = $true
        $WPFbtodo.IsChecked = $true
        $WPFbpowerautomate.IsChecked = $true
    })

    $WPFTab3P2.Add_Click({
    Add-Type -AssemblyName PresentationFramework,PresentationCore,WindowsBase,System.Xaml

    function Get-DescriptionBasedOnName {
        param($name)
        switch -Wildcard ($name) {
            "*NVIDIA*"             { return "NVIDIA graphics driver" }
            "*Microsoft.Windows*"  { return "Microsoft system apps and services" }
            "*Adobe*"              { return "Adobe software, e.g. Reader or Creative Cloud" }
            "*Google*"             { return "Google components, browsers or services" }
            "*Intel*"              { return "Intel drivers and software" }
            "*Xbox*"               { return "Xbox apps and services" }
            "*Skype*"              { return "Skype communication app" }
            "*Spotify*"            { return "Spotify music app" }
            "*Teams*"              { return "Microsoft Teams video conferencing app" }
            "*Cortana*"            { return "Microsoft Cortana voice assistant" }
            "*OneDrive*"           { return "Microsoft OneDrive cloud service" }
            "*Netflix*"            { return "Netflix streaming app" }
            "*Twitter*"            { return "Twitter social media app" }
            "*Facebook*"           { return "Facebook social media app" }
            "*Amazon*"             { return "Amazon app or related services" }
            "*Dropbox*"            { return "Dropbox cloud storage service" }
            "*HP*"                 { return "HP software and drivers" }
            "*Lenovo*"             { return "Lenovo software and drivers" }
            "*Dell*"               { return "Dell software and drivers" }
            "*Zoom*"               { return "Zoom video conferencing app" }
            "*Slack*"              { return "Slack messaging app" }
            "*VLC*"                { return "VLC media player" }
            "*Chrome*"             { return "Google Chrome browser" }
            "*Edge*"               { return "Microsoft Edge browser" }
            "*Mail*"               { return "Windows Mail app" }
            "*Calendar*"           { return "Windows Calendar app" }
            "*Weather*"            { return "Windows Weather app" }
            "*Photos*"             { return "Windows Photos app" }
            "*Maps*"               { return "Windows Maps app" }
            "*People*"             { return "Windows Contacts app" }
            "*Groove*"             { return "Windows Groove Music app" }
            "*Camera*"             { return "Windows Camera app" }
            "*Paint3D*"            { return "Windows Paint 3D app" }
            "*MixedReality*"       { return "Windows Mixed Reality app" }
            "*XboxGamingOverlay*"  { return "Xbox Gaming Overlay on Windows" }
            "*FeedbackHub*"        { return "Windows Feedback Hub app" }
            "*Messaging*"          { return "Windows Messaging app" }
            "*3DBuilder*"          { return "Windows 3D Builder app" }
            "*StickyNotes*"        { return "Windows Sticky Notes app" }
            "*MicrosoftSolitaireCollection*" { return "Microsoft Solitaire Collection" }
            "*MicrosoftOfficeHub*" { return "Microsoft Office Hub" }
            "*Microsoft.MSPaint*"  { return "Classic Windows Paint app" }
            "*Microsoft.Photos*"   { return "Windows Photos app" }
            "*Microsoft.WindowsAlarms*" { return "Windows Alarms & Clock app" }
            "*Microsoft.WindowsSoundRecorder*" { return "Windows Sound Recorder" }
            "*Microsoft.WindowsStore*" { return "Microsoft Store" }
            "*Windows.SecurityApp*" { return "Windows Defender and Security" }
            "*Windows.CBSPreview*" { return "Windows preview components" }
            "*Windows.Cortana*"    { return "Cortana voice assistant" }
            "*Windows.MediaPlayer*" { return "Windows Media Player" }
            "*WindowsTerminal*"    { return "Windows Terminal" }
            "*WindowsFeedbackHub*" { return "Windows Feedback Hub" }
            "*WindowsMaps*"        { return "Windows Maps app" }
            "*WindowsCamera*"      { return "Windows Camera app" }
            "*WindowsPhotos*"      { return "Windows Photos app" }
            "*WindowsVoiceRecorder*" { return "Windows Voice Recorder" }
            "*WindowsCalculator*"  { return "Windows Calculator" }
            "*MicrosoftPeople*"    { return "Microsoft People (Contacts)" }
            "*MicrosoftStickyNotes*" { return "Sticky Notes app" }
            "*WindowsContactSupport*" { return "Windows Contact Support" }
            "*Microsoft.MicrosoftEdge*" { return "Microsoft Edge browser" }
            "*Microsoft.GetHelp*"  { return "Windows Get Help app" }
            "*Microsoft.Windows.Cortana*" { return "Cortana voice assistant" }
            "*Microsoft.Windows.Photos*" { return "Photos app" }
            "*Microsoft.Windows.ContentDeliveryManager*" { return "Windows Content Delivery Manager" }
            "*Microsoft.BingWeather*" { return "Bing Weather app" }
            "*Microsoft.BingNews*" { return "Bing News app" }
            "*Microsoft.BingSports*" { return "Bing Sports app" }
            "*Microsoft.BingFinance*" { return "Bing Finance app" }
            "*Microsoft.Getstarted*" { return "Windows Get Started app" }
            "*Microsoft.Microsoft3DViewer*" { return "3D Viewer app" }
            "*Microsoft.MSPaint*"  { return "Classic Paint app" }
            "*Microsoft.WindowsSoundRecorder*" { return "Sound Recorder" }
            "*Microsoft.Windows.Photos*" { return "Photos app" }
            "*Microsoft.WindowsAlarms*" { return "Alarms and Clock app" }
            default { return "System or application component" }
        }
    }

    function IsSafeToRemove {
        param($name)
        $unsafePatterns = @(
            "*Microsoft.Windows*",
            "*Windows.SecurityApp*",
            "*Windows.CBSPreview*",
            "*Windows.Cortana*",
            "*WindowsFeedbackHub*",
            "*Microsoft.Store*",
            "*Microsoft.MicrosoftEdge*",
            "*Microsoft.People*",
            "*Microsoft.GetHelp*",
            "*WindowsContactSupport*",
            "*WindowsTerminal*",
            "*WindowsCalculator*",
            "*Microsoft.Windows.Photos*",
            "*Microsoft.WindowsSoundRecorder*",
            "*Microsoft.WindowsAlarms*"
        )

        foreach ($pattern in $unsafePatterns) {
            if ($name -like $pattern) {
                return "No"
            }
        }
        return "Yes"
    }

    function Get-UWPApps {
        $pkgs = Get-AppxPackage
        $list = foreach ($pkg in $pkgs) {
            [PSCustomObject]@{
                Name = $pkg.Name
                PackageFullName = $pkg.PackageFullName
                Status = if ($pkg.IsFramework) { "Framework" } else { "Installed" }
                Description = Get-DescriptionBasedOnName $pkg.Name
                IsSelected = $false
                SafeToRemove = IsSafeToRemove $pkg.Name
            }
        }
        return $list
    }

    $xaml = @"
    <Window xmlns='http://schemas.microsoft.com/winfx/2006/xaml/presentation'
            xmlns:x='http://schemas.microsoft.com/winfx/2006/xaml'
            Title='Remove UWP Apps' 
            Height='600' Width='950' 
            ResizeMode='CanResize' 
            Background='#FF1A2733' 
            WindowStartupLocation='CenterScreen'
            FontFamily='Segoe UI' FontSize='15'>
        <Grid Margin='10'>
            <Grid.RowDefinitions>
                <RowDefinition Height='Auto'/>
                <RowDefinition Height='*'/>
                <RowDefinition Height='Auto'/>
            </Grid.RowDefinitions>

            <TextBlock Text='UWP Apps List' FontWeight='Bold' Foreground='#FFDDDDDD' Margin='5' Grid.Row='0' FontSize='20' />

            <DataGrid x:Name='AppsGrid' Grid.Row='1' AutoGenerateColumns='False' SelectionMode='Extended'
                    CanUserAddRows='False' HeadersVisibility='Column' Background='#FF1A2733' Foreground='#FFDDDDDD'
                    RowBackground='#FF252526' AlternatingRowBackground='#FF1E2A3B' GridLinesVisibility='None'
                    FontSize='15' Margin='0,5,0,5' >
                <DataGrid.Columns>
                    <DataGridCheckBoxColumn Header='Select' Binding='{Binding IsSelected}' Width='70' />
                    <DataGridTextColumn Header='App Name' Binding='{Binding Name}' Width='*' >
                        <DataGridTextColumn.ElementStyle>
                            <Style TargetType='TextBlock'>
                                <Setter Property='ToolTip' Value='{Binding Description}' />
                                <Setter Property='TextTrimming' Value='CharacterEllipsis' />
                            </Style>
                        </DataGridTextColumn.ElementStyle>
                    </DataGridTextColumn>
                    <DataGridTextColumn Header='PackageFullName' Binding='{Binding PackageFullName}' Width='2*' />
                    <DataGridTextColumn Header='Status' Binding='{Binding Status}' Width='100' />
                    <DataGridTextColumn Header='Safe to Remove' Binding='{Binding SafeToRemove}' Width='120' />
                </DataGrid.Columns>
            </DataGrid>

            <StackPanel Orientation='Horizontal' HorizontalAlignment='Right' Grid.Row='2' Margin='0,10,0,0' >
                <Button x:Name='BtnRefresh' Content='Refresh List' Width='130' Margin='0,0,10,0' Padding='5' FontWeight='Bold'/>
                <Button x:Name='BtnRemove' Content='Remove Selected' Width='170' Padding='5' Background='#D9534F'
                        Foreground='White' FontWeight='Bold'/>
            </StackPanel>
        </Grid>
    </Window>
"@

    [xml]$xml = $xaml
    $reader = (New-Object System.Xml.XmlNodeReader $xml)
    $Window = [Windows.Markup.XamlReader]::Load($reader)

    $AppsGrid = $Window.FindName("AppsGrid")
    $BtnRefresh = $Window.FindName("BtnRefresh")
    $BtnRemove = $Window.FindName("BtnRemove")

    function Update-AppList {
        $apps = Get-UWPApps
        $AppsGrid.ItemsSource = $apps
    }

    $BtnRemove.Add_Click({
        $selected = $AppsGrid.ItemsSource | Where-Object { $_.IsSelected }
        if (-not $selected) {
            [System.Windows.MessageBox]::Show("Select at least one app to remove.","Info",[System.Windows.MessageBoxButton]::OK,[System.Windows.MessageBoxImage]::Information)
            return
        }
        $unsafeSelected = $selected | Where-Object { $_.SafeToRemove -eq "No" }
        if ($unsafeSelected) {
            $msg = "Some selected apps are marked as unsafe to remove.`nAre you sure to proceed?"
            $res = [System.Windows.MessageBox]::Show($msg,"Warning",[System.Windows.MessageBoxButton]::YesNo,[System.Windows.MessageBoxImage]::Warning)
            if ($res -ne [System.Windows.MessageBoxResult]::Yes) { return }
        }
        foreach ($app in $selected) {
            try {
                Remove-AppxPackage -Package $app.PackageFullName -ErrorAction Stop
                Write-Host "Removed $($app.Name)"
            } catch {
                Write-Warning "Failed to remove $($app.Name): $_"
            }
        }
        Update-AppList
    })

    $BtnRefresh.Add_Click({
        Update-AppList
    })

    Update-AppList
    $Window.ShowDialog() | Out-Null
    })

    $WPFTab3P3.Add_Click({
        Add-Type -AssemblyName PresentationFramework
        $result = [System.Windows.MessageBox]::Show("Are you sure you want to reinstall all Bloatware?", "Confirmation", "YesNo", "Warning")
        if ($result -ne 'Yes') {
            return
        }
        Start-Process powershell.exe -Verb RunAs -ArgumentList @("-NoProfile", "-Command", 'Get-AppxPackage -AllUsers | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register """$($_.InstallLocation)\AppXManifest.xml""" }') -Wait -WindowStyle Maximized
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
        If ( $WPFboutlook.IsChecked -eq $true ) {
        Get-AppxPackage -allusers Microsoft.OutlookForWindows | Remove-AppxPackage
        $WPFboutlook.IsChecked = $false
        }        
        If ( $WPFbxboxapp.IsChecked -eq $true ) {
        Get-AppxPackage -allusers Microsoft.Xbox.TCUI | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxApp | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGameOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers Microsoft.XboxGamingOverlay | Remove-AppxPackage
        Get-AppxPackage -allusers *Microsoft.GamingApp* | Remove-AppxPackage
        $WPFbxboxapp.IsChecked = $false
        }
        If ( $WPFbbing.IsChecked -eq $true ) {
        Get-AppxPackage -allusers Microsoft.BingSearch | Remove-AppxPackage
        $WPFbbing.IsChecked = $false
        }
        If ( $WPFbassist.IsChecked -eq $true ) {
        Get-AppxPackage -allusers Microsoft.Edge.GameAssist | Remove-AppxPackage
        Get-AppxPackage -allusers MicrosoftCorporationII.QuickAssist | Remove-AppxPackage
        $WPFbassist.IsChecked = $false
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
        If ( $WPFbcopilot.IsChecked -eq $true ) {
        Get-AppxPackage -allusers Microsoft.Copilot | Remove-AppxPackage
        $WPFbcopilot.IsChecked = $false
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
        Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage
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
        If ( $WPFbclipchamp.IsChecked -eq $true ) {
        Get-AppxPackage -AllUsers *Clipchamp* | Remove-AppxPackage
        $WPFbclipchamp.IsChecked = $false
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
        Get-AppxPackage -allusers Microsoft.Edge | Remove-AppxPackage
        $WPFbedge.IsChecked = $false
        }
        If ( $WPFbteams.IsChecked -eq $true ) {
        Get-AppxPackage -AllUsers *MSTeams* | Remove-AppxPackage
        $WPFbteams.IsChecked = $false
        }
        If ( $WPFbweather.IsChecked -eq $true ) {
        Get-AppxPackage -AllUsers *BingWeather* | Remove-AppxPackage
        $WPFbweather.IsChecked = $false
        }
        If ( $WPFbonedrive.IsChecked -eq $true ) {
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
        $WPFbonedrive.IsChecked = $false
        }
        If ( $WPFbtodo.IsChecked -eq $true ) {
        Get-AppxPackage -AllUsers *Microsoft.Todos* | Remove-AppxPackage
        $WPFbtodo.IsChecked = $false
        }
        If ( $WPFbpowerautomate.IsChecked -eq $true ) {
        Get-AppxPackage -AllUsers *PowerAutomateDesktop* | Remove-AppxPackage
        $WPFbpowerautomate.IsChecked = $false
        }
        $ButtonType = [System.Windows.MessageBoxButton]::OK
        $MessageboxTitle = "Result"
        $Messageboxbody = "Completed"
        $MessageIcon = [System.Windows.MessageBoxImage]::Information
        [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
    })

##########################################
##########################################
##########################################

##########################################
################ Settings ################
##########################################

    $WPFTab4P1.Add_Click({
        $WPFs1.IsChecked = $false
        $WPFs2.IsChecked = $true
        $WPFs3.IsChecked = $false
        $WPFs4.IsChecked = $true
        $WPFs5.IsChecked = $false
        $WPFs6.IsChecked = $true
        $WPFs7.IsChecked = $true
        $WPFs8.IsChecked = $false
        $WPFs9.IsChecked = $true
        $WPFs10.IsChecked = $false
        $WPFs11.IsChecked = $true
        $WPFs12.IsChecked = $false
        $WPFs13.IsChecked = $true
        $WPFs14.IsChecked = $false
        $WPFs15.IsChecked = $true
        $WPFs16.IsChecked = $false
        $WPFs17.IsChecked = $false
        $WPFs18.IsChecked = $true
        $WPFs19.IsChecked = $false
        $WPFs20.IsChecked = $false
        $WPFs21.IsChecked = $false
        $WPFs22.IsChecked = $false
        $WPFs23.IsChecked = $true
        $WPFs24.IsChecked = $false
        $WPFs25.IsChecked = $false
        $WPFs26.IsChecked = $true
        $WPFs27.IsChecked = $true
        $WPFs28.IsChecked = $false
        $WPFs29.IsChecked = $false
        $WPFs30.IsChecked = $true
        $WPFs31.IsChecked = $false
        $WPFs32.IsChecked = $true
        $WPFs33.IsChecked = $false
        $WPFs34.IsChecked = $true
        $WPFs35.IsChecked = $false
        $WPFs36.IsChecked = $true
        $WPFs37.IsChecked = $false
        $WPFs38.IsChecked = $true
        $WPFs39.IsChecked = $false
        $WPFs40.IsChecked = $true
        $WPFs41.IsChecked = $false
        $WPFs42.IsChecked = $true
        $WPFs43.IsChecked = $false
        $WPFs44.IsChecked = $true
        $WPFs45.IsChecked = $false
        $WPFs46.IsChecked = $true
        $WPFs47.IsChecked = $true
        $WPFs48.IsChecked = $false
        $WPFs49.IsChecked = $false
        $WPFs50.IsChecked = $true
        $WPFs51.IsChecked = $false
        $WPFs52.IsChecked = $true
        $WPFs53.IsChecked = $true
        $WPFs54.IsChecked = $false
        $WPFs55.IsChecked = $false
        $WPFs56.IsChecked = $true
        $WPFs57.IsChecked = $false
        $WPFs58.IsChecked = $true
        $WPFs59.IsChecked = $true
        $WPFs60.IsChecked = $false
        $WPFs61.IsChecked = $false
        $WPFs62.IsChecked = $true
        $WPFs63.IsChecked = $true
        $WPFs64.IsChecked = $false
        $WPFs65.IsChecked = $false
        $WPFs66.IsChecked = $true
        $WPFs67.IsChecked = $false
        $WPFs68.IsChecked = $true
    })

    $WPFTab4P2.Add_Click({
        $WPFs1.IsChecked = $true
        $WPFs2.IsChecked = $false
        $WPFs3.IsChecked = $false
        $WPFs4.IsChecked = $true
        $WPFs5.IsChecked = $false
        $WPFs6.IsChecked = $false
        $WPFs7.IsChecked = $false
        $WPFs8.IsChecked = $true
        $WPFs9.IsChecked = $false
        $WPFs10.IsChecked = $true
        $WPFs11.IsChecked = $false
        $WPFs12.IsChecked = $true
        $WPFs13.IsChecked = $false
        $WPFs14.IsChecked = $true
        $WPFs15.IsChecked = $false
        $WPFs16.IsChecked = $true
        $WPFs17.IsChecked = $false
        $WPFs18.IsChecked = $false
        $WPFs19.IsChecked = $false
        $WPFs20.IsChecked = $false
        $WPFs21.IsChecked = $false
        $WPFs22.IsChecked = $false
        $WPFs23.IsChecked = $false
        $WPFs24.IsChecked = $true
        $WPFs25.IsChecked = $false
        $WPFs26.IsChecked = $false
        $WPFs27.IsChecked = $false
        $WPFs28.IsChecked = $true
        $WPFs29.IsChecked = $true
        $WPFs30.IsChecked = $false
        $WPFs31.IsChecked = $true
        $WPFs32.IsChecked = $false
        $WPFs33.IsChecked = $true
        $WPFs34.IsChecked = $false
        $WPFs35.IsChecked = $true
        $WPFs36.IsChecked = $false
        $WPFs37.IsChecked = $true
        $WPFs38.IsChecked = $false
        $WPFs39.IsChecked = $true
        $WPFs40.IsChecked = $false
        $WPFs41.IsChecked = $true
        $WPFs42.IsChecked = $false
        $WPFs43.IsChecked = $true
        $WPFs44.IsChecked = $false
        $WPFs45.IsChecked = $true
        $WPFs46.IsChecked = $false
        $WPFs47.IsChecked = $false
        $WPFs48.IsChecked = $true
        $WPFs49.IsChecked = $true
        $WPFs50.IsChecked = $false
        $WPFs51.IsChecked = $true
        $WPFs52.IsChecked = $false
        $WPFs53.IsChecked = $false
        $WPFs54.IsChecked = $true
        $WPFs55.IsChecked = $true
        $WPFs56.IsChecked = $false
        $WPFs57.IsChecked = $true
        $WPFs58.IsChecked = $false
        $WPFs59.IsChecked = $false
        $WPFs60.IsChecked = $false
        $WPFs61.IsChecked = $true
        $WPFs62.IsChecked = $false
        $WPFs63.IsChecked = $false
        $WPFs64.IsChecked = $true
        $WPFs65.IsChecked = $true
        $WPFs66.IsChecked = $false
        $WPFs67.IsChecked = $true
        $WPFs68.IsChecked = $false
    })

    $WPFTab4P3.Add_Click({
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
            ./OOSU10.exe
            Write-Host "Executed O&O Shutup"
    })

    $WPFTab4P4.Add_Click({
                If ( $WPFs1.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Type dword -Value 1
            Write-Host "Disabled AeroShake"
            $WPFs1.IsChecked = $false
            }
                If ( $WPFs2.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -ErrorAction SilentlyContinue
            Write-Host "Enabled AeroShake"
            $WPFs2.IsChecked = $false
            }
                If ( $WPFs3.IsChecked -eq $true ) {
            $ErrorActionPreference = 'SilentlyContinue'
            $Bandwidth = "HKLM:\SOFTWARE\Policies\Microsoft\Psched"
            Remove-ItemProperty -Path $Bandwidth -Name "NonBestEffortLimit"
            Write-host "Normal Bandwidth" 
            $WPFs3.IsChecked = $false
            }
                If ( $WPFs4.IsChecked -eq $true ) {
            $ErrorActionPreference = 'SilentlyContinue'
            $Bandwidth = "HKLM:\SOFTWARE\Policies\Microsoft\Psched"
            New-Item -Path $Bandwidth -ItemType Directory -Force
            Set-ItemProperty -Path $Bandwidth -Name "NonBestEffortLimit" -Type DWord -Value 0
            Write-host "Enabled All Bandwidth" 
            $WPFs4.IsChecked = $false
            }
                If ( $WPFs5.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Name "GlobalUserDisabled" -Value 1 -Type DWord
            Write-Host "Disabled Background Apps"
            $WPFs5.IsChecked = $false
            }
                If ( $WPFs6.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Name "GlobalUserDisabled" -ErrorAction SilentlyContinue
            Write-Host "Enabled Background Apps"
            $WPFs6.IsChecked = $false
            }
                If ( $WPFs7.IsChecked -eq $true ) {
            fsutil behavior set DisableLastAccess 0
            fsutil behavior set EncryptPagingFile 1
            Write-Host "Restored default HDD settings"
            $WPFs7.IsChecked = $false
            }
                If ( $WPFs8.IsChecked -eq $true ) {
            fsutil behavior set DisableLastAccess 1
            fsutil behavior set EncryptPagingFile 0
            Write-host "Set Better SSD Use" 
            $WPFs8.IsChecked = $false
            }
                If ( $WPFs9.IsChecked -eq $true ) {
            powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
            powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
            powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
            powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61
            Write-Host "Custom Powerplans Removed"
            $WPFs9.IsChecked = $false
            }
                If ( $WPFs10.IsChecked -eq $true ) {
            powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
            powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
            powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
            powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
            Write-host "Custom Powerplan Installed" 
            $WPFs10.IsChecked = $false
            }
                If ( $WPFs11.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 1
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 1
            Write-Host "Set Light Theme"
            Stop-Process -Name explorer -Force
            Start-Process explorer.exe
            $WPFs11.IsChecked = $false
            }
                If ( $WPFs12.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0
            Write-Host "Set Dark Theme"
            Stop-Process -Name explorer -Force
            Start-Process explorer.exe
            $WPFs12.IsChecked = $false
            }
                If ( $WPFs13.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -ErrorAction SilentlyContinue
            Write-Host "Hided Details Operation Files"
            $WPFs13.IsChecked = $false
            }
                If ( $WPFs14.IsChecked -eq $true ) {
            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
            New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
            }
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
            Write-Host "Set Show Details Operation Files"
            $WPFs14.IsChecked = $false
            }
                If ( $WPFs15.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 1
            Write-Host "Hided known File Extensions"
            $WPFs15.IsChecked = $false
            }
                If ( $WPFs16.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0       
            Write-Host "Showed known File Extensions"
            $WPFs16.IsChecked = $false
            }
                If ( $WPFs17.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0
            Write-host "Disabled Fast Startup" 
            $WPFs17.IsChecked = $false
            }
                If ( $WPFs18.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 1
            Write-host "Enabled Fast Startup" 
            $WPFs18.IsChecked = $false
            }
                If ( $WPFs19.IsChecked -eq $true ) {
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
            $WPFs19.IsChecked = $false
            }
                If ( $WPFs20.IsChecked -eq $true ) {
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
            $WPFs20.IsChecked = $false
            }
                If ( $WPFs21.IsChecked -eq $true ) {
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://github.com/Iblis94/debloat3.0/raw/main/resources/remove_gpedit.bat" -Destination remove_gpedit.bat
            Start-Process remove_gpedit.bat
            Write-Host "Removed Gpedit on Home Version"
            $WPFs21.IsChecked = $false
            }
                If ( $WPFs22.IsChecked -eq $true ) {
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://github.com/Iblis94/debloat3.0/raw/main/resources/gpedit.bat" -Destination gpedit.bat
            Start-Process gpedit.bat
            Write-Host "Installed Gpedit on Home Version"
            $WPFs22.IsChecked = $false
            }
                If ( $WPFs23.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 2
            Write-Host "Hided Hidden Files"
            $WPFs23.IsChecked = $false
            }
                If ( $WPFs24.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
            Write-Host "Showed Hidden Files"
            $WPFs24.IsChecked = $false
            }
                If ( $WPFs25.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type DWord -Value 0
            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type DWord -Value 0
            powercfg /HIBERNATE OFF 2>&1 | Out-Null
            Write-host "Disabled Hibernation" 
            $WPFs25.IsChecked = $false
            }
                If ( $WPFs26.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 1
            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
            Write-host "Enabled Hibernation" 
            $WPFs26.IsChecked = $false
            }
                If ( $WPFs27.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -ErrorAction SilentlyContinue
            Write-Host "Removed IRP Stack Size setting (restored default)"
            $WPFs27.IsChecked = $false
            }
                If ( $WPFs28.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
            Write-host "Set IRP Stack Size to 20" 
            $WPFs28.IsChecked = $false
            }
                If ( $WPFs29.IsChecked -eq $true ) {
            Set-WindowsReservedStorageState -State Disabled
            Write-host "Disabled Reserved Storage" 
            $WPFs29.IsChecked = $false
            }
                If ( $WPFs30.IsChecked -eq $true ) {
            Set-WindowsReservedStorageState -State Enabled
            Write-host "Enabled Reserved Storage" 
            $WPFs30.IsChecked = $false
            }
                If ( $WPFs31.IsChecked -eq $true ) {
            Stop-Service "SysMain" -WarningAction SilentlyContinue
            Set-Service "SysMain" -StartupType Disabled
            Write-host "Disabled Superfetch" 
            $WPFs31.IsChecked = $false
            }
                If ( $WPFs32.IsChecked -eq $true ) {
            Set-Service "SysMain" -StartupType Automatic
            Start-Service "SysMain" -WarningAction SilentlyContinue
            Write-host "Enabled Superfetch" 
            $WPFs32.IsChecked = $false
            }
                If ( $WPFs33.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableThirdPartySuggestions" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
            if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT")) {
                New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Force | Out-Null
            }
            New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -PropertyType DWord -Value 1 -Force | Out-Null
            if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows")) {
                New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Force | Out-Null
            }
            New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Name "CEIPEnable" -PropertyType DWord -Value 0 -Force | Out-Null
            if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat")) {
                New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Force | Out-Null
            }
            New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "AITEnable" -PropertyType DWord -Value 0 -Force | Out-Null
            New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "DisableUAR" -PropertyType DWord -Value 1 -Force | Out-Null
            if (-not (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener")) {
                New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" -Force | Out-Null
            }
            New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" -Name "Start" -PropertyType DWord -Value 0 -Force | Out-Null
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
            $WPFs33.IsChecked = $false
            }
                If ( $WPFs34.IsChecked -eq $true ) {
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
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
            Start-Service DiagTrack | Set-Service -StartupType Automatic
            Start-Service dmwappushservice | Set-Service -StartupType Automatic
            Write-host "Enabled Telemetry" 
            $WPFs34.IsChecked = $false
            }
                If ( $WPFs35.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
            Write-host "Disabled Activity History"
            $WPFs35.IsChecked = $false
            }
                If ( $WPFs36.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -ErrorAction SilentlyContinue
            Write-host "Enabled Activity History" 
            $WPFs36.IsChecked = $false
            }
                If ( $WPFs37.IsChecked -eq $true ) {
            If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
                New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
            Write-host "Disabled Advertising ID" 
            $WPFs37.IsChecked = $false
            }
                If ( $WPFs38.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -ErrorAction SilentlyContinue
            Write-host "Enabled Advertising ID" 
            $WPFs38.IsChecked = $false
            }
                If ( $WPFs39.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "MaintenanceDisabled" -Type dword -Value 1
            Write-host "Disabled Auto Manteinance" 
            $WPFs39.IsChecked = $false
            }
                If ( $WPFs40.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" -Name "MaintenanceDisabled" -Type dword -Value 0
            Write-host "Enabled Auto Manteinance" 
            $WPFs40.IsChecked = $false
            }
                If ( $WPFs41.IsChecked -eq $true ) {
            Stop-Service "DiagTrack" -WarningAction SilentlyContinue
            Set-Service "DiagTrack" -StartupType Disabled
            Write-host "Disabled Diagnostic Tracking"
            $WPFs41.IsChecked = $false
            }
                If ( $WPFs42.IsChecked -eq $true ) {
            Set-Service "DiagTrack" -StartupType Automatic
            Start-Service "DiagTrack" -WarningAction SilentlyContinue
            Write-host "Enabled Diagnostic Tracking" 
            $WPFs42.IsChecked = $false
            }
                If ( $WPFs43.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
            Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
            Write-host "Disabled Error Reporting"
            $WPFs43.IsChecked = $false
            }
                If ( $WPFs44.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -ErrorAction SilentlyContinue
            Enable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
            Write-host "Enabled Error Reporting" 
            $WPFs44.IsChecked = $false
            }
                If ( $WPFs45.IsChecked -eq $true ) {
            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
                New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
            Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
            Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
            Write-host "Disabled Feedback" 
            $WPFs45.IsChecked = $false
            }
                If ( $WPFs46.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -ErrorAction SilentlyContinue
            Enable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
            Enable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
            Write-host "Enabled Feedback" 
            $WPFs46.IsChecked = $false
            }
                If ( $WPFs47.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 1
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -Type DWord -Value 2
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Type DWord -Value 2
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 1
            Write-host "Disabled Fullscreen Optimization" 
            $WPFs47.IsChecked = $false
            }
                If ( $WPFs48.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 0
            Remove-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -ErrorAction SilentlyContinue
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Type DWord -Value 0
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 0
            Write-host "Enabled Optimization Fullscreen" 
            $WPFs48.IsChecked = $false
            }
                If ( $WPFs49.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -Type DWord -Value 1 
            Write-Host "Disabled Language Options"
            $WPFs49.IsChecked = $false
            }
                If ( $WPFs50.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut"
            New-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -Type DWord -Value 0
            Write-host "Enabled Languages Options" 
            $WPFs50.IsChecked = $false
            }
                If ( $WPFs51.IsChecked -eq $true ) {
            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
            Write-host "Disabled Location Tracking"
            $WPFs51.IsChecked = $false
            }
                If ( $WPFs52.IsChecked -eq $true ) {
            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow"
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1
            Write-host "Enabled Location Tracking" 
            $WPFs52.IsChecked = $false
            }
                If ( $WPFs53.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -ErrorAction SilentlyContinue
            Write-Host "Disabled Restoring Previous Folder at Logon"
            $WPFs53.IsChecked = $false
            }
                If ( $WPFs54.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "PersistBrowsers" -Type DWord -Value 1
            Write-Host "Enabled Restoring Previous Folder at Logon"
            $WPFs54.IsChecked = $false
            }
                If ( $WPFs55.IsChecked -eq $true ) {
            Disable-ScheduledTask -TaskName "Microsoft\Windows\Defrag\ScheduledDefrag" | Out-Null
            Write-host "Disabled Scheduled Defrag" 
            $WPFs55.IsChecked = $false
            }
                If ( $WPFs56.IsChecked -eq $true ) {
            Enable-ScheduledTask -TaskName "Microsoft\Windows\Defrag\ScheduledDefrag" | Out-Null
            Write-host "Enabled Scheduled Defrag" 
            $WPFs56.IsChecked = $false
            }
                If ( $WPFs57.IsChecked -eq $true ) {
            Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
            Write-host "Disabled Storage Check" 
            $WPFs57.IsChecked = $false
            }
                If ( $WPFs58.IsChecked -eq $true ) {
            If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy")) {
                New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "01" -Type DWord -Value 1
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "04" -Type DWord -Value 1
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "08" -Type DWord -Value 1
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "32" -Type DWord -Value 0
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Name "StoragePoliciesNotified" -Type DWord -Value 1
            Write-host "Enabled Storage Check" 
            $WPFs58.IsChecked = $false
            }
                If ( $WPFs59.IsChecked -eq $true ) {
            $preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
            If ($preferences) {
            $preferences.Preferences[28] = 1
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
            }
            Write-Host "Set Task Manager, Hide Details"
            $WPFs59.IsChecked = $false
            }
                If ( $WPFs60.IsChecked -eq $true ) {
            $taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
            Do {
            Start-Sleep -Milliseconds 100
            $preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
            } Until ($preferences)
            Stop-Process $taskmgr
            $preferences.Preferences[28] = 0
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
            Write-Host "Set Task Manager, Show Details"
            $WPFs60.IsChecked = $false
            }
                If ( $WPFs61.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableCdp" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableMmx" -Type DWord -Value 0
            If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
                New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
            Write-host "Disabled Tailored Experiences" 
            $WPFs61.IsChecked = $false
            }
                If ( $WPFs62.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -ErrorAction SilentlyContinue
            Write-host "Enabled Tailored Experiences" 
            $WPFs62.IsChecked = $false
            }
                If ( $WPFs63.IsChecked -eq $true ) {
            if (-not (Test-Path "HKLM:\System\GameConfigStore")) {
                New-Item -Path "HKLM:\System\GameConfigStore" -Force | Out-Null
            }
            New-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -PropertyType DWord -Value 0 -Force | Out-Null
            New-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -PropertyType DWord -Value 0 -Force | Out-Null
            New-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -PropertyType DWord -Value 0 -Force | Out-Null
            New-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -PropertyType DWord -Value 0 -Force | Out-Null
            Write-host "Disabled Tweaks GameDVR" 
            $WPFs63.IsChecked = $false
            }
                If ( $WPFs64.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -ErrorAction SilentlyContinue
            Write-host "Enabled Tweaks GameDVR" 
            $WPFs64.IsChecked = $false
            }
                If ( $WPFs65.IsChecked -eq $true ) {
            Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
            Set-Service "dmwappushservice" -StartupType Disabled
            Write-host "Disabled WAP Push Service"
            $WPFs65.IsChecked = $false
            }
                If ( $WPFs66.IsChecked -eq $true ) {
            Set-Service "dmwappushservice" -StartupType Automatic
            Start-Service "dmwappushservice" -WarningAction SilentlyContinue
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\dmwappushservice" -Name "DelayedAutoStart" -Type DWord -Value 1
            Write-host "Enabled WAP Push Service" 
            $WPFs66.IsChecked = $false
            }
                If ( $WPFs67.IsChecked -eq $true ) {
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
            $WPFs67.IsChecked = $false
            }
                If ( $WPFs68.IsChecked -eq $true ) {
            If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
                New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 1
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "AutoConnectAllowedOEM" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" -Name "WiFISenseAllowed" -ErrorAction SilentlyContinue
            Write-host "Enabled WiFi-Sense" 
            $WPFs68.IsChecked = $false
            }

        [System.Windows.MessageBox]::Show("All Done", "Settings Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)            
    })

    $WPFTab4P5.Add_Click({
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/OO.cfg" -Destination ooshutup10.cfg
            Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
            ./OOSU10.exe ooshutup10.cfg /quiet
            Write-Host "Executed O&O Shutup with Recommended Settings"
    })

##########################################
##########################################
##########################################

##########################################
################ Defender ################
##########################################

    $WPFTab5P1.Add_Click({
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
        $WPFd49.IsChecked = $false
        $WPFd50.IsChecked = $true
        $WPFd51.IsChecked = $false
        $WPFd52.IsChecked = $true
    })

    $WPFTab5P2.Add_Click({
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
        $WPFd23.IsChecked = $true
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
        $WPFd49.IsChecked = $true
        $WPFd50.IsChecked = $false
        $WPFd51.IsChecked = $true
        $WPFd52.IsChecked = $false
    })

    $WPFTab5P3.Add_Click({

        Add-Type -AssemblyName PresentationFramework
        $result = [System.Windows.MessageBox]::Show("Are you sure you want to disable Windows Defender?", "Confirmation", "YesNo", "Warning")
        if ($result -ne 'Yes') {
            return
        }

        if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
            Start-Process powershell "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
            exit
        }

        $ProgressPreference = 'SilentlyContinue'

        $PowerRunPath = Join-Path -Path $PSScriptRoot -ChildPath "PowerRun.exe"
        $PowerRunURL  = "https://github.com/Iblis94/debloat3.0/raw/main/resources/PowerRun.exe"

        if (-not (Test-Path $PowerRunPath)) {
            try {
                Invoke-WebRequest -Uri $PowerRunURL -OutFile $PowerRunPath -UseBasicParsing
            } catch {
                exit 1
            }
        }
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d 1 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d 1 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d 1 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d 4 /f'
        & $PowerRunPath cmd.exe /c 'reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d 4 /f'

        Write-Host "Windows Defender Removed"

        Start-Sleep -Seconds 5

        Add-Type -AssemblyName PresentationFramework
        $result = [System.Windows.MessageBox]::Show("Windows Defender has been disabled.`nRestart now?", "Restart Required", "YesNo", "Question")

        if ($result -eq "Yes") {
            Restart-Computer -Force
        }

    })

    $WPFTab5P4.Add_Click({
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

            If ($WPFd24.IsChecked -eq $true) {
        function Take-RegistryOwnership($keyPath) {
            Start-Process reg.exe -ArgumentList "takeown /f `"$keyPath`" /a /r /d y" -Verb runAs -Wait
            Start-Process reg.exe -ArgumentList "regini `"$keyPath`"" -Verb runAs -Wait
        }
        $keys = @(
            "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend",
            "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc",
            "HKLM\SYSTEM\CurrentControlSet\Services\Sense"
        )
        foreach ($key in $keys) {
            Take-RegistryOwnership $key
        }
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name "Start" -Value 4 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name "AutorunsDisabled" -Value 3 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name "Start" -Value 4 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name "AutorunsDisabled" -Value 3 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name "Start" -Value 4 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name "AutorunsDisabled" -Value 3 -Type DWord
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
        $WPFd43.IsChecked = $false
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
        $WPFd47.IsChecked = $false
        }

            If ($WPFd48.IsChecked -eq $true) {
        function Take-RegistryOwnership($keyPath) {
            Start-Process reg.exe -ArgumentList "takeown /f `"$keyPath`" /a /r /d y" -Verb runAs -Wait
            Start-Process reg.exe -ArgumentList "regini `"$keyPath`"" -Verb runAs -Wait
        }
        $keys = @(
            "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend",
            "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc",
            "HKLM\SYSTEM\CurrentControlSet\Services\Sense"
        )
        foreach ($key in $keys) {
            Take-RegistryOwnership $key
        }
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name "Start" -Value 3 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name "AutorunsDisabled" -Value 4 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name "Start" -Value 3 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name "AutorunsDisabled" -Value 4 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name "Start" -Value 3 -Type DWord
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name "AutorunsDisabled" -Value 4 -Type DWord
        Write-Host "Enabled Windows Defender Services"
        $WPFd48.IsChecked = $false
        }

            If ( $WPFd49.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Type DWord -Value 0
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Name "EnabledV9" -Type DWord -Value 0
        Write-host "Disabled Smartscreen Filter" 
        $WPFd49.IsChecked = $false
        }

            If ( $WPFd50.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" -Name "EnabledV9" -ErrorAction SilentlyContinue
        Write-host "Enabled Smartscreen Filter" 
        $WPFd50.IsChecked = $false
        }

            If ( $WPFd51.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 0
        Write-Host "Hided Protected Operating System Files"
        $WPFd51.IsChecked = $false
        }


            If ( $WPFd52.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 1
        Write-Host "Showed Protected Operating System Files"
        $WPFd52.IsChecked = $false
        }

        [System.Windows.MessageBox]::Show("All Done", "Defender Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
    })

##########################################
##########################################
##########################################

##########################################
################# Update #################
##########################################

    $WPFTab6P1.Add_Click({
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

    })

    $WPFTab6P2.Add_Click({
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

    })

    $WPFTab6P3.Add_Click({
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
        if (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 3
        if (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
        $services = @("wuauserv", "cryptSvc", "bits", "msiserver")
        foreach ($service in $services) {
            Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
        }
        Remove-Item -Path "$env:windir\SoftwareDistribution" -Recurse -Force -ErrorAction SilentlyContinue
        foreach ($service in $services) {
            Start-Service -Name $service -ErrorAction SilentlyContinue
        }
        Write-Host "Windows Update Settings Reset to Default"
    })

    $WPFTab6P4.Add_Click({
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

        [System.Windows.MessageBox]::Show("All Done", "Update Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)
    })

    $WPFTab6P5.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/HideUpdate.diagcab" -Destination HideUpdate.diagcab
        Start-Process HideUpdate.diagcab
        Write-Host "Hide Update Downloaded Correctly"
    })
    
    $WPFTab6P6.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/refs/heads/main/resources/Wipe%20Cache%20Windows%20Update.bat" -Destination Wipe%20Cache%20Windows%20Update.bat
        Start-Process Wipe%20Cache%20Windows%20Update.bat
        Write-Host "Windows Update Cache Cleaned"
    })

    $WPFTab6P7.Add_Click({
            Add-Type -AssemblyName PresentationFramework
            $result = [System.Windows.MessageBox]::Show("Are you sure you want to disable Windows Update?", "Confirmation", "YesNo", "Warning")
            if ($result -ne 'Yes') {
                return
            }
            if (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type DWord -Value 1
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -ErrorAction SilentlyContinue
        if (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 0

        $services = @("wuauserv", "cryptSvc", "bits", "dosvc", "UsoSvc", "WaaSMedicSvc")

        foreach ($service in $services) {
            Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
            Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
        }
            Write-Host "Disabled Windows Update"
    })

    $WPFTab6P8.Add_Click({
    Start-Process "https://telegra.ph/Procedura-per-risolvere-il-problema-degli-aggiornamenti-di-Windows-Credit-to-IvanG1976-httpsgithubcomWinSSitaly-04-11"
    Write-Host "Follow the Tutorial for Fix Windows Update"
    })

##########################################
##########################################
##########################################

##########################################
################ Explorer ################
##########################################

    $WPFTab7P1.Add_Click({
        $WPFex1.IsChecked = $false
        $WPFex2.IsChecked = $true
        $WPFex3.IsChecked = $false
        $WPFex4.IsChecked = $true
        $WPFex5.IsChecked = $false
        $WPFex6.IsChecked = $true
        $WPFex7.IsChecked = $false
        $WPFex8.IsChecked = $true
        $WPFex9.IsChecked = $false
        $WPFex10.IsChecked = $true
        $WPFex11.IsChecked = $false
        $WPFex12.IsChecked = $true
        $WPFex13.IsChecked = $false
        $WPFex14.IsChecked = $true
        $WPFex15.IsChecked = $false
        $WPFex16.IsChecked = $true
        $WPFex17.IsChecked = $false
        $WPFex18.IsChecked = $true
        $WPFex19.IsChecked = $false
        $WPFex20.IsChecked = $false
        $WPFex21.IsChecked = $false
        $WPFex22.IsChecked = $false
        $WPFex23.IsChecked = $false
        $WPFex24.IsChecked = $false
        $WPFex25.IsChecked = $false
        $WPFex26.IsChecked = $false
        $WPFex27.IsChecked = $false
        $WPFex28.IsChecked = $false
        $WPFex29.IsChecked = $false
        $WPFex30.IsChecked = $false
        $WPFex31.IsChecked = $false
        $WPFex32.IsChecked = $true
        $WPFex33.IsChecked = $false
        $WPFex34.IsChecked = $true
        $WPFex35.IsChecked = $false
        $WPFex36.IsChecked = $true
        $WPFex37.IsChecked = $false
        $WPFex38.IsChecked = $false
        $WPFex39.IsChecked = $false
        $WPFex40.IsChecked = $true
        $WPFex41.IsChecked = $false
        $WPFex42.IsChecked = $true
        $WPFex43.IsChecked = $false
        $WPFex44.IsChecked = $false
        $WPFex45.IsChecked = $false
        $WPFex46.IsChecked = $true
        $WPFex47.IsChecked = $false
        $WPFex48.IsChecked = $true
        $WPFex49.IsChecked = $false
        $WPFex50.IsChecked = $true
        $WPFex51.IsChecked = $false
        $WPFex52.IsChecked = $true
        $WPFex53.IsChecked = $false
        $WPFex54.IsChecked = $false
        $WPFex55.IsChecked = $false
        $WPFex56.IsChecked = $true
        $WPFex57.IsChecked = $false
        $WPFex58.IsChecked = $true
        $WPFex59.IsChecked = $false
        $WPFex60.IsChecked = $true
        $WPFex61.IsChecked = $false
        $WPFex62.IsChecked = $true
        $WPFex63.IsChecked = $false
        $WPFex64.IsChecked = $true
        $WPFex65.IsChecked = $false
        $WPFex66.IsChecked = $true
        $WPFex67.IsChecked = $false
        $WPFex68.IsChecked = $true
        $WPFex69.IsChecked = $false
        $WPFex70.IsChecked = $true
        $WPFex71.IsChecked = $false
        $WPFex72.IsChecked = $true
        $WPFex73.IsChecked = $false
        $WPFex74.IsChecked = $true
        $WPFex75.IsChecked = $false
        $WPFex76.IsChecked = $true
        $WPFex77.IsChecked = $false
        $WPFex78.IsChecked = $true
        $WPFex79.IsChecked = $false
        $WPFex80.IsChecked = $true
        $WPFex81.IsChecked = $false
        $WPFex82.IsChecked = $true
        $WPFex83.IsChecked = $false
        $WPFex84.IsChecked = $true
        $WPFex85.IsChecked = $false
        $WPFex86.IsChecked = $false
        $WPFex87.IsChecked = $false
        $WPFex88.IsChecked = $false
        $WPFex89.IsChecked = $false
        $WPFex90.IsChecked = $false
        $WPFex91.IsChecked = $false
        $WPFex92.IsChecked = $true
    })

    $WPFTab7P2.Add_Click({
        $WPFex1.IsChecked = $false
        $WPFex2.IsChecked = $false
        $WPFex3.IsChecked = $false
        $WPFex4.IsChecked = $false
        $WPFex5.IsChecked = $false
        $WPFex6.IsChecked = $false
        $WPFex7.IsChecked = $false
        $WPFex8.IsChecked = $false
        $WPFex9.IsChecked = $false
        $WPFex10.IsChecked = $false
        $WPFex11.IsChecked = $false
        $WPFex12.IsChecked = $false
        $WPFex13.IsChecked = $false
        $WPFex14.IsChecked = $false
        $WPFex15.IsChecked = $true
        $WPFex16.IsChecked = $false
        $WPFex17.IsChecked = $false
        $WPFex18.IsChecked = $false
        $WPFex19.IsChecked = $false
        $WPFex20.IsChecked = $true
        $WPFex21.IsChecked = $false
        $WPFex22.IsChecked = $true
        $WPFex23.IsChecked = $false
        $WPFex24.IsChecked = $false
        $WPFex25.IsChecked = $false
        $WPFex26.IsChecked = $false
        $WPFex27.IsChecked = $false
        $WPFex28.IsChecked = $false
        $WPFex29.IsChecked = $false
        $WPFex30.IsChecked = $false
        $WPFex31.IsChecked = $true
        $WPFex32.IsChecked = $false
        $WPFex33.IsChecked = $true
        $WPFex34.IsChecked = $false
        $WPFex35.IsChecked = $true
        $WPFex36.IsChecked = $false
        $WPFex37.IsChecked = $false
        $WPFex38.IsChecked = $true
        $WPFex39.IsChecked = $true
        $WPFex40.IsChecked = $false
        $WPFex41.IsChecked = $true
        $WPFex42.IsChecked = $false
        $WPFex43.IsChecked = $false
        $WPFex44.IsChecked = $true
        $WPFex45.IsChecked = $false
        $WPFex46.IsChecked = $false
        $WPFex47.IsChecked = $true
        $WPFex48.IsChecked = $false
        $WPFex49.IsChecked = $true
        $WPFex50.IsChecked = $false
        $WPFex51.IsChecked = $true
        $WPFex52.IsChecked = $false
        $WPFex53.IsChecked = $false
        $WPFex54.IsChecked = $false
        $WPFex55.IsChecked = $true
        $WPFex56.IsChecked = $false
        $WPFex57.IsChecked = $true
        $WPFex58.IsChecked = $false
        $WPFex59.IsChecked = $false
        $WPFex60.IsChecked = $true
        $WPFex61.IsChecked = $false
        $WPFex62.IsChecked = $false
        $WPFex63.IsChecked = $false
        $WPFex64.IsChecked = $false
        $WPFex65.IsChecked = $false
        $WPFex66.IsChecked = $false
        $WPFex67.IsChecked = $false
        $WPFex68.IsChecked = $false
        $WPFex69.IsChecked = $false
        $WPFex70.IsChecked = $false
        $WPFex71.IsChecked = $false
        $WPFex72.IsChecked = $false
        $WPFex73.IsChecked = $false
        $WPFex74.IsChecked = $false
        $WPFex75.IsChecked = $true
        $WPFex76.IsChecked = $false
        $WPFex77.IsChecked = $true
        $WPFex78.IsChecked = $false
        $WPFex79.IsChecked = $false
        $WPFex80.IsChecked = $false
        $WPFex81.IsChecked = $true
        $WPFex82.IsChecked = $false
        $WPFex83.IsChecked = $false
        $WPFex84.IsChecked = $false
        $WPFex85.IsChecked = $false
        $WPFex86.IsChecked = $false
        $WPFex87.IsChecked = $false
        $WPFex88.IsChecked = $false
        $WPFex89.IsChecked = $false
        $WPFex90.IsChecked = $true
        $WPFex91.IsChecked = $false
        $WPFex92.IsChecked = $false
    })

    $WPFTab7P3.Add_Click({
    Add-Type -AssemblyName PresentationFramework
    $xaml = @"
    <Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
            Title="Context Menu" Height="700" Width="500" Background="#FF1A2733">
        <Grid>
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="600"/>
                </Grid.ColumnDefinitions>
                <StackPanel Margin="0,5,0,0" Grid.Column="0">
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Disable" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P21" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Enable" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P22" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Old Context Menu" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P1" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P2" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Open Bash Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>                
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P3" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P4" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Open Powershell Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>                    
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P5" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P6" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Open CMD Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>                    
                </StackPanel>               
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P7" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P8" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Open Terminale Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                 
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P9" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P10" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Case Sensitive Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                  
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P11" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P12" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Screen Snip Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                  
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P13" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P14" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="'Include in Library' Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                 
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P15" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P16" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="'Give Access' Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                 
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P17" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P18" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="'Share' Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>             
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P19" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P20" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="'Photoviewer' Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P23" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P24" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="'End Task' Here" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P25" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P26" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="Kill not responding task" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Left">
                    <Button Content="Hide" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P27" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF8B0000" Offset="0"/>
                                <GradientStop Color="#FFFF0000" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                    <Button Content="Show" Margin="5" Foreground="White" FontWeight="Bold" FontSize="16" Height="35" Width="100" Name="MTab7P28" BorderBrush="#FF555555">
                        <Button.Background>
                            <LinearGradientBrush EndPoint="0.5,1" StartPoint="0.5,0">
                                <GradientStop Color="#FF006400" Offset="0"/>
                                <GradientStop Color="#FF0CBF5B" Offset="1"/>
                            </LinearGradientBrush>
                        </Button.Background>
                    </Button>
                <Label Content="LastActiveClick" Margin="0,0,0,0" FontWeight="Bold" FontSize="20" Background="#00000000" Foreground="White"/>
                </StackPanel>                                                
            </StackPanel>           
        </Grid>
    </Window>
"@

    $window = [Windows.Markup.XamlReader]::Parse($xaml)

    $window.FindName("MTab7P1").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Bash_to_Context_Menu.reg" -Destination Remove_Bash_to_Context_Menu.reg
        ./Remove_Bash_to_Context_Menu.reg /quiet
    })
    $window.FindName("MTab7P2").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Bash_to_Context_Menu.reg" -Destination Add_Bash_to_Context_Menu.reg
        ./Add_Bash_to_Context_Menu.reg /quiet	
    })
    $window.FindName("MTab7P3").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Open_PowerShell_here_as_administrator.reg" -Destination Remove_Open_PowerShell_here_as_administrator.reg
        ./Remove_Open_PowerShell_here_as_administrator.reg /quiet	
    })
    $window.FindName("MTab7P4").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Open_PowerShell_here_as_administrator.reg" -Destination Add_Open_PowerShell_here_as_administrator.reg
        ./Add_Open_PowerShell_here_as_administrator.reg /quiet	
    })
    $window.FindName("MTab7P5").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Command_Prompt.reg" -Destination Remove_Command_Prompt.reg
        ./Remove_Command_Prompt.reg /quiet	
    })
    $window.FindName("MTab7P6").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Command_Prompt.reg" -Destination Add_Command_Prompt.reg
        ./Add_Command_Prompt.reg /quiet    
    })
    $window.FindName("MTab7P7").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg" -Destination Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg
        ./Remove_Open_in_Windows_Terminal_context_menu_for_all_users.reg /quiet	
    })
    $window.FindName("MTab7P8").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg" -Destination Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg
        ./Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg /quiet	
    })
    $window.FindName("MTab7P9").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Case_Sensitivity_context_menu.reg" -Destination Remove_Case_Sensitivity_context_menu.reg
        ./Remove_Case_Sensitivity_context_menu.reg /quiet	
    })
    $window.FindName("MTab7P10").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Case_Sensitivity_context_menu.reg" -Destination Add_Case_Sensitivity_context_menu.reg
        ./Add_Case_Sensitivity_context_menu.reg /quiet	
    })
    $window.FindName("MTab7P11").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Remove_Screen_Snip_Context_Menu.reg" -Destination Remove_Screen_Snip_Context_Menu.reg
        ./Remove_Screen_Snip_Context_Menu.reg /quiet	
    })
    $window.FindName("MTab7P12").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Add_Screen_Snip_Context_Menu.reg" -Destination Add_Screen_Snip_Context_Menu.reg
        ./Add_Screen_Snip_Context_Menu.reg /quiet	
    })
    $window.FindName("MTab7P13").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Include in Library"	
    })
    $window.FindName("MTab7P14").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        New-Item -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -ErrorAction SilentlyContinue | Out-Null
        Set-ItemProperty -Path "HKCR:\Folder\ShellEx\ContextMenuHandlers\Library Location" -Name "(Default)" -Type String -Value "{3dad6c5d-2167-4cae-9914-f99e41c12cfa}"
        Write-Host "Showed 'Include in Library' in Context Menu"
    })
    $window.FindName("MTab7P15").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\Background\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Directory\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Drive\shellex\ContextMenuHandlers\Sharing" -ErrorAction SilentlyContinue    
        Write-Host "Hided 'Give Access to' in Context Menu"	
    })
    $window.FindName("MTab7P16").Add_Click({
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
    })
    $window.FindName("MTab7P17").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        Remove-Item -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue   
        Write-Host "Hided 'Share' in Context Menu"	
    })
    $window.FindName("MTab7P18").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name "HKCR" -PSProvider "Registry" -Root "HKEY_CLASSES_ROOT" | Out-Null
        }
        New-Item -Path "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -ErrorAction SilentlyContinue | Out-Null
        Set-ItemProperty -LiteralPath "HKCR:\*\shellex\ContextMenuHandlers\ModernSharing" -Name "(Default)" -Type String -Value "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}"
        Write-Host "Showed 'Share' in Context Menu"	
    })
    $window.FindName("MTab7P19").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
        }
        Remove-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Remove PhotoViewer from Context Menu"	
    })
    $window.FindName("MTab7P20").Add_Click({
        If (!(Test-Path "HKCR:")) {
        New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
        }
        New-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open\command" -Force | Out-Null
        New-Item -Path "HKCR:\Applications\photoviewer.dll\shell\open\DropTarget" -Force | Out-Null
        Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open" -Name "MuiVerb" -Type String -Value "@photoviewer.dll,-3043"
        Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open\command" -Name "(Default)" -Type ExpandString -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
        Set-ItemProperty -Path "HKCR:\Applications\photoviewer.dll\shell\open\DropTarget" -Name "Clsid" -Type String -Value "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
        Write-Host "Add PhotoViewer to Context Menu"	
    })
    $window.FindName("MTab7P21").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Modern_Context_Menu.reg" -Destination Modern_Context_Menu.reg
        ./Modern_Context_Menu.reg /quiet
        Write-Host "Disabled Full Context Menu"	
    })
    $window.FindName("MTab7P22").Add_Click({
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Old_Context_Menu.reg" -Destination Old_Context_Menu.reg
        ./Old_Context_Menu.reg /quiet	
    })
    $window.FindName("MTab7P23").Add_Click({
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" -Name "TaskbarEndTask" -ErrorAction SilentlyContinue
    Write-Host "'End task' option removed from taskbar context menu"
    })
    $window.FindName("MTab7P24").Add_Click({
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" -Force | Out-Null
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" -Name "TaskbarEndTask" -Value 1
    Write-Host "'End task' option added to taskbar context menu"
    })
    $window.FindName("MTab7P25").Add_Click({
    Remove-Item -Path "HKCR:\DesktopBackground\Shell\KillNotResponding" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Removed 'Kill not responding tasks' from desktop context menu"
    })
    $window.FindName("MTab7P26").Add_Click({
    New-Item -Path "HKCR:\DesktopBackground\Shell\KillNotResponding" -Force | Out-Null
    Set-ItemProperty -Path "HKCR:\DesktopBackground\Shell\KillNotResponding" -Name "icon" -Value "taskmgr.exe,-30651"
    Set-ItemProperty -Path "HKCR:\DesktopBackground\Shell\KillNotResponding" -Name "MUIverb" -Value "Kill not responding tasks"
    Set-ItemProperty -Path "HKCR:\DesktopBackground\Shell\KillNotResponding" -Name "Position" -Value "Top"
    New-Item -Path "HKCR:\DesktopBackground\Shell\KillNotResponding\command" -Force | Out-Null
    Set-ItemProperty -Path "HKCR:\DesktopBackground\Shell\KillNotResponding\command" -Name "(default)" -Value 'cmd.exe /K taskkill.exe /F /FI "status eq NOT RESPONDING"'
    Write-Host "Added 'Kill not responding tasks' to desktop context menu"
    })
    $window.FindName("MTab7P27").Add_Click({
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LastActiveClick" -Value 0 -Type DWord
    Write-Host "LastActiveClick disabled"
    })
    $window.FindName("MTab7P28").Add_Click({
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LastActiveClick" -Value 1 -Type DWord
    Write-Host "LastActiveClick enabled"
    })                    
    $window.ShowDialog() | Out-Null

    })

    $WPFTab7P4.Add_Click({
                If ( $WPFex1.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Desktop Icon in This PC"
            $WPFex1.IsChecked = $false
        }

            If ( $WPFex2.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" | Out-Null
        }
        Write-Host "Showed Desktop Icon in This PC"
        $WPFex2.IsChecked = $false
        }

            If ( $WPFex3.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Documents Icon in This PC"
        $WPFex3.IsChecked = $false
        }

            If ( $WPFex4.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" | Out-Null
        }
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}" | Out-Null
        }
        Write-Host "Showed Documents Icon in This PC"
        $WPFex4.IsChecked = $false
        }

            If ( $WPFex5.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Downloads Icon in This PC"
        $WPFex5.IsChecked = $false
        }

            If ( $WPFex6.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" | Out-Null
        }
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}" | Out-Null
        }
        Write-Host "Showed Downloads Icon in This PC"
        $WPFex6.IsChecked = $false
        }

            If ( $WPFex7.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Music Icon in This PC"
        $WPFex7.IsChecked = $false
        }

            If ( $WPFex8.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" | Out-Null
        }
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}" | Out-Null
        }
        Write-Host "Showed Music Icon in This PC"
        $WPFex8.IsChecked = $false
        }

            If ( $WPFex9.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Pictures Icon in This PC"
        $WPFex9.IsChecked = $false
        }

            If ( $WPFex10.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" | Out-Null
        }
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}" | Out-Null
        }
        Write-Host "Showed Pictures Icon in This PC"
        $WPFex10.IsChecked = $false
        }

            If ( $WPFex11.IsChecked -eq $true ) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" -Recurse -ErrorAction SilentlyContinue
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" -Recurse -ErrorAction SilentlyContinue
        Write-Host "Hided Videos Icon in This PC"
        $WPFex11.IsChecked = $false
        }

            If ( $WPFex12.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" | Out-Null
        }
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}" | Out-Null
        }
        Write-Host "Showed Videos Icon in This PC"
        $WPFex12.IsChecked = $false
        }

            If ( $WPFex13.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
        Write-Host "Hided Network Icon in This PC"
        $WPFex13.IsChecked = $false
        }

            If ( $WPFex14.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 1
        Write-Host "Showed Network Icon in This PC"
        $WPFex14.IsChecked = $false
        }

            If ( $WPFex15.IsChecked -eq $true ) {
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
        $WPFex15.IsChecked = $false
        }

            If ( $WPFex16.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" | Out-Null
        }
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" -Name "ThisPCPolicy" -ErrorAction SilentlyContinue
        Write-Host "Enabled 3D Object"
        $WPFex16.IsChecked = $false
        }

            If ( $WPFex17.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 1
        Write-Host "Hided All Icon on Desktop"
        $WPFex17.IsChecked = $false
        }

            If ( $WPFex18.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 0
        Write-Host "Showed All Icon on Desktop"
        $WPFex18.IsChecked = $false
        }

            If ( $WPFex19.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -Type DWord -Value 1
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -Type DWord -Value 1
        Write-Host "Hided Recycle Bin Shorcut from Desktop"
        $WPFex19.IsChecked = $false
        }

            If ( $WPFex20.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{645FF040-5081-101B-9F08-00AA002F954E}" -ErrorAction SilentlyContinue
        Write-Host "Showed Recycle Bin Shorcut on Desktop"
        $WPFex20.IsChecked = $false
        }

            If ( $WPFex21.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -ErrorAction SilentlyContinue
        Write-Host "Hided This PC Shorcut on Desktop"
        $WPFex21.IsChecked = $false
        }

            If ( $WPFex22.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Type DWord -Value 0
        Write-Host "Showed This PC Shorcut on Desktop"
        $WPFex22.IsChecked = $false
        }

            If ( $WPFex23.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -ErrorAction SilentlyContinue
        Write-Host "Hided User Folder Shorcut on Desktop"
        $WPFex23.IsChecked = $false
        }

            If ( $WPFex24.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" -Type DWord -Value 0
        Write-Host "Showed User Folder Shorcut on Desktop"
        $WPFex24.IsChecked = $false
        }

            If ( $WPFex25.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -ErrorAction SilentlyContinue
        Write-Host "Hided Control Panel Shorcut on Desktop"
        $WPFex25.IsChecked = $false
        }

            If ( $WPFex26.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" -Type DWord -Value 0
        Write-Host "Showed Control Panel Shorcut on Desktop"
        $WPFex26.IsChecked = $false
        }

            If ( $WPFex27.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
        Write-Host "Hided Network Shorcut on Desktop"
        $WPFex27.IsChecked = $false
        }

            If ( $WPFex28.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" )) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu"  -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" )) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 0
        Write-Host "Showed Network Shorcut on Desktop"
        $WPFex28.IsChecked = $false
        }

            If ( $WPFex29.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideIcons" -Value 1
        Write-Host "Hided Windows Build Number on Desktop"
        $WPFex29.IsChecked = $false
        }

            If ( $WPFex30.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "PaintDesktopVersion" -Type DWord -Value 1
        Write-Host "Showed Windows Build Number on Desktop"
        $WPFex30.IsChecked = $false
        }

            If ( $WPFex31.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
        Write-Host "Disabled 'Recent Elements' in Start Menu"
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
        Write-Host "Disabled 'Recent Elements' in Start Menu"
        $WPFex31.IsChecked = $false
        }

            If ( $WPFex32.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -ErrorAction SilentlyContinue
        Write-Host "Enabled 'Recent Elements' in Start Menu"
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecentlyAddedApps" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -ErrorAction SilentlyContinue
        Write-Host "Enabled 'Recent Elements' in Start Menu"
        $WPFex32.IsChecked = $false
        }

            If ( $WPFex33.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -Type DWord -Value 1
        Write-Host "Disabled 'Most Used' in Start Menu"
        $WPFex33.IsChecked = $false
        }

            If ( $WPFex34.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoStartMenuMFUprogramsList" -ErrorAction SilentlyContinue
        Write-Host "Enabled 'Most Used' in Start Menu"
        $WPFex34.IsChecked = $false
        }

            If ( $WPFex35.IsChecked -eq $true ) {
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
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        $WPFex35.IsChecked = $false
        }

            If ( $WPFex36.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value "1"
        Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -ErrorAction SilentlyContinue
        Write-Host "Restore and Starting Windows Search Service..."
        Set-Service "WSearch" -StartupType Automatic
        Start-Service "WSearch" -WarningAction SilentlyContinue
        Write-Host "Restore Windows Search Icon..."
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 1
        Write-Host "Enabled Windows Search in Start Menu"
        $WPFex36.IsChecked = $false
        }

            If ( $WPFex37.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -ErrorAction SilentlyContinue 
        Write-Host "Set Hide All Tray Icon"
        $WPFex37.IsChecked = $false
        }

            If ( $WPFex38.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
        Write-Host "Showed All Tray Icon"
        $WPFex38.IsChecked = $false
        }

            If ( $WPFex39.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
        Write-Host "Hided Task Icon in Taskbar"
        $WPFex39.IsChecked = $false
        }

            If ( $WPFex40.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -ErrorAction SilentlyContinue
        Write-Host "Set Show Task Icon in Taskbar"
        $WPFex40.IsChecked = $false
        }

            If ( $WPFex41.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
        Write-Host "Hided People Icon in Taskbar"
        $WPFex41.IsChecked = $false
        }

            If ( $WPFex42.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -ErrorAction SilentlyContinue
        Write-Host "Set Show People Icon in Taskbar"
        $WPFex42.IsChecked = $false
        }

            If ( $WPFex43.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "EnableTransparency" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 0
        Write-Host "Transparency disabled"
        $WPFex43.IsChecked = $false
        }

            If ( $WPFex44.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "EnableTransparency" -Value 1 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseOLEDTaskbarTransparency" -Type dword -Value 1
        Write-Host "Transparency enabled"
        $WPFex44.IsChecked = $false
        }

            If ( $WPFex45.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
        Write-Host "Disabled Action Center"
        $WPFex45.IsChecked = $false
        }

            If ( $WPFex46.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -ErrorAction SilentlyContinue 
        Write-Host "Enabled Action Center"
        $WPFex46.IsChecked = $false
        }

            If ( $WPFex47.IsChecked -eq $true ) {
        if (-not (Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 0 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 0 -Force | Out-Null
        if (-not (Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds")) {
            New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Force | Out-Null
        }
        New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -PropertyType DWord -Value 0 -Force | Out-Null
        Write-host "Disabled News and Interests" 
        $WPFex47.IsChecked = $false
        }

            If ( $WPFex48.IsChecked -eq $true ) {
        if (-not (Test-Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 1 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 1 -Force | Out-Null
        if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds")) {
            New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Force | Out-Null
        }
        New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -PropertyType DWord -Value 1 -Force | Out-Null
        Write-Host "Reset News and Interests"
        $WPFex48.IsChecked = $false
        }

            If ( $WPFex49.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
        Write-Host "Search box removed from taskbar"
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        $WPFex49.IsChecked = $false
        }

            If ( $WPFex50.IsChecked -eq $true ) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 1
        Write-Host "Search box enabled on taskbar"
        $WPFex50.IsChecked = $false
        }

            If ($WPFex51.IsChecked -eq $true) {
        $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        $valueName = "TaskbarMn"
        if (-not (Get-ItemProperty -Path $regPath -Name $valueName -ErrorAction SilentlyContinue)) {
            New-ItemProperty -Path $regPath -Name $valueName -PropertyType DWord -Value 0 -Force | Out-Null
        } else {
            Set-ItemProperty -Path $regPath -Name $valueName -Value 0
        }
        Stop-Process -ProcessName explorer -Force
        Start-Process explorer.exe
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Value 1 -Type DWord
        Write-Host "Meet Now hidden/disabled"
        $WPFex51.IsChecked = $false
        }

            If ($WPFex52.IsChecked -eq $true) {
        $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        $valueName = "TaskbarMn"
        if (-not (Get-ItemProperty -Path $regPath -Name $valueName -ErrorAction SilentlyContinue)) {
            New-ItemProperty -Path $regPath -Name $valueName -PropertyType DWord -Value 1 -Force | Out-Null
        } else {
            Set-ItemProperty -Path $regPath -Name $valueName -Value 1
        }
        Stop-Process -ProcessName explorer -Force
        Start-Process explorer.exe
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -ErrorAction SilentlyContinue
        Write-Host "Meet Now visible/enabled"
        $WPFex52.IsChecked = $false            
        }

            If ( $WPFex53.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -ErrorAction SilentlyContinue
        Write-host "Hided Seconds from Taskbar" 
        $WPFex53.IsChecked = $false
        }
            If ( $WPFex54.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced")) {
            New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -Type DWord -Value 1
        Write-host "Showed Seconds from Taskbar" 
        $WPFex54.IsChecked = $false
        }

            If ($WPFex55.IsChecked -eq $true) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0
        Write-Host "Task View button hidden on taskbar"                
        $WPFex55.IsChecked = $false
        }

            If ( $WPFex56.IsChecked -eq $true ) {
        $key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        New-Item -Path $key -Force | Out-Null
        Remove-ItemProperty -Path $key -Name "ShowTaskViewButton" -ErrorAction SilentlyContinue
        New-ItemProperty -Path $key -Name "ShowTaskViewButton" -PropertyType DWord -Value 1 -Force | Out-Null
        Stop-Process -Name explorer -Force
        Start-Process explorer.exe
        Write-Host "Task View button shown on taskbar"
        $WPFex56.IsChecked = $false
        }

            If ($WPFex57.IsChecked -eq $true) {
        $path1 = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
        if (-not (Test-Path $path1)) { New-Item -Path $path1 -Force | Out-Null }
        New-ItemProperty -Path $path1 -Name "HideRecommendedSection" -PropertyType DWord -Value 1 -Force | Out-Null
        $path2 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Start"
        if (-not (Test-Path $path2)) { New-Item -Path $path2 -Force | Out-Null }
        New-ItemProperty -Path $path2 -Name "HideRecommendedSection" -PropertyType DWord -Value 1 -Force | Out-Null
        $path3 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Education"
        if (-not (Test-Path $path3)) { New-Item -Path $path3 -Force | Out-Null }
        New-ItemProperty -Path $path3 -Name "IsEducationEnvironment" -PropertyType DWord -Value 1 -Force | Out-Null
        $path4 = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        if (-not (Test-Path $path4)) { New-Item -Path $path4 -Force | Out-Null }
        New-ItemProperty -Path $path4 -Name "Start_Layout" -PropertyType DWord -Value 1 -Force | Out-Null
        Write-Host "Start menu configured to hide recommended section and show more pins"
        Stop-Process -ProcessName explorer -Force
        Start-Process explorer.exe
        $WPFex57.IsChecked = $false
        }

            If ($WPFex58.IsChecked -eq $true) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "HideRecommendedSection" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Start" -Name "HideRecommendedSection" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Education" -Name "IsEducationEnvironment" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 0 -Type DWord
        Write-Host "Start menu settings restored to default"
        $WPFex58.IsChecked = $false    
        }

            If ($WPFex59.IsChecked -eq $true) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -ErrorAction SilentlyContinue
        Write-Host "TaskbarAl align to center"
        $WPFex59.IsChecked = $false
        }

            If ($WPFex60.IsChecked -eq $true) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Value 0 -Type DWord
        Write-Host "TaskbarAl align to left"
        $WPFex60.IsChecked = $false
        }

            If ( $WPFex61.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Desktop Icon in Explorer Namespace"
        $WPFex61.IsChecked = $false
        }

            If ( $WPFex62.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Desktop Icon in Explorer Namespace"
        $WPFex62.IsChecked = $false
        }

            If ( $WPFex63.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Documents Icon in Explorer Namespace"
        $WPFex63.IsChecked = $false
        }

            If ( $WPFex64.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Documents Icon in Explorer Namespace"
        $WPFex64.IsChecked = $false
        }

            If ( $WPFex65.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Downloads Icon in Explorer Namespace"
        $WPFex65.IsChecked = $false
        }

            If ( $WPFex66.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Downloads Icon in Explorer Namespace"
        $WPFex66.IsChecked = $false
        }

            If ( $WPFex67.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Music icon in Explorer Namespace"
        $WPFex67.IsChecked = $false
        }

            If ( $WPFex68.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Music icon in Explorer Namespace"
        $WPFex68.IsChecked = $false
        }

            If ( $WPFex69.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Pictures Icon in Explorer Namespace"
        $WPFex69.IsChecked = $false
        }

            If ( $WPFex70.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Pictures Icon in Explorer Namespace"
        $WPFex70.IsChecked = $false
        }

            If ( $WPFex71.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Hide"
        Write-Host "Hided Videos Icon in Explorer Namespace"
        $WPFex71.IsChecked = $false
        }

            If ( $WPFex72.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" -Name "ThisPCPolicy" -Type String -Value "Show"
        Write-Host "Showed Videos Icon in Explorer Namespace"
        $WPFex72.IsChecked = $false
        }

            If ( $WPFex73.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -Type DWord -Value 1
        Write-Host "Hided Network Icon in Explorer Namespace"
        $WPFex73.IsChecked = $false
        }

            If ( $WPFex74.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\NonEnum" -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -ErrorAction SilentlyContinue
        Write-Host "Showed Network Icon in Explorer Namespace"
        $WPFex74.IsChecked = $false
        }

            If ( $WPFex75.IsChecked -eq $true ) {
        New-Item -Path "HKCU:\Software\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -Name "System.IsPinnedToNameSpaceTree" -Value 0
        Write-Host "Home hidden in Navigation Pane"
        $WPFex75.IsChecked = $false
        }

            If ( $WPFex76.IsChecked -eq $true ) {
        Remove-Item -Path "HKCU:\Software\Classes\CLSID\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Home shown in Navigation Pane"
        $WPFex76.IsChecked = $false
        }

            If ( $WPFex77.IsChecked -eq $true ) {
        New-Item -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Name "System.IsPinnedToNameSpaceTree" -Value 0
        Write-Host "Gallery hidden in Navigation Pane"
        $WPFex77.IsChecked = $false
        }

            If ( $WPFex78.IsChecked -eq $true ) {
        Remove-Item -Path "HKCU:\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Gallery shown in Navigation Pane"                
        $WPFex78.IsChecked = $false
        }

            If ( $WPFex79.IsChecked -eq $true ) {
        Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -Force -ErrorAction SilentlyContinue
        Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "OneDrive removed from Namespace Tree"
        $WPFex79.IsChecked = $false
        }

            If ( $WPFex80.IsChecked -eq $true ) {
        New-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Force | Out-Null
        Set-ItemProperty -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Name "System.IsPinnedToNameSpaceTree" -Value 0

        New-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Force | Out-Null
        Set-ItemProperty -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Name "System.IsPinnedToNameSpaceTree" -Value 0

        Write-Host "OneDrive restored in Namespace Tree"
        $WPFex80.IsChecked = $false
        }

            If ( $WPFex81.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -ErrorAction SilentlyContinue
        Write-Host "Hided Libraries Icon in Explorer Namespace"
        $WPFex81.IsChecked = $false
        }

            If ( $WPFex82.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}")) {
        New-Item -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" -Name "System.IsPinnedToNameSpaceTree" -Type DWord -Value 1
        Write-Host "Showed Libraries Icon in Explorer Namespace"
        $WPFex82.IsChecked = $false
        }

            If ( $WPFex83.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneShowAllFolders" -ErrorAction SilentlyContinue
        Write-Host "Hided All Folder in Explorer Navigation Panel"
        $WPFex83.IsChecked = $false
        }
            If ( $WPFex84.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "NavPaneShowAllFolders" -Type DWord -Value 1
        Write-Host "Showed All Folder in Explorer Navigation Panel"
        $WPFex84.IsChecked = $false
        }

            If ( $WPFex85.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 0
        Write-Host "Hided Checkbox"
        $WPFex85.IsChecked = $false
        }
            If ( $WPFex86.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Type DWord -Value 1
        Write-Host "Showed Checkbox"
        $WPFex86.IsChecked = $false
        }

            If ( $WPFex87.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -Type DWord -Value 1
        Write-Host "Disabled Recent Files Lists"
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "ClearRecentDocsOnExit" -ErrorAction SilentlyContinue
        Write-Host "Disabled Clearing of Recent Files on Exit"
        $WPFex87.IsChecked = $false
        }

            If ( $WPFex88.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "ClearRecentDocsOnExit" -Type DWord -Value 1
        Write-Host "Enabled Clearing of Recent Files on Exit"
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -ErrorAction SilentlyContinue
        Write-Host "Enabled Recent Files Lists"
        $WPFex88.IsChecked = $false
        }

            If ( $WPFex89.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "HubMode" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -ErrorAction SilentlyContinue
        Write-Host "Change Default Explorer view to Quick Access"
        $WPFex89.IsChecked = $false
        }

            If ( $WPFex90.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "HubMode" -Type DWord -Value 1
            If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Force | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Type DWord -Value 1
        Write-Host "Showed Full Directory Path in Explorer"
        Write-Host "Change Default Explorer view to This PC"
        $WPFex90.IsChecked = $false
        }

            If ($WPFex91.IsChecked -eq $true) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Start\Companions\Microsoft.YourPhone_8wekyb3d8bbwe" -Name "IsEnabled" -Value 0 -Type DWord
        Write-Host "Phone Link in Start disabled"
        $WPFex91.IsChecked = $false
        }

            If ($WPFex92.IsChecked -eq $true) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Start\Companions\Microsoft.YourPhone_8wekyb3d8bbwe" -Name "IsEnabled" -ErrorAction SilentlyContinue
        Write-Host "Phone Link in Start enabled"
        $WPFex92.IsChecked = $false    
        }

        [System.Windows.MessageBox]::Show("All Done", "Explorer Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)

    })

    $WPFTab7P5.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/ResetExplorer.bat" -Destination ResetExplorer.bat
        Start-Process ResetExplorer.bat
        Write-Host "Reset Explorer"
    })

##########################################
##########################################
##########################################

##########################################
################ Utility #################
##########################################
    $WPFTab8P1.Add_Click({
        $WPFut1.IsChecked = $false
        $WPFut2.IsChecked = $false
        $WPFut3.IsChecked = $false
        $WPFut4.IsChecked = $false
        $WPFut5.IsChecked = $false
        $WPFut6.IsChecked = $false
        $WPFut7.IsChecked = $false
        $WPFut8.IsChecked = $false
        $WPFut9.IsChecked = $false
        $WPFut10.IsChecked = $false
        $WPFut11.IsChecked = $false
        $WPFut12.IsChecked = $false
        $WPFut13.IsChecked = $false
        $WPFut14.IsChecked = $false
        $WPFut15.IsChecked = $false
        $WPFut16.IsChecked = $false
        $WPFut17.IsChecked = $false
        $WPFut18.IsChecked = $false
        $WPFut19.IsChecked = $false
        $WPFut20.IsChecked = $false
        $WPFut21.IsChecked = $false
        $WPFut22.IsChecked = $false
        $WPFut23.IsChecked = $false
        $WPFut24.IsChecked = $false
        $WPFut25.IsChecked = $false
        $WPFut26.IsChecked = $false
        $WPFut27.IsChecked = $false
        $WPFut28.IsChecked = $false
        $WPFut29.IsChecked = $false
        $WPFut30.IsChecked = $false
        $WPFut31.IsChecked = $false
        $WPFut32.IsChecked = $false
        $WPFut33.IsChecked = $false
        $WPFut34.IsChecked = $false
        $WPFut35.IsChecked = $false
        $WPFut36.IsChecked = $false
        $WPFut37.IsChecked = $false
        $WPFut38.IsChecked = $false
        $WPFut39.IsChecked = $false
        $WPFut40.IsChecked = $false
        $WPFut41.IsChecked = $false
        $WPFut42.IsChecked = $false
        $WPFut43.IsChecked = $false
        $WPFut44.IsChecked = $false
        $WPFut45.IsChecked = $false
        $WPFut46.IsChecked = $false
        $WPFut47.IsChecked = $false
        $WPFut48.IsChecked = $false
        $WPFut49.IsChecked = $false
        $WPFut50.IsChecked = $false
        $WPFut51.IsChecked = $false
        $WPFut52.IsChecked = $false
        $WPFut53.IsChecked = $false
        $WPFut54.IsChecked = $false
        $WPFut55.IsChecked = $false
        $WPFut56.IsChecked = $false
        $WPFut57.IsChecked = $false
        $WPFut58.IsChecked = $false
        $WPFut59.IsChecked = $false
        $WPFut60.IsChecked = $false
        $WPFut61.IsChecked = $false
        $WPFut62.IsChecked = $false
        $WPFut63.IsChecked = $false
        $WPFut64.IsChecked = $false
        $WPFut65.IsChecked = $false
        $WPFut66.IsChecked = $false
        $WPFut67.IsChecked = $false
        $WPFut68.IsChecked = $false
    })

    $WPFTab8P2.Add_Click({
        $WPFut1.IsChecked = $false
        $WPFut2.IsChecked = $false
        $WPFut3.IsChecked = $false
        $WPFut4.IsChecked = $false
        $WPFut5.IsChecked = $false
        $WPFut6.IsChecked = $false
        $WPFut7.IsChecked = $false
        $WPFut8.IsChecked = $false
        $WPFut9.IsChecked = $false
        $WPFut10.IsChecked = $false
        $WPFut11.IsChecked = $false
        $WPFut12.IsChecked = $false
        $WPFut13.IsChecked = $false
        $WPFut14.IsChecked = $false
        $WPFut15.IsChecked = $false
        $WPFut16.IsChecked = $false
        $WPFut17.IsChecked = $false
        $WPFut18.IsChecked = $false
        $WPFut19.IsChecked = $false
        $WPFut20.IsChecked = $false
        $WPFut21.IsChecked = $false
        $WPFut22.IsChecked = $false
        $WPFut23.IsChecked = $false
        $WPFut24.IsChecked = $false
        $WPFut25.IsChecked = $true
        $WPFut26.IsChecked = $false
        $WPFut27.IsChecked = $false
        $WPFut28.IsChecked = $false
        $WPFut29.IsChecked = $false
        $WPFut30.IsChecked = $false
        $WPFut31.IsChecked = $true
        $WPFut32.IsChecked = $false
        $WPFut33.IsChecked = $false
        $WPFut34.IsChecked = $false
        $WPFut35.IsChecked = $false
        $WPFut36.IsChecked = $false
        $WPFut37.IsChecked = $true
        $WPFut38.IsChecked = $false
        $WPFut39.IsChecked = $false
        $WPFut40.IsChecked = $true
        $WPFut41.IsChecked = $false
        $WPFut42.IsChecked = $true
        $WPFut43.IsChecked = $false
        $WPFut44.IsChecked = $false
        $WPFut45.IsChecked = $false
        $WPFut46.IsChecked = $false
        $WPFut47.IsChecked = $true
        $WPFut48.IsChecked = $false
        $WPFut49.IsChecked = $false
        $WPFut50.IsChecked = $false
        $WPFut51.IsChecked = $true
        $WPFut52.IsChecked = $false
        $WPFut53.IsChecked = $false
        $WPFut54.IsChecked = $true
        $WPFut55.IsChecked = $false
        $WPFut56.IsChecked = $false
        $WPFut57.IsChecked = $false
        $WPFut58.IsChecked = $false
        $WPFut59.IsChecked = $false
        $WPFut60.IsChecked = $false
        $WPFut61.IsChecked = $false
        $WPFut62.IsChecked = $false
        $WPFut63.IsChecked = $true
        $WPFut64.IsChecked = $false
        $WPFut65.IsChecked = $true
        $WPFut66.IsChecked = $false
        $WPFut67.IsChecked = $false
        $WPFut68.IsChecked = $false
    })

    $WPFTab8P3.Add_Click({
        Start-Process wsreset -NoNewWindow
        Get-AppxPackage -AllUsers "Microsoft.DesktopAppInstaller" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
        Get-AppxPackage -AllUsers "Microsoft.WindowsStore" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
        Start-Process "https://apps.microsoft.com/detail/9wzdncrfjbmp?hl=en-US&gl=IT"
    })

    $WPFTab8P4.Add_Click({
            If ( $WPFut1.IsChecked -eq $true ) {
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
        $WPFut1.IsChecked = $false
        }
            If ( $WPFut2.IsChecked -eq $true ) {
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
        $WPFut2.IsChecked = $false
        }
            If ( $WPFut3.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 1
        Write-Host "Disabled Autoplay"
        $WPFut3.IsChecked = $false
        }
            If ( $WPFut4.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" -Name "DisableAutoplay" -Type DWord -Value 0
        Write-Host "Enabled Autoplay"
        $WPFut4.IsChecked = $false
        }
            If ( $WPFut5.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Type DWord -Value 255
        Write-Host "Disabled Autorun for All Drives"
        $WPFut5.IsChecked = $false
        }
            If ( $WPFut6.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -ErrorAction SilentlyContinue
        Write-Host "Enable Autorun for All Drives"
        $WPFut6.IsChecked = $false
        }
            If ( $WPFut7.IsChecked -eq $true ) {
        Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
            Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
            Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
        }
        Write-host "Disabled Background App Access" 
        $WPFut7.IsChecked = $false
        }
            If ( $WPFut8.IsChecked -eq $true ) {
        Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
            Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
        }
        Write-host "Enabled Background App Access" 
        $WPFut8.IsChecked = $false
        }
            If ( $WPFut9.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
        Write-host "Set BIOS UTC Time" 
        $WPFut9.IsChecked = $false
        }
            If ( $WPFut10.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 0
        Write-host "BIOS in Local Time" 
        $WPFut10.IsChecked = $false
        }
            If ( $WPFut11.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowEncryptCompressedColor" -ErrorAction SilentlyContinue
        Write-Host "Hided Coloring of Encrypted or Compressed NTFS Files"
        $WPFut11.IsChecked = $false
        }
            If ( $WPFut12.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowEncryptCompressedColor" -Type DWord -Value 1
        Write-Host "Showed Coloring of Encrypted or Compressed NTFS Files"
        $WPFut12.IsChecked = $false
        }
            If ( $WPFut13.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -Type DWord -Value 1
        Write-Host "Disabled Creation of Thumbnail Cache Files"
        $WPFut13.IsChecked = $false
        }
            If ( $WPFut14.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -ErrorAction SilentlyContinue
        Write-Host "Enabled Creation of Thumbnail Cache Files"
        $WPFut14.IsChecked = $false
        }
            If ( $WPFut15.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 1
        Write-Host "Disabled Thumbnails"
        $WPFut15.IsChecked = $false
        }
            If ( $WPFut16.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 0
        Write-Host "Enabled Thumbnails"
        $WPFut16.IsChecked = $false
        }
            If ( $WPFut17.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -Type DWord -Value 1
        Write-Host "Disabled Creation of Thumbs.db on Network Folders"
        $WPFut17.IsChecked = $false
        }
            If ( $WPFut18.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -ErrorAction SilentlyContinue
        Write-Host "Enabled Creation of Thumbs.db on Network Folders"
        $WPFut18.IsChecked = $false
        }
            If ( $WPFut19.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideDrivesWithNoMedia" -ErrorAction SilentlyContinue
        Write-Host "Hided Empty Drives (With no Media)"
            $WPFut19.IsChecked = $false
        }
            If ( $WPFut20.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideDrivesWithNoMedia" -Type DWord -Value 0
        Write-Host "Showed Empty Drives (With no Media)"
        $WPFut20.IsChecked = $false
        }
            If ( $WPFut21.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -ErrorAction SilentlyContinue
        Write-Host "Hided Folder Merge Conflicts"
        $WPFut21.IsChecked = $false
        }
            If ( $WPFut22.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideMergeConflicts" -Type DWord -Value 0
        Write-Host "Showed Folder Merge Conflicts"
        $WPFut22.IsChecked = $false
        }
            If ( $WPFut23.IsChecked -eq $true ) {
        $obj = Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='$Drive'"
        $indexing = $obj.IndexingEnabled
        if("$indexing" -eq $True){
            write-host "Disabling indexing of drive $Drive"
            $obj | Set-WmiInstance -Arguments @{IndexingEnabled=$False} | Out-Null
        }
        Write-host "Disabled Indexing" 
        $WPFut23.IsChecked = $false
        }

            If ( $WPFut24.IsChecked -eq $true ) {
        $obj = Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='$Drive'"
        $indexing = $obj.IndexingEnabled
        if ("$indexing" -eq $False) {
            Write-Host "Enabling indexing of drive $Drive"
            $obj | Set-WmiInstance -Arguments @{IndexingEnabled = $True} | Out-Null
        }
        Write-Host "Enabled Indexing"
        $WPFut24.IsChecked = $false
        }
            If ( $WPFut25.IsChecked -eq $true ) {
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
        $WPFut25.IsChecked = $false
        }
            If ( $WPFut26.IsChecked -eq $true ) {
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
        # Rename the key back to restore Paint3D
        foreach ($Paint3D in $Paint3Dstuff) {
            $rmPaint3D = $Paint3D + "_"
            if (Test-Path $rmPaint3D) {
                Rename-Item -Path $rmPaint3D -NewName (Split-Path $Paint3D -Leaf) -Force
            }
        }
        Write-Host "Enabled Paint3D"
        $WPFut26.IsChecked = $false
        }
            If ( $WPFut27.IsChecked -eq $true ) {
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
        Set-Service dbupdate -StartupType Disabled
        Set-Service dbupdatem -StartupType Disabled
        Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineCore" | Disable-ScheduledTask
        Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineUA" | Disable-ScheduledTask
        #schtasks /Change /TN "DropboxUpdateTaskMachineCore" /Disable
        #schtasks /Change /TN "DropboxUpdateTaskMachineUA" /Disable
        Write-Host "Disabled Dropbox Telemetry"
        Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineCore" | Disable-ScheduledTask
        Get-ScheduledTask -TaskName "GoogleUpdateTaskMachineUA" | Disable-ScheduledTask
        #schtasks /Change /TN "GoogleUpdateTaskMachineCore" /Disable
        #schtasks /Change /TN "GoogleUpdateTaskMachineUA" /Disable
        Write-Host "Disabled Google Update Service"
        Stop-Service "LogiRegistryService"
        Set-Service "LogiRegistryService" -StartupType Disabled
        Write-Host "Disabled Logitech Telemetry"
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
            $WPFut27.IsChecked = $false
        }
            If ( $WPFut28.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" -Name "BackupPolicy" -Value 0
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" -Name "DeviceMetadataUploaded" -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" -Name "PriorLogons" -Value 0
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
            $groupPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\$group"
            if (-not (Test-Path $groupPath)) {
                New-Item -Path $groupPath -Force | Out-Null
            }
            Set-ItemProperty -Path $groupPath -Name "Enabled" -Value 1
        }
        Write-Host "Enabled Setting Sync"
        $WPFut28.IsChecked = $false
        }
            If ( $WPFut29.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -Type DWord -Value 0
        Write-Host "Disabled Sharing Wizard"
        $WPFut29.IsChecked = $false
        }
            If ( $WPFut30.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "SharingWizardOn" -ErrorAction SilentlyContinue
        Write-Host "Enabled Sharing Wizard"
        $WPFut30.IsChecked = $false
        }
            If ( $WPFut31.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 0
        Write-Host "Hided Sync Provider Notifications"
        $WPFut31.IsChecked = $false
        }
            If ( $WPFut32.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Type DWord -Value 1
        Write-Host "Showed Sync Provider Notifications"
        $WPFut32.IsChecked = $false
        }
        If ( $WPFut33.IsChecked -eq $true ) {
            if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device") {
                Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device" -Name "TreatAsInternalPort" -ErrorAction SilentlyContinue
                Write-Host "Removed Treat As Internal Port setting"
            }
            $WPFut33.IsChecked = $false
        }
            If ( $WPFut34.IsChecked -eq $true ) {
        New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\storahci\Parameters\Device" -Name "TreatAsInternalPort"   -Type MultiString -Value 0,1,2,3,4,5
        Write-Host "Set Treat As Internal Port"
        $WPFut34.IsChecked = $false
        }
        If ( $WPFut35.IsChecked -eq $true ) {
            Get-Process setup -ErrorAction SilentlyContinue | Stop-Process -Force
            $zipPath = "$env:TEMP\ItaLinux.zip"
            $extractPath = "$env:TEMP"
            if (Test-Path $zipPath) {
                Remove-Item $zipPath -Force
                Write-Host "Deleted ItaLinux.zip"
            }
            $extractedFolder = Join-Path $extractPath "ItaLinuxFolder"
            if (Test-Path $extractedFolder) {
                Remove-Item $extractedFolder -Recurse -Force
                Write-Host "Deleted extracted ItaLinux files"
            }
            Write-Host "Attempted to undo Accented Capitals installation"
            $WPFut35.IsChecked = $false
        }
            If ( $WPFut36.IsChecked -eq $true ) {
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://github.com/kolmogorov42/maiuscole-accentate/releases/download/1.0/ItaLinux.zip" -Destination "$env:TEMP\ItaLinux.zip"
        $zipPath = "$env:TEMP\ItaLinux.zip"
        $extractPath = "$env:TEMP"
        Add-Type -AssemblyName System.IO.Compression.FileSystem
        [System.IO.Compression.ZipFile]::ExtractToDirectory($zipPath, $extractPath)
        Start-Process -FilePath setup.exe
        Write-host "Added Accented Capitals"
        Write-Host "`nCredit: GitHub project by Kolmogorov42 - https://github.com/kolmogorov42" -ForegroundColor Cyan
        $WPFut36.IsChecked = $false
        }
            If ( $WPFut37.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
        Write-host "Disabled Automatic Maps Updates" 
        $WPFut37.IsChecked = $false
        }
            If ( $WPFut38.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -ErrorAction SilentlyContinue
        Write-host "Enabled Automatic Maps Updates" 
        $WPFut38.IsChecked = $false
        }
            If ( $WPFut39.IsChecked -eq $true ) {
        If (Test-Path "HKCU:\Software\Microsoft\Clipboard") {
            Set-ItemProperty "HKCU:\Software\Microsoft\Clipboard" -Name "EnableClipboardHistory" -Type DWord -Value 0
            Write-Host "Disabled Clipboard History"
        } else {
            Write-Host "Clipboard registry key not found"
        }
        $WPFut39.IsChecked = $false
        }
            If ( $WPFut40.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Clipboard")) {
        New-Item -Path "HKCU:\Software\Microsoft\Clipboard" -Force | Out-Null
        }
        Set-ItemProperty "HKCU:\Software\Microsoft\Clipboard" -Name "EnableClipboardHistory" -Type DWord -Value 1
        Write-Host "Enabled Clipboard History"
        $WPFut40.IsChecked = $false
        }
            If ( $WPFut41.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -ErrorAction SilentlyContinue
        Write-Host "Set Control Panel Categories View"
        $WPFut41.IsChecked = $false
        }
            If ( $WPFut42.IsChecked -eq $true ) {
        If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" | Out-Null
        }
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "StartupPage" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" -Name "AllItemsIconView" -Type DWord -Value 0
        Write-Host "Set Control Panel Icon View"
        $WPFut42.IsChecked = $false
        }
            If ( $WPFut43.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type String -Value "0"
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type String -Value "0"
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type String -Value "0"
        Write-host "Disabled Enhanced Pointer Precision" 
        $WPFut43.IsChecked = $false
        }
            If ( $WPFut44.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type String -Value "1"
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type String -Value "6"
        Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type String -Value "10"
        Write-host "Enabled Enhanced Pointer Precision" 
        $WPFut44.IsChecked = $false
        }
            If ( $WPFut45.IsChecked -eq $true ) {
        If ((Get-WmiObject -Class "Win32_OperatingSystem").Caption -like "*Server*") {
        Uninstall-WindowsFeature -Name "Hyper-V" -IncludeManagementTools -WarningAction SilentlyContinue | Out-Null
        } Else {
        Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -NoRestart -WarningAction SilentlyContinue | Out-Null
        }
        Write-Host "Disabled Hyper-V"
        $WPFut45.IsChecked = $false
        }
            If ( $WPFut46.IsChecked -eq $true ) {
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
        $WPFut46.IsChecked = $false
        }
            If ( $WPFut47.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoNewAppAlert" -Type DWord -Value 1
        Write-Host "Disabled 'How do you want to open this file?' Prompt"
        $WPFut47.IsChecked = $false
        }
            If ( $WPFut48.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoNewAppAlert" -ErrorAction SilentlyContinue
        Write-Host "Enabled 'How do you want to open this file?' Prompt"
        $WPFut48.IsChecked = $false
        }
            If ( $WPFut49.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\services\wlidsvc" -Name Start -Type "DWORD" -Value 4 -Force
        Set-Service wlidsvc -StartupType Disabled
        Write-Host "Disabled Windows Live ID Service (MS Store is now broken)"
        $WPFut49.IsChecked = $false
        }
            If ( $WPFut50.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\services\wlidsvc" -Name Start -Type "DWORD" -Value 2 -Force
        Set-Service wlidsvc -StartupType Automatic
        Write-Host "Enabled Windows Live ID Service"
        $WPFut50.IsChecked = $false
        }
            If ( $WPFut51.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0 -Type DWord
        Write-Host "Disabled Welcome Experience"
        $WPFut51.IsChecked = $false
        }
            If ( $WPFut52.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 1 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 1 -Type DWord
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 1 -Type DWord
        Write-Host "Enabled Welcome Experience"
        $WPFut52.IsChecked = $false
        }
            If ( $WPFut53.IsChecked -eq $true ) {
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
        $WPFut53.IsChecked = $false
        }
            If ( $WPFut54.IsChecked -eq $true ) {
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
        $WPFut54.IsChecked = $false
        }
            If ( $WPFut55.IsChecked -eq $true ) {
        nfsadmin client stop
        Disable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -NoRestart
        Disable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -NoRestart
        Disable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -NoRestart
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 65534
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 65534
        nfsadmin client start
        nfsadmin client localhost config fileaccess=755 SecFlavors=+sys +krb5 +krb5i
        Write-Host "Disabled NFS"
        $WPFut55.IsChecked = $false
        }
            If ( $WPFut56.IsChecked -eq $true ) {
        Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All
        Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
        Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
        nfsadmin client stop
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
        nfsadmin client start
        nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
        Write-Host "Enabled NFS"
        $WPFut56.IsChecked = $false
        }
            If ( $WPFut57.IsChecked -eq $true ) {
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/refs/heads/main/resources/undo_ribbon.reg" -Destination undo_ribbon.reg
        ./undo_ribbon.reg /quiet
        Write-Host "Removed Explorer Ribbon"
        $WPFut57.IsChecked = $false
        }
            If ( $WPFut58.IsChecked -eq $true ) {
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/refs/heads/main/resources/restore_ribbon.reg" -Destination restore_ribbon.reg
        ./restore_ribbon.reg /quiet
        Write-Host "Restored Explorer Ribbon"
        $WPFut58.IsChecked = $false
        }
            If ( $WPFut59.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -Type DWord -Value 1
        Write-Host "Disabled Search for App in Store for Unknown Extensions"
        $WPFut59.IsChecked = $false
        }
            If ( $WPFut60.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "NoUseStoreOpenWith" -ErrorAction SilentlyContinue
        Write-Host "Enabled Search for App in Store for Unknown Extensions"
        $WPFut60.IsChecked = $false
        }
            If ( $WPFut61.IsChecked -eq $true ) {
        If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons")) {
            New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" | Out-Null
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" -Name "29" -Type String -Value "%SystemRoot%\System32\imageres.dll,-1015"
        Write-host "Hided Shortcut Icon Arrow" 
        $WPFut61.IsChecked = $false
        }
            If ( $WPFut62.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" -Name "29" -ErrorAction SilentlyContinue
        Write-host "Showed Shortcut Icon Arrow" 
        $WPFut62.IsChecked = $false
        }
            If ( $WPFut63.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "link" -Type Binary -Value ([byte[]](0,0,0,0))
        Write-host "Disabled adding '- Shortcut' to shorcut name" 
        $WPFut63.IsChecked = $false
        }
            If ( $WPFut64.IsChecked -eq $true ) {
        Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "link" -ErrorAction SilentlyContinue
        Write-host "Enabled adding '- Shortcut' to shorcut name" 
        $WPFut624IsChecked = $false
        }
            If ( $WPFut65.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
        Write-Host "Disabled Sticky Keys Prompt"
        $WPFut65.IsChecked = $false
        }
            If ( $WPFut66.IsChecked -eq $true ) {
        Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "510"
        Write-Host "Enable Sticky Keys Prompt"
        $WPFut66.IsChecked = $false
        }
            If ( $WPFut67.IsChecked -eq $true ) {
        If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 0
        }
        Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Disabled WSL (Linux Subsystem)"
        $WPFut67.IsChecked = $false
        }
            If ( $WPFut68.IsChecked -eq $true ) {
        If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
        # 1607 needs developer mode to be enabled
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 1
        }
        Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
        Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -NoRestart -WarningAction SilentlyContinue | Out-Null
        Write-Host "Reactive WSL (Linux Subsystem)"
        $WPFut68.IsChecked = $false
        }

        [System.Windows.MessageBox]::Show("All Done", "Utility Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)        
    })
  
    $WPFTab8P5.Add_Click({
        Get-AppxPackage "Microsoft.DesktopAppInstaller" | Remove-AppxPackage
        Get-AppxPackage "Microsoft.WindowsStore" | Remove-AppxPackage
        Write-host "Uninstalled Microsoft Store" 
    })
##########################################
##########################################
##########################################

##########################################
############### Application ##############
##########################################

    $WPFTab9P1.Add_Click({
        $WPFa1.IsChecked = $false
        $WPFa2.IsChecked = $true
        $WPFa3.IsChecked = $false
        $WPFa4.IsChecked = $true
        $WPFa5.IsChecked = $false
        $WPFa6.IsChecked = $true
        $WPFa7.IsChecked = $false
        $WPFa8.IsChecked = $true
        $WPFa9.IsChecked = $false
        $WPFa10.IsChecked = $true
        $WPFa11.IsChecked = $false
        $WPFa12.IsChecked = $true
        $WPFa13.IsChecked = $false
        $WPFa14.IsChecked = $true
        $WPFa15.IsChecked = $false
        $WPFa16.IsChecked = $true
        $WPFa17.IsChecked = $false
        $WPFa18.IsChecked = $true
        $WPFa19.IsChecked = $false
        $WPFa20.IsChecked = $true
        $WPFa21.IsChecked = $false
        $WPFa22.IsChecked = $true
        $WPFa23.IsChecked = $false
        $WPFa24.IsChecked = $true
        $WPFa31.IsChecked = $false
        $WPFa32.IsChecked = $false
        $WPFa33.IsChecked = $false
        $WPFa34.IsChecked = $false
        $WPFa35.IsChecked = $false
        $WPFa36.IsChecked = $false
        $WPFa37.IsChecked = $false
        $WPFa38.IsChecked = $true
        $WPFa39.IsChecked = $false
        $WPFa40.IsChecked = $true
        $WPFa41.IsChecked = $false
        $WPFa42.IsChecked = $true
        $WPFa43.IsChecked = $false
        $WPFa44.IsChecked = $true
        $WPFa45.IsChecked = $false
        $WPFa46.IsChecked = $true
        $WPFa47.IsChecked = $false
        $WPFa48.IsChecked = $true
        $WPFa49.IsChecked = $false
        $WPFa50.IsChecked = $true
        $WPFa51.IsChecked = $false
        $WPFa52.IsChecked = $false
        $WPFa53.IsChecked = $false
        $WPFa54.IsChecked = $false
    })

    $WPFTab9P2.Add_Click({
        $WPFa1.IsChecked = $true
        $WPFa2.IsChecked = $false
        $WPFa3.IsChecked = $true
        $WPFa4.IsChecked = $false
        $WPFa5.IsChecked = $true
        $WPFa6.IsChecked = $false
        $WPFa7.IsChecked = $false
        $WPFa8.IsChecked = $false
        $WPFa9.IsChecked = $true
        $WPFa10.IsChecked = $false
        $WPFa11.IsChecked = $true
        $WPFa12.IsChecked = $false
        $WPFa13.IsChecked = $true
        $WPFa14.IsChecked = $false
        $WPFa15.IsChecked = $true
        $WPFa16.IsChecked = $false
        $WPFa17.IsChecked = $true
        $WPFa18.IsChecked = $false
        $WPFa19.IsChecked = $true
        $WPFa20.IsChecked = $false
        $WPFa21.IsChecked = $false
        $WPFa22.IsChecked = $false
        $WPFa23.IsChecked = $false
        $WPFa24.IsChecked = $false
        $WPFa31.IsChecked = $false
        $WPFa32.IsChecked = $false
        $WPFa33.IsChecked = $false
        $WPFa34.IsChecked = $false
        $WPFa35.IsChecked = $false
        $WPFa36.IsChecked = $false
        $WPFa37.IsChecked = $true
        $WPFa38.IsChecked = $false
        $WPFa39.IsChecked = $true
        $WPFa40.IsChecked = $false
        $WPFa41.IsChecked = $true
        $WPFa42.IsChecked = $false
        $WPFa43.IsChecked = $true
        $WPFa44.IsChecked = $false
        $WPFa45.IsChecked = $true
        $WPFa46.IsChecked = $false
        $WPFa47.IsChecked = $true
        $WPFa48.IsChecked = $false
        $WPFa49.IsChecked = $true
        $WPFa50.IsChecked = $false
        $WPFa51.IsChecked = $false
        $WPFa52.IsChecked = $true
        $WPFa53.IsChecked = $false
        $WPFa54.IsChecked = $false
    })

    $WPFTab9P3.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/TheBobPony/MSEdgeTweaker/main/MSEdgeTweaker.cmd" -Destination MSEdgeTweaker.cmd
        Start-Process MSEdgeTweaker.cmd
        Write-Host "`nCredit: GitHub project by TheBobPony - https://github.com/TheBobPony" -ForegroundColor Cyan
    })

    $WPFTab9P4.Add_Click({
        If ( $WPFa1.IsChecked -eq $true ) {
            Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-$env:PROCESSOR_ARCHITECTURE" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Internet Explorer"
            $WPFa1.IsChecked = $false
        }
        If ( $WPFa2.IsChecked -eq $true ) {
            Enable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-$env:PROCESSOR_ARCHITECTURE" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Reactivated Internet Explorer"
            $WPFa2.IsChecked = $false
            }
        If ( $WPFa3.IsChecked -eq $true ) {
            Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Work Folders"
            $WPFa3.IsChecked = $false
        }
        If ( $WPFa4.IsChecked -eq $true ) {
            Enable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Reactive Work Folders"
            $WPFa4.IsChecked = $false
        }
        If ( $WPFa5.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableConsumerAccountStateContent" -Value 1 -Type DWord
            Write-Host "MS 365 Ads disabled"
            $WPFa5.IsChecked = $false
        }
        If ( $WPFa6.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableConsumerAccountStateContent" -ErrorAction SilentlyContinue
            Write-Host "MS 365 Ads enabled"
            $WPFa6.IsChecked = $false
        }
        If ( $WPFa7.IsChecked -eq $true ) {
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
            $WPFa7.IsChecked = $false
        }
        If ( $WPFa8.IsChecked -eq $true ) {
            Get-AppxPackage -AllUsers "Microsoft.XboxApp" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
            Get-AppxPackage -AllUsers "Microsoft.XboxIdentityProvider" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
            Get-AppxPackage -AllUsers "Microsoft.XboxSpeechToTextOverlay" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
            Get-AppxPackage -AllUsers "Microsoft.XboxGameOverlay" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
            Get-AppxPackage -AllUsers "Microsoft.Xbox.TCUI" | ForEach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 1
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -ErrorAction SilentlyContinue
            Write-host "Enabled Xbox Features" 
            $WPFa8.IsChecked = $false
        }
        If ( $WPFa9.IsChecked -eq $true ) {
            Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Disabled Windows Media Player"
            $WPFa9.IsChecked = $false
        }
        If ( $WPFa10.IsChecked -eq $true ) {
            Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Reactive Windows Media Player"
            $WPFa10.IsChecked = $false
        }
        If ( $WPFa11.IsChecked -eq $true ) {
            Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Remove Microsoft Print to PDF"
            $WPFa11.IsChecked = $false
        }
        If ( $WPFa12.IsChecked -eq $true ) {
            Enable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Add Microsoft Print to PDF"
            $WPFa12.IsChecked = $false
        }
        If ( $WPFa13.IsChecked -eq $true ) {
            Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Remove Microsoft XPS Document Writer"
            $WPFa13.IsChecked = $false
        }
        If ( $WPFa14.IsChecked -eq $true ) {
            Enable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
            Write-Host "Add Microsoft XPS Document Writer"
            $WPFa14.IsChecked = $false
        }
        If ( $WPFa15.IsChecked -eq $true ) {
            Remove-Printer -Name "Fax" -ErrorAction SilentlyContinue
            Write-Host "Remove Fax Printer"
            $WPFa15.IsChecked = $false
        }
        If ( $WPFa16.IsChecked -eq $true ) {
            Add-Printer -Name "Fax" -DriverName "Microsoft Shared Fax Driver" -PortName "SHRFAX:" -ErrorAction SilentlyContinue
            Write-Host "Add Fax Printer"
            $WPFa16.IsChecked = $false
        }
        If ( $WPFa17.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -ErrorAction SilentlyContinue
            Write-Host "Remove Developer Mode"
            $WPFa17.IsChecked = $false
        }
        If ( $WPFa18.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowAllTrustedApps" -Type DWord -Value 1
            Write-Host "Add Developer Mode"
            $WPFa18.IsChecked = $false
        }
        If ( $WPFa19.IsChecked -eq $true ) {
            Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Remove-WindowsCapability -Online | Out-Null
            Write-Host "Remove Math Recognizer"
            $WPFa19.IsChecked = $false
        }
        If ( $WPFa20.IsChecked -eq $true ) {
            Get-WindowsCapability -Online | Where-Object { $_.Name -like "MathRecognizer*" } | Add-WindowsCapability -Online | Out-Null
            Write-Host "Add Math Recognizer"
            $WPFa20.IsChecked = $false
        }
        If ( $WPFa21.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
            Write-host "Disabled Remote Assistance"
            $WPFa21.IsChecked = $false
        }
        If ( $WPFa22.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 1
            Write-host "Enabled Remote Assistance" 
            $WPFa22.IsChecked = $false
        }
        If ( $WPFa23.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Type DWord -Value 1
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 1
            Disable-NetFirewallRule -Name "RemoteDesktop*"
            Write-host "Disabled Remote Desktop" 
            $WPFa23.IsChecked = $false
        }
        If ( $WPFa24.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Type DWord -Value 0
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Type DWord -Value 0
            Enable-NetFirewallRule -Name "RemoteDesktop*"
            Write-host "Enabled Remote Desktop" 
            $WPFa24.IsChecked = $false
        }
        If ( $WPFa31.IsChecked -eq $true ) {
            $localHostsPath = "C:\Windows\System32\drivers\etc\hosts"
            try {
                $hostsContent = Get-Content $localHostsPath -ErrorAction Stop
            } catch {
                Write-Error "Failed to load the HOSTS file. Error: $_"
                return
            }
            $recording = $true
            $newContent = @()
            foreach ($line in $hostsContent) {
                if ($line -match "#AdobeNetBlock-start") {
                    $recording = $false
                }
                if ($recording) {
                    $newContent += $line
                }
                if ($line -match "#AdobeNetBlock-end") {
                    $recording = $true
                }
            }
            try {
                $newContent | Set-Content $localHostsPath -Encoding ASCII
                Write-Output "Successfully removed the AdobeNetBlock section from the HOSTS file."
            } catch {
                Write-Error "Failed to write back to the HOSTS file. Error: $_"
            }
            try {
                Invoke-Expression "ipconfig /flushdns"
                Write-Output "DNS cache flushed successfully."
            } catch {
                Write-Error "Failed to flush DNS cache. Error: $_"
            }
            function RestoreCCService {
                $originalPath = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\Adobe Desktop Service.exe.old"
                $newPath = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\Adobe Desktop Service.exe"

                if (Test-Path -Path $originalPath) {
                    Rename-Item -Path $originalPath -NewName "Adobe Desktop Service.exe" -Force
                    Write-Host "Adobe Desktop Service has been restored."
                } else {
                    Write-Host "Backup file does not exist. No changes were made."
                }
            }

            function AcrobatUpdates {
                $rootPath = "HKLM:\SOFTWARE\WOW6432Node\Adobe\Adobe ARM\Legacy\Acrobat"
                $subKeys = Get-ChildItem -Path $rootPath | Where-Object { $_.PSChildName -like "{*}" }
                foreach ($subKey in $subKeys) {
                    $fullPath = Join-Path -Path $rootPath -ChildPath $subKey.PSChildName
                    try {
                        Set-ItemProperty -Path $fullPath -Name Mode -Value 3
                    } catch {
                        Write-Host "Registry Key for changing Acrobat Updates does not exist in $fullPath"
                    }
                }
            }

            RestoreCCService
            AcrobatUpdates
            $WPFa31.IsChecked = $false
        }      
        If ( $WPFa32.IsChecked -eq $true ) {
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://swupmf.adobe.com/webfeed/CleanerTool/win/AdobeCreativeCloudCleanerTool.exe" -Destination "$env:TEMP\creative_cloud_uninstallerwin.zip"
            $zipPath = "$env:TEMP\creative_cloud_uninstallerwin.zip"
            $extractPath = "$env:TEMP"
            Add-Type -AssemblyName System.IO.Compression.FileSystem
            [System.IO.Compression.ZipFile]::ExtractToDirectory($zipPath, $extractPath)
            Start-Process -FilePath "Creative Cloud Uninstaller.exe"
            Write-Host "Removed Adobe Creative Cloud"
            $remoteHostsUrl = "https://raw.githubusercontent.com/Ruddernation-Designs/Adobe-URL-Block-List/master/hosts"
            $localHostsPath = "C:\Windows\System32\drivers\etc\hosts"
            $tempHostsPath = "C:\Windows\System32\drivers\etc\temp_hosts"
            try {
                Invoke-WebRequest -Uri $remoteHostsUrl -OutFile $tempHostsPath
                Write-Output "Downloaded the remote HOSTS file to a temporary location."
            } catch {
                Write-Error "Failed to download the HOSTS file. Error: $_"
            }
            try {
                $localHostsContent = Get-Content $localHostsPath -ErrorAction Stop
                $blockStartExists = $localHostsContent -like "*#AdobeNetBlock-start*"
                if ($blockStartExists) {
                    Write-Output "AdobeNetBlock-start already exists. Skipping addition of new block."
                } else {
                    $newBlockContent = Get-Content $tempHostsPath -ErrorAction Stop
                    $newBlockContent = $newBlockContent | Where-Object { $_ -notmatch "^\s*#" -and $_ -ne "" }
                    $newBlockHeader = "#AdobeNetBlock-start"
                    $newBlockFooter = "#AdobeNetBlock-end"
                    $combinedContent = $localHostsContent + $newBlockHeader, $newBlockContent, $newBlockFooter | Out-String
                    $combinedContent | Set-Content $localHostsPath -Encoding ASCII
                    Write-Output "Successfully added the AdobeNetBlock."
                }
            } catch {
                Write-Error "Error during processing: $_"
            }
            Remove-Item $tempHostsPath -ErrorAction Ignore
            try {
                Invoke-Expression "ipconfig /flushdns"
                Write-Output "DNS cache flushed successfully."
            } catch {
                Write-Error "Failed to flush DNS cache. Error: $_"
            }
            function CCStopper {
                $path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\Adobe Desktop Service.exe"
                if (Test-Path $path) {
                    Takeown /f $path
                    $acl = Get-Acl $path
                    $acl.SetOwner([System.Security.Principal.NTAccount]"Administrators")
                    $acl | Set-Acl $path

                    Rename-Item -Path $path -NewName "Adobe Desktop Service.exe.old" -Force
                } else {
                    Write-Host "Adobe Desktop Service is not in the default location."
                }
            }


            function AcrobatUpdates {
                $rootPath = "HKLM:\SOFTWARE\WOW6432Node\Adobe\Adobe ARM\Legacy\Acrobat"
                $subKeys = Get-ChildItem -Path $rootPath | Where-Object { $_.PSChildName -like "{*}" }
                foreach ($subKey in $subKeys) {
                    $fullPath = Join-Path -Path $rootPath -ChildPath $subKey.PSChildName
                    try {
                        Set-ItemProperty -Path $fullPath -Name Mode -Value 0
                        Write-Host "Acrobat Updates have been disabled."
                    } catch {
                        Write-Host "Registry Key for changing Acrobat Updates does not exist in $fullPath"
                    }
                }
            }

            CCStopper
            AcrobatUpdates
            $WPFa32.IsChecked = $false
        }
        if ( $WPFa33.IsChecked -eq $true ) {
            $edgeRegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Edge"
            Remove-ItemProperty -Path $edgeRegPath -Name "MetricsReportingEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "BackgroundModeEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "ShoppingEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "ShowFirstRunExperience" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "BrowserAddProfileEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "EdgeShoppingAssistantEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $edgeRegPath -Name "HubsSidebarEnabled" -ErrorAction SilentlyContinue
            $services = "edgeupdate", "edgeupdatem"
            foreach ($svc in $services) {
                Set-Service -Name $svc -StartupType Manual -ErrorAction SilentlyContinue
            }
            schtasks.exe /Create /TN "\Microsoft\EdgeUpdate\MicrosoftEdgeUpdateTaskMachineCore" /SC MINUTE /MO 1 /TR "\"C:\Program Files (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe\" /c" /RU SYSTEM | Out-Null
            schtasks.exe /Create /TN "\Microsoft\EdgeUpdate\MicrosoftEdgeUpdateTaskMachineUA" /SC MINUTE /MO 1 /TR "\"C:\Program Files (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe\" /ua /installsource scheduler" /RU SYSTEM | Out-Null
            Write-Host "Edge restored to default state."
            $WPFa33.IsChecked = $false
        }
        if ( $WPFa34.IsChecked -eq $true ) {
            $edgeRegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Edge"
            if (!(Test-Path $edgeRegPath)) { New-Item -Path $edgeRegPath -Force | Out-Null }
            Set-ItemProperty -Path $edgeRegPath -Name "MetricsReportingEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "BackgroundModeEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "ShoppingEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "ShowFirstRunExperience" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "BrowserAddProfileEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "EdgeShoppingAssistantEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $edgeRegPath -Name "HubsSidebarEnabled" -Type DWord -Value 0
            $services = "edgeupdate", "edgeupdatem"
            foreach ($svc in $services) {
                Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
                Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
            }
            Get-ScheduledTask | Where-Object { $_.TaskName -like "*EdgeUpdate*" } | Unregister-ScheduledTask -Confirm:$false -ErrorAction SilentlyContinue
            Write-Host "Edge has been debloated."
            $WPFa34.IsChecked = $false
        }
        if ( $WPFa35.IsChecked -eq $true ) {
            $braveRegPath = "HKLM:\SOFTWARE\Policies\BraveSoftware\Brave"
            Remove-ItemProperty -Path $braveRegPath -Name "MetricsReportingEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BackgroundModeEnabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "ShowFirstRunExperience" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BraveRewardsDisabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BraveVPNDisabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BraveNewsDisabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BraveWalletDisabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path $braveRegPath -Name "BraveAdsDisabled" -ErrorAction SilentlyContinue
            $services = "brave"
            foreach ($svc in $services) {
                Set-Service -Name $svc -StartupType Manual -ErrorAction SilentlyContinue
            }
            schtasks.exe /Create /TN "\BraveUpdateTaskMachineCore" /SC MINUTE /MO 1 /TR "\"C:\Program Files\BraveSoftware\Update\BraveUpdate.exe\" /c" /RU SYSTEM | Out-Null
            schtasks.exe /Create /TN "\BraveUpdateTaskMachineUA" /SC MINUTE /MO 1 /TR "\"C:\Program Files\BraveSoftware\Update\BraveUpdate.exe\" /ua /installsource scheduler" /RU SYSTEM | Out-Null
            Write-Host "Brave restored to default state."
            $WPFa35.IsChecked = $false
        }
        if ( $WPFa36.IsChecked -eq $true ) {
            $braveRegPath = "HKLM:\SOFTWARE\Policies\BraveSoftware\Brave"
            if (!(Test-Path $braveRegPath)) { New-Item -Path $braveRegPath -Force | Out-Null }
            Set-ItemProperty -Path $braveRegPath -Name "MetricsReportingEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $braveRegPath -Name "BackgroundModeEnabled" -Type DWord -Value 0
            Set-ItemProperty -Path $braveRegPath -Name "ShowFirstRunExperience" -Type DWord -Value 0
            Set-ItemProperty -Path $braveRegPath -Name "BraveRewardsDisabled" -Type DWord -Value 1
            Set-ItemProperty -Path $braveRegPath -Name "BraveVPNDisabled" -Type DWord -Value 1
            Set-ItemProperty -Path $braveRegPath -Name "BraveNewsDisabled" -Type DWord -Value 1
            Set-ItemProperty -Path $braveRegPath -Name "BraveWalletDisabled" -Type DWord -Value 1
            Set-ItemProperty -Path $braveRegPath -Name "BraveAdsDisabled" -Type DWord -Value 1
            $services = "brave"
            foreach ($svc in $services) {
                Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
                Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
            }
            Get-ScheduledTask | Where-Object { $_.TaskName -like "*BraveUpdate*" } | Unregister-ScheduledTask -Confirm:$false -ErrorAction SilentlyContinue
            Write-Host "Brave has been debloated."
            $WPFa36.IsChecked = $false
        }
        if ( $WPFa37.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableCocreator" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeFill" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableImageCreator" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeErase" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableRemoveBackground" -Value 1 -Type DWord
            Write-Host "Paint AI features disabled"
            $WPFa37.IsChecked = $false
        }
        if ( $WPFa38.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableCocreator" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeFill" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableImageCreator" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableGenerativeErase" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Paint" -Name "DisableRemoveBackground" -ErrorAction SilentlyContinue
            Write-Host "Paint AI features enabled"
            $WPFa38.IsChecked = $false
        }
        If ( $WPFa39.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\WindowsNotepad" -Name "DisableAIFeatures" -Value 1 -Type DWord
            Write-Host "Notepad AI features disabled"
            $WPFa39.IsChecked = $false
        }
        If ( $WPFa40.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\WindowsNotepad" -Name "DisableAIFeatures" -ErrorAction SilentlyContinue
            Write-Host "Notepad AI features enabled"
            $WPFa40.IsChecked = $false
        }
        If ( $WPFa41.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenOverlayEnabled" -Value 0 -Type DWord
            Write-Host "Lock screen fun facts and tips disabled"
            $WPFa41.IsChecked = $false
        }
        If ( $WPFa42.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenOverlayEnabled" -ErrorAction SilentlyContinue
            Write-Host "Lock screen fun facts and tips enabled"
            $WPFa42.IsChecked = $false
        }
        If ($WPFa43.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableSpotlightCollectionOnDesktop" -Value 1 -Type DWord
            Write-Host "Spotlight collection on desktop disabled"
            $WPFa43.IsChecked = $false
        }
        If ( $WPFa44.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableSpotlightCollectionOnDesktop" -ErrorAction SilentlyContinue
            Write-Host "Spotlight collection on desktop enabled"
            $WPFa44.IsChecked = $false
        }
        If ( $WPFa45.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -Value 1 -Type DWord
            Write-Host "AI Data Analysis disabled"
            $WPFa45.IsChecked = $false
        }
        If ( $WPFa46.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -ErrorAction SilentlyContinue
            Write-Host "AI Data Analysis enabled"
            $WPFa46.IsChecked = $false    
        }
        If ( $WPFa47.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "AllowRecallEnablement" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "TurnOffSavingSnapshots" -Value 1 -Type DWord
            Write-Host "AI recall disabled and snapshot saving turned off"
            $WPFa47.IsChecked = $false
        }
        If ( $WPFa48.IsChecked -eq $true ) {
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "AllowRecallEnablement" -ErrorAction SilentlyContinue
            Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Name "TurnOffSavingSnapshots" -ErrorAction SilentlyContinue
            Write-Host "AI recall and snapshot saving settings restored"
            $WPFa48.IsChecked = $false    
        }
        If ( $WPFa49.IsChecked -eq $true ) {
            $regPaths = @(
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications",
                "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Suggested",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility"
            )
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_IrisRecommendations" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SoftLandingEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353694Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353696Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications" -Name "EnableAccountNotifications" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Suggested" -Name "Enabled" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility" -Name "OptedIn" -Value 0 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_AccountNotifications" -Value 0 -Type DWord
            Write-Host "Windows suggestions and notifications disabled"
            $WPFa49.IsChecked = $false
        }
        If ( $WPFa50.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_IrisRecommendations" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SoftLandingEnabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353694Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353696Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SystemSettings\AccountNotifications" -Name "EnableAccountNotifications" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Suggested" -Name "Enabled" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Mobility" -Name "OptedIn" -Value 1 -Type DWord
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_AccountNotifications" -Value 1 -Type DWord
            Write-Host "Windows suggestions and notifications enabled"
            $WPFa50.IsChecked = $true
        }
        If ( $WPFa51.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisabledComponents" -Value 0 -Type DWord
            $WPFa51.IsChecked = $false
        }
        If ( $WPFa52.IsChecked -eq $true ) {
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisabledComponents" -Value 32 -Type DWord
            $WPFa52.IsChecked = $false
        }
        If ( $WPFa53.IsChecked -eq $true ) {
            $serviceName = "LMS"
            Stop-Service -Name $serviceName -Force -ErrorAction SilentlyContinue;
            Set-Service -Name $serviceName -StartupType Disabled -ErrorAction SilentlyContinue;
            sc.exe delete $serviceName;
            $lmsDriverPackages = Get-ChildItem -Path "C:\Windows\System32\DriverStore\FileRepository" -Recurse -Filter "lms.inf*";
            foreach ($package in $lmsDriverPackages) {
                pnputil /delete-driver $($package.Name) /uninstall /force;
            }
            if ($lmsDriverPackages.Count -eq 0) {
            } else {
            }
            $programFilesDirs = @("C:\Program Files", "C:\Program Files (x86)");
            $lmsFiles = @();
            foreach ($dir in $programFilesDirs) {
                $lmsFiles += Get-ChildItem -Path $dir -Recurse -Filter "LMS.exe" -ErrorAction SilentlyContinue;
            }
            foreach ($file in $lmsFiles) {
                & icacls $($file.FullName) /grant Administrators:F /T /C /Q;
                & takeown /F $($file.FullName) /A /R /D Y;
                Remove-Item $($file.FullName) -Force -ErrorAction SilentlyContinue;
            }
            if ($lmsFiles.Count -eq 0) {
            } else {
            }
            Write-Host 'Intel LMS vPro service has been disabled, removed, and blocked.';      
            $WPFa53.IsChecked = $false
        }
        If ( $WPFa54.IsChecked -eq $true ) {
            $serviceName = "LMS"
            $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
            if ($null -ne $service) {
                Set-Service -Name $serviceName -StartupType Automatic
                Start-Service -Name $serviceName
            } else {
                $intelDriverPath = "C:\Drivers\Intel_ME_LMS"
                if (Test-Path $intelDriverPath) {
                    pnputil /add-driver "$intelDriverPath\LMS.inf" /install
                } else {
                }
            }
            $lmsExe = "C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\LMS\LMS.exe"
            if (Test-Path $lmsExe) {
            } else {
            }
            Write-Host 'Intel LMS vPro service has been enabled';        
            $WPFa54.IsChecked = $false
        }                
        [System.Windows.MessageBox]::Show("All Done", "Application Tweaks", "OK", [System.Windows.MessageBoxImage]::Information)        
    })

    $WPFTab9P5.Add_Click({
            Import-Module BitsTransfer
            Start-BitsTransfer -Source "https://raw.githubusercontent.com/ShadowWhisperer/Remove-MS-Edge/refs/heads/main/Batch/Both.bat" -Destination Both.bat
            Start-Process Both.bat
            Write-Host "`nCredit: GitHub project by ShadowWhisperer - https://github.com/ShadowWhisperer" -ForegroundColor Cyan
    })

##########################################
##########################################
##########################################

##########################################
############## Repair PC #################
##########################################

    $WPFTab10P1.Add_Click({
        Start-Process "https://learn.microsoft.com/it-it/windows/powertoys/"
    })
    $WPFTab10P2.Add_Click({
        Start-Process "https://www.stardock.com/products/start11/"
    })
    $WPFTab10P3.Add_Click({
        Start-Process "https://github.com/Open-Shell/Open-Shell-Menu"
    })
    $WPFTab10P4.Add_Click({
        Start-Process "https://github.com/ramensoftware/windhawk"
    })
    $WPFTab10P5.Add_Click({
        Start-Process "https://github.com/ChrisAnd1998/TaskbarX"
    })
    $WPFTab10P6.Add_Click({
        Start-Process "https://winaerotweaker.com/"
    })
    $WPFTab10P7.Add_Click({
        Start-Process "https://www.voidtools.com/"
    })
    $WPFTab10P8.Add_Click({
        Start-Process "https://github.com/Flow-Launcher/Flow.Launcher"
    })
    $WPFTab10P9.Add_Click({
        Start-Process "https://github.com/files-community/Files"
    })
    $WPFTab10P10.Add_Click({
        Start-Process "https://www.stardock.com/products/fences/"
    })
    $WPFTab10P11.Add_Click({
        Start-Process "https://www.rainmeter.net/"
    })
    $WPFTab10P12.Add_Click({
        Start-Process "https://github.com/ThioJoe/Windows-Super-God-Mode"
    })
    $WPFTab10P13.Add_Click({
    Add-Type -AssemblyName PresentationFramework
    $xaml = @"
    <Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
            Title="Panel Control Shortcut" Height="660" Width="620" Background="#FF1A2733">
        <Grid>
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="300"/>
                    <ColumnDefinition Width="300"/>
                </Grid.ColumnDefinitions>
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
            </StackPanel>
            <StackPanel Margin="0,5,0,0" Grid.Column="1">
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
    $WPFTab10P14.Add_Click({
        Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k slmgr /dli}
    })
    $WPFTab10P15.Add_Click({
        Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus}
    })
    $WPFTab10P16.Add_Click({
        powercfg /batteryreport /output "C:\battery-report.html"
        Write-Host "You will find your report in C:\" 
            $WPFResult.ToArray()
        $WPFResult | % { $_ } | Out-Host
        $ButtonType = [System.Windows.MessageBoxButton]::OK
        $MessageboxTitle = "Result"
        $Messageboxbody = "Troverai il Report in C:\"
        $MessageIcon = [System.Windows.MessageBoxImage]::Information
        [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
    })
    $WPFTab10P17.Add_Click({
        New-Item -Path 'C:\Drivers' -ItemType Directory
        DISM.exe /Online /Export-Driver /Destination:C:\Drivers
        Write-Host "You will find your drivers in the C:\Drivers folder"
            $WPFResult.ToArray()
        $WPFResult | % { $_ } | Out-Host
        $ButtonType = [System.Windows.MessageBoxButton]::OK
        $MessageboxTitle = "Result"
        $Messageboxbody = "Troverai i tuoi driver nella cartella C:\Drivers"
        $MessageIcon = [System.Windows.MessageBoxImage]::Information
        [System.Windows.MessageBox]::Show($Messageboxbody,$MessageboxTitle,$ButtonType,$MessageIcon)
    })
    $WPFTab10P18.Add_Click({
        netsh winsock reset
        netsh int ip reset
        ipconfig /release
        ipconfig /renew
        ipconfig /flushdns
        ipconfig /release6
        ipconfig /renew6 *Ethernet*
        ipconfig /renew *Ethernet*
        netsh advfirewall reset
        $interface = "Ethernet"
        Disable-NetAdapter -Name $interface -Confirm:$false
        Start-Sleep -Seconds 3
        Enable-NetAdapter -Name $interface -Confirm:$false
        netsh interface ip delete arpcache
        Restart-Service -Name "Dnscache" -Force
        Clear-DnsClientCache
        netsh winhttp reset proxy
        $wifiAdapter = Get-NetAdapter -Name "Wi-Fi" -ErrorAction SilentlyContinue
        if ($wifiAdapter -and $wifiAdapter.Status -eq "Up") {
            Disable-NetAdapter -Name "Wi-Fi" -Confirm:$false
            Start-Sleep -Seconds 3
            Enable-NetAdapter -Name "Wi-Fi" -Confirm:$false
        }

        [System.Windows.MessageBox]::Show("Network reset completed successfully.", "Info", "OK", "Information")
    }) 
    $WPFTab10P19.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/AutoLogin.bat" -Destination AutoLogin.bat
        Start-Process AutoLogin.bat
        Write-Host "AutoLogin Added"
    })
    $WPFTab10P20.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/refs/heads/main/resources/add_user.bat" -Destination add_user.bat
        Start-Process add_user.bat
        Write-Host "User Added"
    })
    $WPFTab10P21.Add_Click({
        Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k dism.exe /online /cleanup-image /restorehealth} 
    })
    $WPFTab10P22.Add_Click({
        Start-Process -FilePath "C:\Windows\System32\cmd.exe" -verb runas -ArgumentList {/k sfc /scannow}   
    })
    $WPFTab10P23.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/Swap.bat" -Destination Swap.bat
        Start-Process Swap.bat
        Write-Host "Swap Options Opened"
    })
    $WPFTab10P24.Add_Click({
        Import-Module BitsTransfer
        Start-BitsTransfer -Source "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/ChangeOwner.bat" -Destination ChangeOwner.bat
        Start-Process ChangeOwner.bat
        Write-Host "Changed Owner"
    })
    $WPFTab10P25.Add_Click({
        Write-Host "`nCredit: GitHub project by lzw29107 - https://github.com/lzw29107" -ForegroundColor Cyan
        $url = "https://raw.githubusercontent.com/lzw29107/MediaCreationTool.bat/refs/heads/main/MediaCreationTool.bat"
        $output = "$env:TEMP\MediaCreationTool.bat"
        Import-Module BitsTransfer
        Start-BitsTransfer -Source $url -Destination $output -Description "Downloading MediaCreationTool.bat"
        Start-Process -FilePath $output
    })
    $WPFTab10P26.Add_Click({
        Write-Host "`nCredit: GitHub project by rcmaehl - https://github.com/rcmaehl/" -ForegroundColor Cyan
        $url = "https://github.com/rcmaehl/WhyNotWin11/releases/latest/download/WhyNotWin11.exe"
        $output = "$env:TEMP\WhyNotWin11.exe"
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing
        Start-Process -FilePath $output
    })

##########################################
##########################################
##########################################

$Form.ShowDialog() | out-null