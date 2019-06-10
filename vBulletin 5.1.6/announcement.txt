We're proud to announce the release of vBulletin 5.1.5.  All together over 80 issues have been resolved in vBulletin 5.1.6.  While most of these issues are bug fixes, there are a few enhancements to the software.

[warning]It is not recommended to upgrade production sites to Alpha or Beta level software. Doing so may result in data loss on subsequent updates[/warning]

[SIZE=14px][B]Lightbox Improvements[/B][/SIZE]
The lightbox for Gallery posts has been improved. The overall layout has been improved with better control placement. This has allowed a larger window and better image display. Clicking or tapping on the image will show it full size in the same browser tab.

[SIZE=14px][B]Notification Improvements[/B][/SIZE]
Notifications Refactor 5.1.6
In order to handle some performance issues related to posting, the notifications subsystem has been refactored. When vBulletin 5 was originally developed, the notifications system was built on top of the private message system. That was built on the node system. This created a lot of overhead that was not needed and impacted performance. To resolve this, we have refactored the notifications system and separated it completely from Private Messages and the Node system. This not only allows us to improve performance when posting but allows us to expand the Notifications system in the future. The current refactor is to replace the existing functionality with performance in mind.

New Tables:
notification
notificationcategory
notificationtype

Known Issues:
Notifications created prior to the vBulletin 5.1.6 Alpha upgrade may not work. Upgrade steps will be added to resolve this. 
Read Marking of notifications has not been improved. This is being worked on in 5.1.7.

Discuss this release here: http://www.vbulletin.com/forum/node/4294968

[warning]It is not recommended to upgrade production sites to Alpha or Beta level software. Doing so may result in data loss on subsequent updates[/warning]

http://www.vbulletin.com/forum/forum/node/4294999