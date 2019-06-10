We are pleased to announce the release of the latest version of vBulletin, v5.2.3. This release contains significant new functionality. Most importantly, we are launching the software's new chat capability, vBulletin Messenger. This new function provides a highly streamlined way for users to communicate with one another. Users will be able to use quick-loading chat windows to have near real-time conversations with others in your community. These messages can include images, emoticons, attachments and richtext. You can enable multiple users is individual chats, based on your private messenger permissions. vB Messenger is turned off by default. 

In addition to vBulletin Messenger, this version contains fixes and updates to over 150 issues in the software.

[h2]System Requirements[/h2]
Minimum PHP Version: 5.4.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 5.6.0 or higher
Recommended MySQL Version: 5.6.0 or higher

[h2]New Feature: vBulletin Messenger[/h2]
The Private Message system has been enhanced to provide an chat feature for instant messaging within vBulletin. This will allow your users participate in active chats using a new windowed interface. Messenger conversations can contain images, smilies/emoticons, attachments and rich-text. vBulletin will automatically poll the server to see if new chat requests exist and to receive new messages in existing conversations. The end-user can open each conversation in a new window or browser tab. vBulletin Messenger is mobile friendly using vBulletin 5's responsive theming. The system provides functionality for multiple users in a single chat based on your existing private message permissions.

The Chat function can be controlled globally through Options or per usergroup using permissions. The administrator of the site can control the polling intervals so the functionality works with the resources available. You can see the new Options in the AdminCP under Settings -> Options -> Private Messaging Options.

[h2]Responsive Improvements[/h2]
The navigation bar has been enhanced when viewed on smaller screens. All elements properly collapse into a drop down menu allowing for a cleaner display and less screen real estate being used. Further enhancements have been made to buttons to increase consistency across the board.

[h2]Addon Development[/h2]
Additional documentation as well as a "Hello World" package has been added to the do_not_upload folder in order to help administrators get started with creating additional addons in vBulletin 5 Connect. Please note: This will not be available to Cloud site owners.

[h2]PHP 5.4.X Support[/h2]
Due to the imminent release of PHP 7.1, we are deprecating support for PHP 5.4.0 as previously announced. vBulletin 5.2.3 will be the last version of vBulletin to support PHP 5.4.X. We will post the new required version once available. It is recommended that all customers upgrade to PHP 5.6 or higher at this time. 

[h2]Database Cleanup[/h2]
If you upgraded from an older version of vBulletin, there are a number of tables that are considered deprecated and are no longer used in vBulletin 5 Connect. These tables may contain a considerable amount of data and increase the size of your database storage. In order to streamline the database, we are working to remove these unused tables. The tables removed in this version are:
[list]
	[*]blog
	[*]blog_attachmentlegacy
	[*]blog_category
	[*]blog_categorypermission
	[*]blog_categoryuser
	[*]blog_custom_block
	[*]blog_custom_block_parsed
	[*]blog_deletionlog
	[*]blog_editlog
	[*]blog_featured
	[*]blog_groupmembership
	[*]blog_grouppermission
	[*]blog_hash
	[*]blog_moderation
	[*]blog_moderator
	[*]blog_pinghistory
	[*]blog_rate
	[*]blog_read
	[*]blog_relationship
	[*]blog_search
	[*]blog_searchresult
	[*]blog_sitemapconf
	[*]blog_subscribeentry
	[*]blog_subscribeuser
	[*]blog_summarystats
	[*]blog_tachyentry
	[*]blog_text
	[*]blog_textparsed
	[*]blog_trackback
	[*]blog_trackbacklog
	[*]blog_user
	[*]blog_usercss
	[*]blog_usercsscache
	[*]blog_userread
	[*]blog_userstats
	[*]blog_views
	[*]blog_visitor
[/list]

Once these tables are deleted, the information will be gone forever. We suggest that you make a backup of them if you feel you might need the data in the future for some other application.


Discussion
You may discuss this release here: [node]4346134[/node]

Current Version Support Schedule:
[list]
	[*]Active Version - 5.2.3
	[*]Security Patch - 5.2.2
	[*]Security Patch - 5.2.1
	[*]No Patch Release - 5.2.0 or earlier.
[/list]