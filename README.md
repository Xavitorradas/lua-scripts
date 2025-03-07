# Lua-scripts

The goal for this repo is to have a central place to share example Lua scripts, host any 'new' scripts, and to document where to find Lua scripts that already exist, as well as any tips or tricks related to getting started with them.

List of Lua-scripts:
## [ExpressLRS](https://www.expresslrs.org/2.0/quick-start/transmitters/lua-howto/)
LUA configurator for ExpressLRS hardware<br/>
<img src="https://www.expresslrs.org/2.0/assets/images/lua3.jpg" width="250"></a>
<img src="https://www.expresslrs.org/2.0/assets/images/lua/config-bw.png" width="250"></a>

## [Yaapu telemetry widget](https://github.com/yaapu/FrskyTelemetryScript)
ArduPilot LUA telemetry script for color and B&W. For color screen radios, use [rotorman's fork](https://github.com/rotorman/FrskyTelemetryScript/tree/dev/HORUS/SOURCES/SRC) instead, which has EdgeTX color fixes, and support for [OlliW MavSDK](http://www.olliw.eu/2020/olliwtelem/) ([EdgeTX PR #150](https://github.com/EdgeTX/edgetx/pull/150))<br/>
<a href="https://github.com/yaapu/FrskyTelemetryScript/raw/master/HORUS/IMAGES/x10.png" target="_blank" title="Click for larger version"><img src="https://github.com/yaapu/FrskyTelemetryScript/raw/master/HORUS/IMAGES/x10.png" width="250"></a>
<img src="https://raw.githubusercontent.com/yaapu/FrskyTelemetryScript/master/TARANIS/IMAGES/x9d.png" width="212"></a>
<img src="https://raw.githubusercontent.com/yaapu/FrskyTelemetryScript/master/TARANIS/IMAGES/x7.png" width="128"></a>

## [Yaapu Horus Mapping Widget for iNAV/Betaflight](https://github.com/yaapu/HorusMappingWidget)
Offline GPS Mapping Widget for Horus and T16 radios. It supports Ardupilot, iNAV, Betaflight, Crossfire and whatever FC or firmware that can send GPS info to OpenTX.
<br/>Presently use [rotorman's fork](https://github.com/rotorman/HorusMappingWidget/tree/etx-colors/HORUS/SOURCES/SRC) instead, which has EdgeTX color fixes.
<br/><img src="https://user-images.githubusercontent.com/30294218/76712734-946a6500-671b-11ea-9fbc-6c779cf4d0b5.png" width="250"></a>

## [GPS widget](https://github.com/moschotto/OpenTX_GPS_Telemetry)
GPS Telemetry Widget (B&W & Color). Shows total distance traveled, distance from home, as well as both home and last seen telemetry positions. Also logs to file, and has a log viewer so you don't have to worry about losing the coordinates if you turn the transmitter off.</br>
<img src="https://raw.githubusercontent.com/moschotto/OpenTX_GPS_Telemetry/main/media/description.png" width="250"></a>
<img src="https://github.com/moschotto/OpenTX_GPS_Telemetry/blob/main/media/x9_GPS_screen.PNG" width="350"></a>

## [Switch2 widget](https://www.rcgroups.com/forums/showpost.php?p=47009445&postcount=3793)
Widget that shows switch positions with customisable icons. Shows all switches with different icons for every switch position.</br>
<img src="https://static.rcgroups.net/forums/attachments/5/9/3/7/9/7/a14905909-20-screenshot_tx16s_21-04-25_20-19-54.png" width="250"></a>
<img src="https://static.rcgroups.net/forums/attachments/5/9/3/7/9/7/a14905913-151-screenshot_tx16s_21-04-25_20-19-25.png" width="250"></a>

## [Multi Protocol Module](https://github.com/pascallanger/DIY-Multiprotocol-TX-Module/tree/master/Lua_scripts)
Scripts to complement the Multi Protocol Module, such as allowing you to configure certain aspects of the module, automacitally name channels, do DSM forward programming, as well as other protocol specific tasks.</br>
<img src="https://camo.githubusercontent.com/dfaff56a2701fde5d8b70af711536a7f59234ab0dc600f8f7a67661ff6cef215/68747470733a2f2f696d672e796f75747562652e636f6d2f76692f6c47794356326b707148552f302e6a7067" width="250"></a>
<img src="https://camo.githubusercontent.com/d1197777b39f854c1c87a3a3220f03ea750bf095b49b90c61fe0ede65a124d80/68747470733a2f2f696d672e796f75747562652e636f6d2f76692f4c353861795875657779412f302e6a7067" width="250"></a>
<img src="https://camo.githubusercontent.com/86dd3c9e3976aa9224378573bdddd163db07b062964a925399fff2e41eba154a/68747470733a2f2f696d672e796f75747562652e636f6d2f76692f736a49614477356a396e452f302e6a7067" width="250"></a>

## [Betaflight LUA Script](https://github.com/betaflight/betaflight-tx-lua-scripts)
The Betaflight LUA script allows you to change flight controller settings on your radio, such as PID, rates, VTX channels and power, and many more.<br/>
<img src="https://oscarliang.com/ctt/uploads/2021/07/betaflight-lua-script-config-home-menu-screen-options.jpg" width="250"></a>

## [INAV Lua Telemetry Flight Status](https://github.com/iNavFlight/OpenTX-Telemetry-Widget)
Shows you telementry and flight status information. Supports radios with color and black and white screens.<br/>
<img  src="https://github.com/teckel12/LuaTelemetry/blob/master/assets/iNavHorus.png" width="250"></a>
<img src="https://github.com/teckel12/LuaTelemetry/blob/master/assets/iNavQX7.png" width="128"></a>

## [FM2M ToolBox](http://fm2m.jimb40.com/ToolBox.html)
Feature rich FM2M ToolBox is LUA App focusing on BetaFlight users. Provides dashboard with telemetry overview for all major RC Links,  custom alerts , VTx info and much more. Supports radios with color and black and white screens.<br/>
<img src="http://fm2m.jimb40.com/pub/FM2M_ToolBox073_db.png" width="250"></a>
<img src="http://fm2m.jimb40.com/pub/FM2M_ToolBox073_cfg.png" width="250"></a>
<img src="http://fm2m.jimb40.com/pub/FM2M_ToolBox073_vtx.png" width="250"></a>

## [TBS Agent Lite](https://www.team-blacksheep.com/products/prod:agentx)
LUA configurator for numerous TBS products. Use this instead of Crossfire lua.<br/>
<img src="http://fm2m.jimb40.com/assets/images/tbs-agent-lite-480x272.png" width="250"></a>

## [Show It All](https://rc-soar.com/opentx/lua/showitall/index.htm)
ShowItAll displays various information in a single pane.<br/>
<img src="https://rc-soar.com/opentx/lua/showitall/sia.png" width="250"></a>
