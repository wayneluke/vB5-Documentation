We're pleased to announce the release of vBulletin 5.2.2 Connect.  Altogether over 150 issues have been resolved in vBulletin 5.2.2. This is a maintenance release with numerous bug fixes and enhancements. Altogether 170 issues were resolved in this release.

Minimum PHP Version: 5.4.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 5.6.0 or higher
Recommended MySQL Version: 5.6.0 or higher

[h2]Email Language[/h2]
An issue where the email can be sent in the master language (English) or the language of the content creator has been resolved. This will allow you to customize your emails to fit your community within the Phrase Manager of the AdminCP. Users should now receive emails in their selected language or the language set as the site default depending on their personal settings. 

[h2]ckEditor Update[/h2]
Significant work has been made to update ckEditor in the system to the latest series. Ckeditor is available in iOS and desktop web browsers at this time.

[b]Editor Autogrow[/b]
We use functionality to autogrow the editor as you type. Currently this can cause the editor's toolbar to scroll off the screen. We have made changes to the functionality to keep the toolbar on the screen as much as possible. As you type, the editor will grow to the bottom of the screen and stop. If you scroll down, it will grow until it fills the screen. If you resize the screen, the editor will readjust to fit. If you would like an editor area larger than your screen, you can adjust the size manually but clicking on the triangle in the lower right corner and dragging it. 

[h2]Button Updates[/h2]
As part of our ongoing Responsive work, we have refactored the display of buttons throughout the vBulletin system. The CSS has been converted to the BEM style of CSS used elsewhere in vBulletin. In addition to this, backgrounds of the buttons now use CSS Gradients for better control over colors. Button display should be consistent throughout the software now. The primary action button will always display as the right most button and have the appropriated highlighted background. In addition to this buttons are now easier to use on mobile devices where necessary they now appear larger and the same consistency is applied. On small screen devices like phones, the primary action button should be the top button in the display.

[h2]Database Cleanup[/h2]
If you upgraded from an older version of vBulletin, there are a number of tables that are considered deprecated and are no longer used in vBulletin 5 Connect. These tables may contain a considerable amount of data and increase the size of your database storage. In order to streamline this, we are working to remove these unused tables. The tables removed in this version are:
[list]
	[*]post
	[*]posthash
	[*]postlog
	[*]postparsed
	[*]postrelease
	[*]thread
	[*]threadrate
	[*]threadread
	[*]threadredirect
	[*]threadviews
	[*]skimlinks
[/list]

Once these tables are deleted, the information will be gone forever. We suggest you make a backup of them if you feel you might need the data in the future for some other application.


Discussion
You may discuss this release here: [node]4341659[/node]

Current Version Support Schedule:
[list]
	[*]Active Version - 5.2.2
	[*]Security Patch - 5.2.1
	[*]Security Patch - 5.2.0
	[*]No Patch Release - 5.1.10 or earlier.
[/list]
