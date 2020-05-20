vBulletin 5.2.4 is now available to all customers. This version contains fixes and updates to over 125 issues in the software.

[h2]System Requirements[/h2]
Minimum PHP Version: 5.5.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 7.0.0 or higher
Recommended MySQL Version: 5.6.0 or higher

[h2]New Feature: Custom Image Resizing[/h2]
When images are uploaded to the server, vBulletin will resize them to predetermined sizes set under Settings -> Options -> Message Attachment Options. While there are five different sizes (icon, thumbnail, small, medium, and large), this may not fit all content. In 5.2.4, the editor has been updated to allow custom resizing of images. When you're editing content with an embedded image, you will notice a handle that allows the image to be resized in the lower right corner after selecting it. You can resize the image to fit your needs and vBulletin will use the closest image size to keep bandwidth low. Fine-tuning of the image display will be handled by the CSS assigned to the image. The values for this change are stored as JSON within the BBCode for the image itself. The end user should not have to modify this JSON at any time.

[h2]New Feature: Avatars shown in @mentions[/h2]
A new option has been added to show the user's avatar before their name when a @mention or [user] bbcode is placed in any content. This option is enabled by default. If desired, you can disable this at Settings -> Options -> BB Code Settings. 

[b]Display Avatars Next to @User Mentions[/b]
If set to "Yes", user avatars will be displayed next to @user mentions or instances of the [USER] bbcode in posts.

[h2]Updated Feature: reCAPTCHA v2[/h2]
reCAPTCHA version 2 has been added to vBulletin. If you use reCAPTCHA, it is recommended that you upgrade to this version as soon as possible. It provides a better user experience. reCAPTCHA version 1 will be removed from vBulletin 5 in the 5.2.6 release and is considered deprecated at this time. 

If you don't have a reCAPTCHA key, you can obtain one here: https://www.google.com/recaptcha/intro/index.html  

[h2]vBulletin Messenger[/h2]
Response to this feature has been overwhelmingly positive. We've added enhancements to the functionality. The Messages menu in the header of every page will allow you to start a new message. In addition, we have created two new options to handle the flow of replies to Messenger chats. You can find these under Settings -> Options -> Private Messaging Options.

The first option will allow you to change the flood check value for creating private messages, which Messenger is based on. When upgrading, this will be set to the current Flood Check value (default: 30 seconds) You can lower or increase this to fit your needs. The second option allows you to exempt private message replies from the flood check. This will allow smoother chatting amongst multiple recipients.

[b]Minimum Time Between Private Messages[/b]
You may prevent your users from flooding your private message center by activating this feature. By enabling floodcheck, you disallow users from making another private message within a given time span of their last message. In other words, if you set a floodcheck time span of 30 seconds, a user may not create a private message topic or reply within 30 seconds of making his last message. Administrators and moderators are exempt from floodcheck. Recommended: 30 seconds. Type the number of seconds only. Enter 0 to disable this function.

[b]Skip floodcheck for PM Replies[/b]
If enabled, the floodcheck is only applied to creating new private message threads. Replying to existing private message topics will be exempt from the floodcheck. This improves the user experience of vB Messenger as users will be able to create replies to each other very quickly in an existing private message thread.

[h2]Cookie Updates[/h2]
A number of cookie related issues have been fixed: 
[list]
[*]All session cookies have been updated to follow session only rules.
[*]The expiry of "Remember Me" has been increased to 365 days. This excludes Facebook which is still 30 days. 
[*]Updated HTTPonly cookies to work more consistently.
[*]ForumRunner will now properly delete cookies when the user logs out.
[*]"Remember Me" cookies will no longer be overwritten by session timeouts.
[/list]

[h2]Responsive Improvements[/h2]
New dropdown menu components are now used throughout the system to bring consistency and increase usability in responsive modes. In addition to this, some buttons were not applying the proper CSS. These have been updated.

Finally, when viewing an article section, the layout of articles should adapt to the screen size better. On devices with small screens, they will show as one column regardless of the display columns setting. This improves the usability of the article channels in vBulletin 5.

[h2]Topics[/h2]
The "Mark Channels Read" link has been removed from the Forum sub-navigation on new installs. This link has proved problematic and hasn't worked consistently. A new "Mark Channels Read" link has been added to the bottom of the Forum List on the Forum page. Individual forums have their own link at the bottom of the page. The original sub-navigation link will remain on upgraded sites.

Topic Preview has been updated. This is to prevent a double-click requirement that some individuals experienced. Entering topics should only require a single click of the mouse.

[h2]PHP 5.4.X Support[/h2]
As announced with the release of 5.2.3, PHP 5.4.0 support is now deprecated. 

[h2]Database Cleanup[/h2]
If you upgraded from an older version of vBulletin, there are a number of tables that are considered deprecated and are no longer used in vBulletin 5 Connect. These tables may contain a considerable amount of data and increase the size of your database storage. In order to streamline the database, we are working to remove these unused tables. The tables removed in this version are:
[list]
    [*]forum
    [*]forumread
    [*]groupmessage
    [*]groupmessage_hash
    [*]groupread
    [*]navigation
    [*]plugin
    [*]route
    [*]socialgroup
    [*]socialgroupcategory
    [*]socialgroupicon
    [*]socialgroupmember
    [*]subscribeforum
    [*]subscribethread
    [*]subscribegroup
[/list]

Once these tables are deleted, the information will be gone forever. We suggest that you make a backup of them if you feel you might need the data in the future for some other application.

Discussion
You may discuss this release here: [node]4351805[/node]

Current Version Support Schedule:
[list]
	[*]Active Version - 5.2.4
	[*]Security Patch - 5.2.3
	[*]Security Patch - 5.2.2
	[*]No Patch Release - 5.2.1 or earlier.
[/list]