vBulletin 5.2.5 Connect is now available to all vBulletin 5 Download customers with an active license. This version contains fixes and updates to over 130 issues in the software.

[h2]System Requirements[/h2]
Minimum PHP Version: 5.5.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 7.0.9 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

[h2]Page Manager[/h2]
A Page Manager has been added to SiteBuilder. This first interation is pretty basic. It lists all custom pages and channels and links to them for editing or deletion. This will be handy if you forget the route to a page or simply want to see what you or other administrators have created. Please give your feedback on this new feature so we can make it more robust in the future. This tool can be accessed by choosing the "Pages" option in SiteBuilder.

[b]SiteBuilder Menu[/b]
Along with adding the Page Manager, a few other changes have been made to the SiteBuilder Menu. The Channel Manager link has been shortened to Channels. The Styles tool has been moved to the left most position for better flow in the menu.

[h2]vBulletin Messenger[/h2]
Enhancements have been made to the AJAX polling in vBulletin Messenger to reduce server load. Along with this, there is a new option to allow Administrators to control how many Messenger chats appear on the Messages Dropdown menu. Messenger menus have also been refactored to use the vBulletin Responsive Menu component introduced in vBulletin 5.2.4.

[h2]Image Uploads[/h2]
In order to handle an increasing number of metadata tags added to images by smartphones and cameras, image handling has been reworked. Most images that fail our internet security checks will be rewritten before storage. These images will have the majority of their metadata stripped upon saving. This allows us to prevent executable code from being embedded in images will providing support for a larger number of devices. 

[b]Caveats[/b]
[list]
[*]If your site needs support for Animated GIF images that are uploaded, you must use the ImageMagick library under Settings -> Options -> Image Settings. This will require that the ImageMagick executable is installed on your server and the exec() function is not blocked in your PHP settings. Contact your host if you need help setting up ImageMagick.
[*]JPEG is a "Lossy" format. Converting JPEG images will result in a slight quality loss. This is currently unavoidable.
[/list]

[h2]UTF-8 Support[/h2]
New installations will use UTF8 character sets in the database when supported. If for some reason you cannot use UTF-8 in your database you can set the character set explicitly in /core/includes/config.php with this line:
[code]$config['Mysqli']['charset'] = 'utf8';[/code]

This allows us to move forwards on supporting UTF-8 on all vBulletin installations. We're working behind the scenes to make this possible given the wide range of character sets in use today. You should make sure that you have both the mbstring and iconv libraries installed in PHP if you need to support non-Latin languages. 

[h2]Code Cleanup[/h2]
A number of obsolete functions have been removed from the system. These are mainly in functions.php:  

split_string
to_ascii
fetch_soft_break_string
construct_window_page_nav
fetch_lastposter_userinfo
vbmail
fetch_profilefield_display
vbheaders_sent
exec_switch_bg
fetch_start_end_total_array
print_standard_error
add_query
convert_int_to_utf8
convert_unicode_char_to_charset

We have also removed the classes associated with Legacy User handling. Javascript and CSS have also been updated to remove obsolete code and class references.

If you have third-party addons that use any obsolete code, you will need to contact the developers of those products for updates.

Discussion
You may discuss this release here: [node]4356369[/node]

Current Version Support Schedule:
[list]
	[*]Active Version - 5.2.5
	[*]Security Patch - 5.2.4
	[*]Security Patch - 5.2.3
	[*]No Patch Release - 5.2.2 or earlier.
[/list]
