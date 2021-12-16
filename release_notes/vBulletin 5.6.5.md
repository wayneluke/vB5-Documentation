# vBulletin 5.6.5 Changes and Updates

vBulletin 5.6.5 is now available for download. vBulletin Cloud sites will be scheduled for automatic updates in the coming days.

## Front End Changes

### Answered Topics

Topics can now be marked as "Answered." This is a special status applied to a specific post within the topic. The post that is marked as the Answer will be highlighted and show directly under the starting post in the topic. The ability to mark posts as the Answer in a topic is controlled by permissions. There are three different permissions to control this. Usergroup and Channel Permissions both support the "Can Set Answer" permission. Within Channel Permissions, there is also a "Can Set Answer on Own Topics" permission. The last permission is under Moderator Permissions to control which moderators can set answers. After upgrading, all of these permissions will be set to No. If you leave the permissions in this state, the feature will be disabled. 

The Channel Display module has been updated to allow users to filter by answered status.

### Photo Gallery

The ability to manually re-order images uploaded in a photo gallery topic has been added to the system. This can be accomplished by drag and drop when editing the images during upload.

### Additional Issues

- Resolved several filter issues with Blogs.
- Users with custom HTML titles can update their settings without breaking their titles.
- vB Messenger should load new messages quicker. However, the update rate will slow down with inactivity.
- Tag searches are no longer case sensitive.
- Users no longer need permission to post to create flag reports.
- When uploading a new site logo in Site Builder, it can now be properly applied to all styles.
- If the site is configured so that the user's birthday is optional, it is no longer required when updating the user settings.
- Information from inline images should no longer appear in the meta description of a page.

---

## Back End / AdminCP Changes

### PHP 8

vBulletin has been updated to support PHP 8.0. Extensive work has been undertaken to update legacy code in the system to support PHP 8.0. This covers all areas of the product. If you encounter issues when using PHP 8.0, please report them in the [forums](https://forum.vbulletin.com).

#### Error Reporting

In previous versions of vBulletin, the system would override PHP's system error reporting settings. This behavior is increasingly problematic with newer versions of PHP. It is being removed to improve development, testing, and providing support. In rare cases, this could allow production servers to display warnings and notices at the top of the rendered page. To disable these edit your php.ini and set these variables:

``` 
display_errors = Off
log_errors = On
error_reporting = E_ALL & ~E_NOTICE & ~E_WARNING
```

For testing servers, you can turn display_errors to On and error_reporting to E_ALL.

If you do not know how to edit your php.ini file, please contact your hosting provider for support.

### Infraction Groups

Infraction Group permissions should take additional priority over other permissions now. All Infraction Groups work similarly to banned usergroups now. This change will allow Infraction 
Group bans to work properly on individual channels on your forums.

### Additional Issues

- The Quick Channel Permissions tool (Usergroups → Channel Permissions) will only permissions that are changed will be updated in the database.
- The User Moderation page now includes pagination.
- Ignored Users - Cache changes have been implemented to show content from ignored users less.
- Can Upload Attachments permission - This duplicate permission has been removed.
- Resolved an issue with Memcached and improper key deletion. If you use Memcached, please make sure that you have a proper Memcached key prefix set in your `/core/includes/config.php` file.

---

## Deprecated

### ImageMagick
Calling the ImageMagick executable directly has been deprecated in favor of using the imagick PECL library. We will remove direct support for ImageMagick in the next release. The imagick library functionality was added in vBulletin 5.5.4. We suggest updating your PHP installation to support imagick. You can find instructions on doing this in the [PHP Documentation](https://www.php.net/manual/en/imagick.setup.php). If you do not switch to imagick, your image processing library will change to GD with the next release of vBulletin.

### PHP 7.2

PHP 7.2.X has reached end of life. Due to this, bugs specific to this version will not be fixed in the future. The solution is to upgrade your server to PHP 7.3 or higher. PHP 7.2.X will not be supported in the next version of vBulletin.

### MySQL 5.6.X

MySQL 5.6 has reached End of Life. The MariaDB equivalent is 10.0. It is recommended that you have your server upgraded to 5.7 or higher (MariaDB 10.2 or higher) as soon as possible. Future versions of vBulletin can use features made available in newer versions of MySQL.

---

## Additional Information

### "Long Step" Warning

This upgrade adds fields to the node table in your database. On large sites, this process can take a while to process. Please be patient.

### Install / Upgrade

Along with the PHP 8 changes, several upgrade steps have been updated to be more efficient.

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### Rebuild Search

To enable new search filters for Answered topics, you will need to rebuild your search index. 

#### Database Search

You can rebuild your search index while the site is live using the tool available in the AdminCP under Maintenance → General Update Tools. Large sites can use do_not_upload/searchindex.php from the command line.

#### Sphinx Search

If you use Sphinx Search on your site, you will need up update your vbulletin-sphinx.php file with the new version in the download package and rebuild your search index.

### System Requirements

Minimum System Requirements

- PHP Version: 7.2.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.1.0

Recommended System Requirements

- PHP Version: 7.3 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see: [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.6.5
- Security Patch - 5.6.4
- Security Patch - 5.6.3
- No Patch Release - 5.6.2 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node]4461758[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
