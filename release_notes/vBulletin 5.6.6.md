# vBulletin 5.6.5 Changes and Updates

The preview version of vBulletin 5.6.5 Alpha is now available for download. Preview versions should not be used on production servers and are released for testing purposes only.

## Front End Changes

### User Name Cards

To facilitate upcoming functionality, a new optional name card can be shown when clicking or tapping on a user's name in most locations throughout the system. The name card currently shows the user's name, avatar, a link to their profile, and a link to search for their posts. This name card can be enabled in the AdminCP Settings under Options > User Profile Options.

### Additional Issues

- Resolved an issue that could prevent deleting topics if the author has been deleted
- Users could edit their status if they did not have permission to edit their profile. This has been corrected.
- Users without permission to edit their profile could not update their settings. This has been corrected.
- Resolved an issue with username links in Pinned Topic Answer posts. These links would not work properly on subdomains.
- Resolved an issue where clicking "More Smilies" in the editor would result in smilie selection disappearing.

---

## Back End / AdminCP Changes

### Imagemagick 6

The option to directly call the Imagemagick 6 executables for image processing has been removed. Similar functionality is available through the [IMagick](https://www.php.net/manual/en/book.imagick.php) PECL class now. If you were using the ImageMagick 6 library, the system will switch to GD as the default. If you have IMagick [installed](https://www.php.net/manual/en/imagick.installation.php), you can switch to this under Settings > Options > Image Options. If you were previously using ImageMagick 6, no further configuration should be needed in vBulletin. If you wish to use IMagick and do not have ImageMagick installed on your server, you will need to contact your hosting provider for assistance.

### PHP 8.1

vBulletin has been updated to support PHP 8.1.

#### PHP Warnings

A significant number of PHP Warnings that were being logged as a result of using PHP 8/8.1 have been resolved. The number of messages logged should be reduced on most systems. Please not that custom code and templates can still create these warnings if the variables are not initialized correctly.

### Additional Issues

- The install/upgrade routines have been updated to show more friendly error messages if a connection to the database cannot be made.
- Resolved an issue in the Node Tools where the last post date was not being calculated properly.
- Remove Guest Users from the Move / Prune User tools.
- Updated the Trending Minimum Lifetime variable name so that it is now correct and will be used by the system.
- The Instant Notification queue for vBulletin Mobile is no longer processed when not needed.
- Resolved and issue that would prevent the site from operating if you stored templates as files.
- Removed legacy bootstrap code from the system.

---

## Deprecated

### PHP 7.3

PHP 7.3 has reached End of Life status on December 6th, 2022. As such, we will be dropping support for this version in an upcoming release. We recommend upgrading your server to PHP 7.4 or higher.

### MySQL 5.6.X

MySQL 5.6 has reached End of Life. The MariaDB equivalent is 10.0. It is recommended that you have your server upgraded to 5.7 or higher (MariaDB 10.2 or higher) as soon as possible.

---

## Additional Information

### Install / Upgrade

Along with the PHP 8 changes, several upgrade steps have been updated to be more efficient.

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### Rebuild Search

To enable new search filters for Answered topics, you will need to rebuild your search index.

### System Requirements

Minimum System Requirements

- PHP Version: 7.3.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.1.0

Recommended System Requirements

- PHP Version: 7.4 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.6+

For more information see: [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.6.5
- Security Patch - 5.6.4
- Security Patch - 5.6.3
- No Patch Release - 5.6.2 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node]########[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
