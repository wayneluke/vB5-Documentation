We're proud to announce the release of vBulletin 5.1.5. This is a maintenance release focused on resolving issues within the software. All together over 145 issues have been resolved in vBulletin 5.1.5. In addition to fixing outstanding issues, we've added a few new features and continue to update existing features.

[SIZE=14px][B]PHP Minimum Version[/B][/SIZE]
Due to changes in required third-party libraries, the minimum required version of vBulletin 5.1.5 and higher will be PHP 5.4.0. Also at this time, PHP 5.3.X has reached end of life and will no longer be updated. It is recommended to upgrade your servers to 5.4.0.

[SIZE=14px][B]Facebook Connect Updates[/B][/SIZE]
Facebook Connect in vBulletin 5.1.5 has been reworked and updated to the latest version of the Facebook API. As of December 31st 2014, Facebook will no longer accept Connect Apps under the old API. As of April 30th 2015, Facebook will no longer communicate with Facebook Connect implemented in versions of vBulletin prior to vBulletin 5.1.5. This update reworks how Facebook is integrated into vBulletin 5.1.5 completely down to the CSS in order to provide a better user experience across the board.

[SIZE=14px][B]User Mentions and Notifications.[/B][/SIZE]
New BBCode has been added to handle User Mentions in content using either the @name or . When using the @name style, you will be given a lookup list of usernames to choose from. [CENTER] [TABLE="border: 1, cellpadding: 6, width: 500"]
 	 		[TR]
 			[TD]Examples[/TD]
 			[TD] [/TD]
 		[/TR]
 		[TR]
 			[TD]Usage:[/TD]
 			[TD]@%username%[/TD]
 		[/TR]
 		[TR]
 			[TD]Example Usage:[/TD]
 			[TD]@"John Doe"
			@John Doe[/TD]
 		[/TR]
 		[TR]
 			[TD]Example Output:[/TD]
 			[TD]@[a href="#"]John Doe[/a]
			@[a href="#"]John[/a] Doe
			@[a href="#"]John Doe[/a][/TD]
 		[/TR]
 	 [/TABLE]
 [/CENTER]
 



[SIZE=14px][B]New Modules in vBulletin 5.1.5[/B][/SIZE]
vBulletin Connect 5.1.5 introduces two new modules that you can use on your pages. New installations also receive two new search modules placed on the Blog and Group pages to show your blog and group activity. I'll go over how to create these search modules on your pre-existing installation later.

[B]Content Slider Module[/B]
This module was requested a lot by vBulletin 5 customers. By default it allows you to show featured content anywhere on your site in an image slideshow format. Currently this is very easy to setup with few options but those can be expanded in the future if there is demand.

First we need to feature some content. Go to an article, topic or blog entry and you can feature content by using the inline moderation tools. Select the Topic menu and click on the "Feature Topic". See the screenshot below.

Once you have a few topics featured enter Site Builder and edit the page where you want to add your Content Slider. Drag the content slider to the location you want to place it on your page at. We recommend a wide or 100% column. Once placed, it should look like the image below:

Advanced Settings
You can configure this using a JSON Search String. These can be created by typing out the JSON string or using a search module to configure your options and then clicking the advanced tab to get the string. We hope to improve the functionality for this module in the future.

[B]Statistics Module[/B]
The statistics module from vBulletin 4 and earlier has been recreated to fit in with Site Builder. You can place this module wherever modules can be placed. The statistics module does not have any specific options at this time except for the ability to give it a custom title. It does share the hide title option with all other modules.

[B]New Modules and Upgraded vBulletin Installations.[/B]
Upgraded installations may not see these new modules immediately. Here are the instructions to add them to your pages. [LIST=1]
[*]Click "Edit Site" in the top right corner to open the Site Builder.
[*]Click "Edit Page".
[*]Click the Module tab of the Edit Page interface.
[*]Find the module you want and drag it to the screen.
[*]Drop it where you want to show.
[*]To configure the module, click the "Edit Module" icon on the module itself. It looks like an old-fashioned pen.
[/LIST] 
[B]My Groups and My Blogs[/B]
With the default installation, two new modules are added. One for blogs and one for groups. They are designed to show the blogs and groups that you own. There are instructions on how to recreate these modules for upgrades below. The modules themselves are simply searches built using JSON search strings. However they use new filters made available in vBulletin 5.1.5 to achieve their affect.


To create these modules on existing forums that are upgraded, follow these steps:
1) Using Site Builder edit the page you want to place the modules on. By design, these would be either the Blog or Group pages.
2) Add a Search Module.
3) Edit the module and click the "Switch to Advanced Editor" link at the top.
4) Choose your options:
Blog:
Title: My Blogs
Results: 5
JSON: {"my_channels":{"type":"blog"},"sort":{"lastcontent":"desc"}}

Groups:
Title: My Groups
Results: 5
JSON: {"my_channels":{"type":"group"},"sort":{"lastcontent":"desc"}}

5) Save the module and then save the page.

[SIZE=14px][B]New Style Variables[/B][/SIZE]
In order to accomodate these new themes, 26 new stylevars have been added. These can be used to create your own themes or styles. You can find a complete list of style variables in vBulletin 5.1.5 can be found here: [URL]http://www.vbulletin.com/forum/stylevars[/URL]

[SIZE=14px][B]vBulletin Cloud[/B][/SIZE]
Upgrades on vBulletin Cloud sites will begin later this week. If you are a vBulletin Cloud customer, you will receive an email before the upgrade starts and another after it is completed.

[B][SIZE=14px]Security Patches[/SIZE][/B]
All previous security patches have been integrated into vBulletin Connect 5.1.5

[SIZE=16px][B]Discussion[/B][/SIZE]
Customers can discuss this release here: http://www.vbulletin.com/forum/node/4223536

Post #2 - Gallery Post
New Themes
We've added six new themes. I have included screenshots of them in this post.

Post #3 - JIRA Release Notes

Post #4 - Updated Templates