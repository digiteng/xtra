# xtraEvent plugin by digiteng

Poster, background, banner, info support for enigma2 stbs...



This plugin has been created to get more information and images(poster,background,banner,info...) about events.
source data are obtained from public websites(tmdb, tvdb, omdb, maze ...).
this plugin is open source and free...
Shareable changes can be made by protecting non-commercial and "digiteng" rights...

-----------------------------------------------------------------------------------------------------------------------------------------------------

## for v2.0

-----------------------------------------------------------------------------------------------------------------------------------------------------

plug-in features;
- Event sources can be downloaded in three different ways ... directly, manually, by timer ...
- Event mode can be selected as "current channel" and "bouquets".
- The number of events and how many events belonging to the channel can be selected.
- the search language can be set ...
- Sources can be selected with "IMAGE SOURCE".
- image size can be adjusted ...
- Any activity can be searched by "manual source" ... you can select any desired from among many posters..etc ...
- With "manual source", poster and background can be searched and selected for "movie player" and "EMC".
- ...


usage and recommendations;
- when you first open the plugin, first set the download location ... quit and reopen the plugin ...
- /path/xtraEvent/poster (banner, backdrop, infos, EMC, mSearch...)
- You can enter your api key for tmdb, tvdb .... etc from the plugin ... this will be better in terms of search traffic ...
even if you do not enter the api key, it will work with internal keys ...
- For movie player and emc set the background size to >1280x720 ... when you press append (yellow) the size will be set to 1280x720 and the black filter will be added ...
It will be saved in folder... /path/xtraEvent/EMC
- manual search search temporary folder /path/xtraEvent/mSearch
- codes for the skin can be found inside the render-convert files and in /usr/share/enigma2/xtra/allScreens
- Label, pixmap, picon can be used by skinner for no-picture ... with "zPosition"...
for example, picons are used in skin_ChannelSelection_5.xml skinpart...

recommended;
- set "bouquets" for main use and set the timer(1-23 hour) ... open the sources ... press "search" green button ...
select your bouquet from the popup window ... save (green) ... when you get to the home screen "download" ( yellow) (not recommended) ...
exit the plug and restart the gui ...
search and download will be done in the background at the beginning and the times you set ...
at this time, you can use stb as you wish ... You can see the status with / tmp / up_report ...

## code change by screen
for infobar, SecondInfoBar...

source="session.Event_Now"

source="session.Event_Next"

Code:
```ruby
<widget source="session.Event_Now" render="xtraPoster" delayPic="200" position="0,0" size="185,278" zPosition="1" />
```
for ch list,
source="ServiceEvent"

for epg, EventView,
source="Event"

for movie player, emc,
source="Service"

With delayPic = "500" you can set the delay to show the poster...etc... in render...
increase latency on low equipped stb for performance...ch list, epg...


nextEvent="0" current program

nextEvent="1" next program
...

usedImage="backdrop" banner, poster

Code:

```ruby
<widget source="ServiceEvent" render="xtraNextEvents" nextEvent="0" usedImage="backdrop" delayPic="500" position="700,700" size="300,169" zPosition="2" borderWidth="2" borderColor="key_color" />
<widget source="ServiceEvent" render="xtraNextEvents" nextEvent="1" usedImage="backdrop" delayPic="500" position="1000,700" size="300,169" zPosition="2" borderWidth="2" borderColor="key_color" />
<widget source="ServiceEvent" render="xtraNextEvents" nextEvent="2" usedImage="backdrop" delayPic="500" position="1300,700" size="300,169" zPosition="2" borderWidth="2" borderColor="key_color" />
<widget source="ServiceEvent" render="xtraNextEvents" nextEvent="3" usedImage="backdrop" delayPic="500" position="1600,700" size="300,169" zPosition="2" borderWidth="2" borderColor="key_color" />
```

snglEvent="1" next program

snglEvent="2" two next program

Code:
```ruby
<widget source="ServiceEvent" render="xtraNxtEvnt" nxtEvents="" snglEvent="1" font="Regular; 22" position="750,885" size="300,100" zPosition="5" backgroundColor="background" transparent="1" />
<widget source="ServiceEvent" render="xtraNxtEvnt" nxtEvents="" snglEvent="2" font="Regular; 22" position="1170,885" size="300,100" zPosition="5" backgroundColor="background" transparent="1" />
<widget source="ServiceEvent" render="xtraNxtEvnt" nxtEvents="" snglEvent="3" font="Regular; 22" position="1590,885" size="300,100" zPosition="5" backgroundColor="background" transparent="1" />
```

nxtEvents="4" 4 next program

Code:
```ruby
<widget source="ServiceEvent" render="xtraNxtEvnt" nxtEvents="4" snglEvent="" font="Regular; 22" position="750,885" size="300,100" zPosition="5" backgroundColor="background" transparent="1"
```

![1_0_1_3D_7_85_C00000_0_0_0 (1)](https://user-images.githubusercontent.com/28948149/138914235-5fbe22f5-317a-48d6-8f5b-9b46e13419d0.jpg)

![1_0_1_3D_7_85_C00000_0_0_0 (2)](https://user-images.githubusercontent.com/28948149/138914490-1719d9d5-d2a5-464d-9dda-fcd3d2a1efe7.jpg)

![1_0_1_3D_7_85_C00000_0_0_0](https://user-images.githubusercontent.com/28948149/138914570-55cf7cfe-7c3a-4b84-9e75-dec43a950e20.jpg)
