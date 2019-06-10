We're happy to announce the release of vBulletin 5.1.7 Alpha 5.  All together over 100 issues have been resolved in vBulletin 5.1.7 Alpha 5.  While most of these issues are bug fixes, there are a few enhancements to the software.

[h2]Notifications[/h2]
The handling of how notifications are marked read has changed. When visiting the item that triggered the notification, it will be marked as read automatically. This will remove it from your list of new notifications. If you need to view a dismissed notification, you can do so by using the new filtering functions on the notifications page. In addition, on the notifications page, you can mark them as read or dismissed. Old dismissed notifications will be automatically deleted every 30 days. [jira]VBV-2545[/jira]

An option has been added to disable sending notifications via the User Mention functionality (which was added in 5.1.5). User Mentions will still link to the user's profile if this is enabled. [jira]VBV-14200[/jira]


[h2]Minimum Version Checks[/h2]
There was an issue with the minimum version checks for PHP and MySQL in the install and upgrade scripts. This has been changed and the minimum version for both will now be upheld. 
See JIRA: [jira]VBV-13757[/jira]

PHP Minimum Version: PHP 5.4.0
MySQL Minimum Version: MySQL Community 5.1.5

[h2]Sphinx Search[/h2]
[b]Minimum Version: 2.1.2 Release[/b]
Due to changes between the beta version and release version of 2.1.2, we can no longer support the beta version. The minimum version has been increased to reflect this. Without upgrading Sphinx, you will experience errors when searching is attempted. See JIRA: [jira]VBV-14501[/jira]

[b]Rebuild Index[/b]
Due to filter changes for prefixes, you must rebuild your Sphinx index with vBulletin 5.1.7. See JIRA: [jira]VBV-14443[/jira]

In order for this fix to take effect you will need update the sphinx schema for the index. You can do this by.
[ul]
	[*]Follow the instructions to create the vbulletin sphinx configuration file found in the sphinx installation instructions for your OS. (Use the new vbulletin_sphinx.php file provided with this version of vBulletin).
	[*]Restart sphinx.
	[*]Copy searchindex.php to your core vbulletin directory.
	[*]Run "php searchindex.php". You will need to run this as a user with sufficient privileges to run sphinx index commands. Select the correct vbulletin core directory (you can probably use the default) and choose to empty the search index (otherwise the schema will not be recreated from the config)
	[*]Remove the searchindex.php file.
[/ul]
The board will continue to function while the index operation is running, but search will return no results or incomplete results until it finishes.

[h2]Responsive[/h2]
[b]Hide Modules[/b]
Options have been added to hide modules in Responsive Mode based on the display screen. Currently there are three sizes which relate to portrait sizes of various devices. Small (< 480 pixels), Medium (< 768 pixels) and Desktop. [jira]VBV-2126[/jira]

[b]Display Issues[/b]
Many display and layout issues have been fixed in Responsive. These range from overlapping text to long URLs escaping the page boundaries. You can see a list of these issues using [url=http://tracker.vbulletin.com/secure/IssueNavigator.jspa?mode=hide&requestId=11943]this filter[/url]

Discuss this release here: [node]4318162[/node]