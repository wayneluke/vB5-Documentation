vBulletin 5.4.4 Connect is now available for download by licensed customers. This is a preview release and not recommended for production servers.

[h=2]Setting your Home Page[/h]
When saving a page in Site Builder, you can now set it as your site's homepage. This will allow more customization without the utilization of complex workarounds and/or database edits. 

To change your homepage, simply edit the page in Site Builder. Click on Save Page and select the "Make this page your homepage" checkbox. 

Note: There is currently an issue with setting a Topic page as your site homepage. We are working to resolve this.

[h=2]Routing Improvements[/h]
The Routing System has been re-factored and had many fixes applied. These changes have made the system more robust so that you're less likely to lose pages or create inaccessible changes. The new changes require that every page has a URL prefix. The URL prefix was not required for the homepage previously. The system will update your current homepage to have a prefix during the upgrade process.

If you have any Add-on Products that work with the routing system, you may need to update them in order for them to work with vBulletin 5.4.4 and higher.

[h=2]Facebook Connect[/h]
[list]
[*]Following changes to the Facebook API, we have reduced the permissions necessary for individuals to use Facebook as their login platform.
[*]Publish to Facebook has been removed from the system. Facebook is deprecating this functionality for third-party apps. We recommend that you use the share button in the Post Info box instead.
[/list]

[h=2]Editor Style Variables[/h]
Additional work has been completed on the Style Editor so that you can further customize it to fit your theme and better cohesiveness with the dark theme. This includes updating the dialogs so they show proper contrast on dark background as well as enhancing the coloring of the editor. We have also included in a new icon set for use with the dark theme. You can switch your icon set using the style variable editor. 

[h=2]Social Group and Blog Enhancements[/h]
We have cleaned up the information boxes for Blogs and Social Groups. The new display is easier to read and removed extraneous information. 
Permissions have been fixed so they can be edited properly.
You're now able to rename the Groups and Blogs channels without breaking the navigation of setting pages within these groups.

[b]New style Variables[/b]
[list]
[*]ckeditor_image_path (current options are "default" and "dark")
[*]ckeditor_toolbar_button_background
[*]ckeditor_toolbar_button_background_hover
[*]ckeditor_toolbar_button_background_pressed
[*]ckeditor_toolbar_button_button_text_color
[/list]

You can add your own editor images by uploading them to the /js/ckeditor/images directory on your server. You can find new images for CKEditor on their website. 

[h=2]Embedded Videos[/h]
It was requested that we allow the centering of embedded videos. Now you can. When using embedded or inline videos, you can now align them to fit your content. All new videos will adhere to the alignment BB Codes made possible in the editors. 

Note: This does not apply when using the Link content type and including a video as the link.

[h=2]Related Topics Product (Cloud Only - Coming Soon)[/h]
As part of an ongoing project to improve the feature set of vBulletin Cloud, we have started working with Artificial Intelligence to improve your content. The first implementation of the vBulletin AI Suite is a Related Topics system for Cloud. This system will analyze your database and allow you show a Related Topics module on your conversation pages. This will help users find other content on your site. While this is the first implementation of the vBulletin AI Suite, we're excited to see where we can take it in the future. As we get closer to making this available to Cloud Customers, we will provide more information.

[h=2]Other Issues:[/h]
Fixed an issue with unapproved Visitor Messages causing the Moderation Page to redirect to the homepage.
Fixed various issues when changing videos on the Link Content Type. 
A setting has been added to the Privacy Options to completely block EU Residents from accessing your site. You must be using a Location Provider for this to work. 
Debug Mode is now required to access the Cookie Path and Cookie Domain options.
New recovery tools have been added to tools.php.

A list of all issues can be found here: https://tracker.vbulletin.com/vbulletin5/roadmap#roadmap_milestone_36

[h=2]PHP Support[/h]
Due to upcoming changes in the PHP Support Cycle, we recommend that customers upgrade to PHP 7.1 or higher as soon as possible.
[b]PHP 5.6[/b]
PHP 5.6 will reach end of life status on December 31st,We will be dropping support for PHP 5.6.X with the release of vBulletin 5.4.5. This coincides with the end of life status of PHP 5.6.X. 

[b]PHP 7.0[/b]
PHP 7.0 will reach end of life status on December 3rd, 2018. As such, we will be dropping support for this version in an upcoming release.

[b]PHP 7.3[/b]
We will be working to make vBulletin compatible with any necessary changes as soon as possible.

[h=2]System Requirements[/h]
Minimum PHP Version: 5.6.30
Minimum MySQL Version: 5.5.8

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.7 or higher
Recommended MariaDB Version: 10+

[h=2]Current Version Support Schedule[/h]
All customers are encouraged to upgrade to the latest version.
[list]
    [*]Active Version - 5.4.4
    [*]Security Patch - 5.4.3
    [*]Security Patch - 5.4.2
    [*]No Patch Release - 5.4.1 or earlier.
[/list]

[h=2]Discussion[/h]
If you have any questions about these changes you may discuss them here: [node]4397659[/node]

If you find an issue with the software or wish to place a feature request please visit our [url=https://tracker.vbulletin.com]tracker[/url].

In order to receive support for your vBulletin Product please visit our [url=https://www.vbulletin.com/forum/]community forums[/url].





