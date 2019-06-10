
vBulletin 5.4.5 Alpha 4 is now available to all customers. This is a pre-release test version and should not be used on production sites.

### Improved Font Handling

We've updated the CSS to handle fonts better. All fonts are now inherited from the body_font style variable. This allows you more control over the display of the site while still allowing you to customize your site.

### Improved Upgrade Handling

#### Upgrade Memory Handling

An issue was discovered that could allow the upgrade script to run out of memory on large sites when using the Command Line upgrade. We have refactored how the upgrde system handles memory to account for this. This should allow for a smoother upgrade process.

#### Removed Files

We've removed a large number of unnecessary files from the upgrade system. The system allows you to upgrade from 3.6.0 to vBulletin 5.4.5. That is almost 550 upgrade scripts that have been released over the years. Many of these files didn't have any upgrade steps in them and just progressed the version number. We've eliminated almost half of the upgrade files with this update.

### Move Nodes

A tool to mass move nodes between channels has been added to the AdminCP. With Mass Move, you can easily move large numbers of topics from one location to another. The tool can move Topics, Articles, and Blog Entries, and Social Group Discussions among the appropriate channels. Mass Move can be accessed in the AdminCP under the Node Tools Menu.

## Bug Fixes


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






-----------------
### Introducing PHAR

PHP contains a feature called PHAR, which stands for **PH**p **AR**chive, that allows developers to package entire directories or applications into a single file. PHAR is similar to a ZIP or TAR file but includes executable PHP. This functionality is being added to vBulletin 5.4.5. In this version, we have added a download option to to have the `/core/vb/` directory converted into a PHAR file. This saves several megabytes from the total space needed for files and allows easier uploads to your server.
