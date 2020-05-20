vBulletin 5.4.0 Connect is available to download for all licensed customers. vBulletin Cloud customers will receive an email notification when their site is scheduled to be upgraded.

[h2]Sprite-Based Images.[/h2]
The sprite for most icons used in a vBulletin Style has been converted to the SVG Image Format and stored as a template in the Style System. 
Advantages of SVG
[list]
    [*]Vector Images - They should work equally well at different screen sizes without the need for multiple image files.
    [*]As a vBulletin Administrator, you can change the colors of the icons to match your Style using Style Variables.
    [*]Each image has a unique CSS ID to enable customization.
    [*]Since the SVG image format is XML, you can update them with any compatible SVG Editor..
    [*]Better handling of LTR and RTL icons.
[/list]

[b]New Templates[/b]
The SVG image sprites are stored in new templates. These templates are found within the Sprite Image template group. Additionally, a new CSS template has been added to hold customizations to the Sprite Image. It is called css_icon_sprite.css. It will be blank in newly created styles without a parent.

[b]New Style Variables[/b]
There are a total of 25 new Style Variables added to the system. These control the SVG Colors and are named after the color they represent in the default sprite. You can see these variables in "Icon Colors" variable group. When testing the changes to the colors of your sprite, you can load it by pointing your browser to:
[code]yourdomain/vbulletinpath/sprite.php?sprite=sprite_icons_general.svg&styleid=XX[/code]

XX would be the ID of your style. The style ID can be viewed by hovering over the style name in the Style Manager. It will be shown in the status bar of your browser. Since colors are controlled by CSS, a hard refresh in the browser will be needed to view them.

[h2]Style Sharing for vBulletin Cloud[/h2]
Styles with changes to the style variables and text-only templates can be imported into Cloud account once they are running vBulletin 5.4.0.

[b]Style Variable Group Export[/b]
When editing style variables, you can export a style variable group as a Style XML file. These can then be merged into other styles by importing the XML file. This functionality was added to allow the sharing of customizations to the SVG colors, buttons, modules, toolbars, etc...

[h2]Tabbed Navigation[/h2]
The way vBulletin chooses which tab to highlight is based on the URL used by the page. In previous versions, this only handled a few distinct URLs. Previously, tab highlighting didn't work on custom pages or "sub-pages" all the time. There can also be problems if you change the default page of your vBulletin Site.

The system has been updated to handle these issues. Now the system allows you to highlight tabs and their sub-navigation on custom pages. To do this, the URL of your pages should match these formats:
[list]
    [*] /custompage - highlights the tab assigned to this URL. The appropriate sub-navigation will appear as well.
    [*] /custompage/subpage - looks for a tab assigned to this URL. If one is not found, the system will highlight the tab assigned to the parent "/custompage." If one is found, it will highlight the tab and show the appropriate sub-navigation.
[/list]

The navigation system will also look for tabs that point to links external to your vBulletin installation. These tabs cannot have visible sub-navigation. 

[h2]Google reCAPTCHA[/h2]
Google has announced that reCAPTCHA version 1 will be shut down on March 31, 2018.  We encourage people who are still using it to upgrade to reCAPTCHA version 2 (https://www.google.com/reCAPTCHA/intro/) as soon as possible.  reCAPTCHA version 1 will be removed from vBulletin starting in the 5.4.0 release.

[h2]Group Channel Permissions[/h2]
Most Usergroup Permissions for Group Channels have been removed. These permission fields were in place for special handling and were carried over from vBulletin 4.X. Unfortunately, they allowed inappropriate behavior to be possible. These permissions will be handled by Channel Permissions. This change will provide consistent behavior with all channel types. Please review your Channel Permissions after upgrading your site. You can view Channel Permissions in the AdminCP under Channel Management -> Channel Permissions. 

Only two permissions remain under Usergroup -> Usergroup Permissions. These are "Can View Groups" and "Can create new discussions in Groups."

[h2]Other Issues[/h2]
[list]
    [*]Pagination has been fixed in blogs and notifications.
    [*]The photo tab in Forums and the Profile Media tab should have proper pagination again.
    [*]An option to turn off Facebook OpenGraph tags has been added to the system.
    [*]Post Edit History now works on PHP 7+
    [*]All resolved issues can be found here (http://tracker.vbulletin.com/secure/ReleaseNote.jspa?projectId=10091&version=11689)
[/list]

[h2]Unused Tables[/h2]
The following tables will be deleted from your database during the upgrade to 5.4.0:
[list]
    [*]action
    [*]apipost
    [*]block
    [*]blockconfig
    [*]blocktype
    [*]blog_userread
    [*]contentread
    [*]dbquery
[/list]    


[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.5.8

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

[h2]Current Version Support Schedule[/h2]
[list]
    [*]Active Version - 5.4.0
    [*]Security Patch - 5.3.4
    [*]Security Patch - 5.3.3
    [*]No Patch Release - 5.3.2 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4384410[/node]

If you find an issue with the software or wish to place a feature request please visit our [url=https://tracker.vbulletin.com]tracker[/url].

In order to receive support for your vBulletin Product please visit our [url=https://www.vbulletin.com/forum/]community forums[/url].