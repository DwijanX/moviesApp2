Zaphkiel
zaphkiel7
Online

Ogreaggressive — 12/22/2023 2:22 PM
no quiero decir en voz alta
porque siguen cerca
pero entro mi tia
a mi cuarto
y vio
el poster
xd
no
Zaphkiel — 12/22/2023 2:25 PM
props.navigation.dispatch(
        CommonActions.reset({
          index: 0,
          routes: [{ name: "SignIn" }],
        })
      );
Zaphkiel — 12/22/2023 11:05 PM
Image
Ogreaggressive — 12/22/2023 11:06 PM
Image
Zaphkiel — 12/23/2023 1:49 AM
const FirestoreTime = Item["Fecha"];
      const displayDate = new Date(
        FirestoreTime.seconds * 1000 + FirestoreTime.nanoseconds / 1000000
      ).toDateString();
Zaphkiel — 12/26/2023 6:46 PM
Image
Zaphkiel — 01/02/2024 12:36 PM
como agrego criterios
Zaphkiel — 01/11/2024 11:11 PM
function getMonthName(monthNumber: number) {
  const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  return months[monthNumber - 1];
}
function getMonthString(currentMonth = 0) {
  const currentDate = new Date();

  const month = currentDate.getMonth() + 1 + currentMonth;
  const year = currentDate.getFullYear();

  const formattedString = ${getMonthName(month)}_${year};

  return formattedString;
}
Ogreaggressive — 01/14/2024 8:12 PM
const currentTotalAccesses = partner.monthAccesses[monthKey][tier];
Ogreaggressive — 01/22/2024 4:31 PM
show gaim
Zaphkiel — 01/27/2024 7:08 PM
018d4d2e-b063-8e8f-a79a-975278b8342d
Image
Ogreaggressive — 01/27/2024 7:09 PM
y los otros 2?
Zaphkiel — 02/01/2024 7:10 PM
ThomasTheThumpEngine
Maxwell_ScrapItem
Zaphkiel — 02/04/2024 7:21 PM
u there?
Ogreaggressive — 02/04/2024 9:37 PM
Image
Ogreaggressive — 02/06/2024 7:58 PM
https://discord.gg/TFRch9YU
Zaphkiel — 02/10/2024 7:51 PM
Scopophobia
Zaphkiel — 02/13/2024 4:39 PM
https://outplayed.tv/media/RdXMo2/lol-malphite-ultimate-kill
Ultimate #League of Legends | Captured by #Outplayed
Zaphkiel — 02/20/2024 9:39 PM
018dc951-304e-0150-f2ef-3d7c2684cc74
Zaphkiel — 02/29/2024 9:49 PM
juguemos lol cuando acabes?
o gay
Ogreaggressive — 02/29/2024 9:51 PM
vamo a ver 2 caps mas creo
sino te aviso
Zaphkiel — 02/29/2024 9:51 PM
kay
Ogreaggressive — 02/29/2024 9:54 PM
intra
mentira
Zaphkiel — 03/04/2024 9:44 AM
<uses-feature android:name="android.hardware.camera" />
Ogreaggressive — 03/04/2024 10:00 AM
if (chooserIntent.resolveActivity(activity.getPackageManager()) != null)
Zaphkiel — 03/04/2024 10:22 AM
https://support.microsoft.com/en-gb/windows/screen-mirroring-and-projecting-to-your-pc-or-wireless-display-5af9f371-c704-1c7f-8f0d-fa607551d09c
Screen mirroring and projecting to your PC or wireless display - Mi...
Learn how to screen mirror or project content from one device to another.
Zaphkiel — 03/05/2024 7:34 PM
Image
Ogreaggressive — 03/05/2024 7:36 PM
Image
Image
Ogreaggressive — 03/12/2024 11:35 AM
Image
Zaphkiel — 03/25/2024 8:12 PM
Image
Ogreaggressive — 03/29/2024 8:44 PM
<code>
</code>
Zaphkiel — 03/29/2024 11:18 PM
zaphkielwar
contra warcra
Zaphkiel — Yesterday at 10:12 PM
Image
Ogreaggressive — Today at 7:47 AM
'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=fa3e844ce31744388e07fa47c7c5d8c3'
Ogreaggressive — Today at 8:15 AM
import 'package:flutter/material.dart';

class MyObject {
  final String name;
  final int age;

  MyObject({required this.name, required this.age});
}


class HomePage extends StatelessWidget {
  final myObject = MyObject(name: 'John Doe', age: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(context);
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${myObject.name}'),
              Text('Age: ${myObject.age}'),
            ],
          ),
        );
      },
    );
  }
}
﻿
Ogreaggressive
ogreaggressive