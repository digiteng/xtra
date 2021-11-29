# xtraEvent plugin by digiteng

Poster, background, banner, info support for enigma2 stbs...

This plugin has been created to get more information and images(poster,background,banner,info...) about events.
source data are obtained from public websites(tmdb, tvdb, omdb, maze ...).
this plugin is open source and free...
Shareable changes can be made by protecting non-commercial and "digiteng" rights...

-----------------------------------------------------------------------------------------------------------------------------------------------------

## v3.x
11.2021
-----------------------------------------------------------------------------------------------------------------------------------------------------
![xtraplugin1](https://user-images.githubusercontent.com/28948149/142732545-3d41a0d2-0b2c-4aad-92ee-75f882206ca8.jpg)

![1_0_1_445D_453_1_C00000_0_0_0 (1)](https://user-images.githubusercontent.com/28948149/142732560-fe916952-3d12-4736-90b4-20cc23da4649.jpg)


## code change by screen
for infobar, SecondInfoBar...

source="session.Event_Now"

source="session.Event_Next"

Code:
```ruby
<widget source="session.Event_Now" render="xtraPoster" position="0,0" size="185,278" zPosition="1" />
```
for ch list,
source="ServiceEvent"

for epg, EventView,
source="Event"

for movie player, emc,
source="Service"

...

usedImage="backdrop" banner, poster

Code:

```ruby
<!-- xtraEvent plugin -->

<!-- backdrops -->
<widget source="ServiceEvent" render="xtraBackdrop" position="1178,111" size="450,255" alphatest="blend" zPosition="2" borderWidth="3" borderColor="grey" />
<widget source="ServiceEvent" render="xtraBackdropList" mode="trio" position="980,105" size="920,863" backgroundColor="background" zPosition="99" transparent="1" />
<!-- parental rating -->
<widget source="ServiceEvent" render="xtraParental" position="1728,189" size="60,60" alphatest="blend" zPosition="9" transparent="1" />
<!-- event info -->
<widget source="ServiceEvent" render="Label" position="990,383" size="900,45" font="Regular; 33" halign="center" transparent="1" zPosition="2" backgroundColor="background" valign="center">
	<convert type="xtraInfo">Compact</convert>
</widget>
<widget source="ServiceEvent" render="Label" position="965,285" size="195,45" font="Regular; 33" halign="center" transparent="1" zPosition="2" backgroundColor="background" valign="center">
	<convert type="xtraInfo">imdbRatingSimple</convert>
</widget>
<widget source="ServiceEvent" render="RunningText" options="movetype=running,startdelay=5000,steptime=60,direction=top,startpoint=0,wrap=1,always=0,repeat=2,oneshot=1" size="900,300" position="990,434" font="Regular; 30" halign="left" transparent="1" zPosition="2" backgroundColor="background" valign="top">
	<convert type="xtraInfo">Director,Writer,Actors,Description</convert>
</widget>
<!-- ... -->
```
![preview_skin_ChannelSelection-xtra-1](https://user-images.githubusercontent.com/28948149/142732458-131f0ab8-af2e-4bc4-a6d1-08803c2d9338.png)

***

Code:
```ruby
    <!-- xtraEvent plugin -->
    <!-- full -->
    <widget source="ServiceEvent" render="xtraBackdropList2" position="980,105" size="920,863" backgroundColor="background" zPosition="99" transparent="1" />
    <!-- ... -->
```

![preview_skin_ChannelSelection-xtra-1b](https://user-images.githubusercontent.com/28948149/142732477-4043d81f-e5f4-4284-a531-675c65e02366.png)

***

Code:
```ruby
		<!-- xtraEvent plugin -->
		
		<!-- backdrops -->
		<widget source="ServiceEvent" render="xtraBackdrop" position="990,113" size="270,150" alphatest="blend" zPosition="2" borderWidth="3" borderColor="grey" />
		<widget source="ServiceEvent" render="xtraBackdropList" mode="single" position="990,780" size="900,195" backgroundColor="background" zPosition="99" />
		<!-- parental rating -->
		<widget source="ServiceEvent" render="xtraParental" position="1215,218" size="45,45" alphatest="blend" zPosition="9" transparent="1" />
		<!-- imdb rating star progress -->
		<ePixmap pixmap="xtra/star_b.png" position="990,278" size="200,20" alphatest="blend" zPosition="2" transparent="1" />
		<widget source="ServiceEvent" render="Progress" pixmap="xtra/star.png" position="990,278" size="200,20" alphatest="blend" transparent="1" zPosition="2" backgroundColor="background">
			<convert type="xtraInfo">imdbRatingValue</convert>
		</widget>

		<!-- event info -->
		<widget source="ServiceEvent" render="Label" position="1283,113" size="600,240" font="Regular; 26" halign="left" transparent="1" zPosition="2" backgroundColor="background" valign="top">
			<convert type="xtraInfo">Title,Year,Rated,Genre,Type,Country,Duration,SE</convert>
		</widget>
		<widget source="ServiceEvent" render="Label" position="990,308" size="270,45" font="Regular; 30" halign="left" transparent="1" zPosition="2" backgroundColor="background" valign="center">
			<convert type="xtraInfo">imdbRating</convert>
		</widget>
		<widget source="ServiceEvent" render="RunningText" options="movetype=running,startdelay=5000,steptime=60,direction=top,startpoint=0,wrap=1,always=0,repeat=2,oneshot=1" size="900,400" position="990,374" font="Regular; 30" halign="left" transparent="1" zPosition="2" backgroundColor="background" valign="top">
			<convert type="xtraInfo">Director,Writer,Actors,Description</convert>
		</widget>
		<!-- ... -->
```
![preview_skin_ChannelSelection-xtra-3](https://user-images.githubusercontent.com/28948149/142732518-a0847214-1ded-4502-9761-a5a232c0abc5.png)








