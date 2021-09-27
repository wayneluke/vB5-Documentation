# vBulletin 5.6.5 Changes and Updates

The preview version of vBulletin 5.6.5 Alpha is now available for download.

## Front End Changes

### Answered Topics

Topics can now be marked as "Answered." This is a special status applied to a specific post within the topic. The post that is marked as the Answer will be highlighted and show directly under the starting post in the topic. The ability to mark posts as the Answer in a topic is controlled by permissions. There are three different permissions to control this. Usergroup and Channel Permissions both support the "Can Set Answer" permission. Within Channel Permissions, there is also a "Can Set Answer on Own Topics" permission. The last permission is under Moderator Permissions to control which moderators can set answers. After upgrading, all of these permissions will be set to No. If you leave the permissions in this state, the feature will be disabled. 

### Photo Gallery

The ability to manually re-order images uploaded in a photo gallery topic has been added to the system. This can be accomplished by drag and drop when editing the images during upload.

---

## Back End / AdminCP Changes

### PHP 8

vBulletin has been updated to support PHP 8.0. Extensive work has been undertaken to update legacy code in the system to support PHP 8.0. This covers all areas of the product. If you encounter issues when using PHP 8.0, please report them in the [forums](https://forums.vbulletin.com).

#### Error Reporting

In previous versions of vBulletin, the system would override PHP's system error reporting settings. This behavior is increasingly problematic with newer versions of PHP. It is being removed in order to improve development, testing, and providing support. In rare cases, this could allow production servers to display warnings and notices at the top of the rendered page. To disable these edit your php.ini and set these variables:

``` 
display_errors = Off
log_errors = On
error_reporting = E_ALL & ~E_NOTICE & ~E_WARNING
```

For testing servers, you can turn display_errors to On and error_reporting to E_ALL.

If you do not know how to edit your php.ini file, please contact your hosting provider for support.

### Infraction Groups

Infraction Group permissions should now take additional priority over other permissions now. All Infraction Groups work similar to banned usergroups now. This change will allow Infraction 
Group bans to work properly on individual channels on your forums.

### Additional Issues

- User Moderation - This AdminCP page now shows pagination if there are more than 25 users awaiting moderation.
- Ignored Users - Cache changes have been implemented to show content from ignored users less.
- Can Upload Attachments permission - This was a duplicate permission and has been removed.
- Resolved an issue with Memcached and improper key deletion. If you use Memcached, please make sure that you have a proper Memcached key prefix set in your `/core/includes/config.php` file.

---

## Deprecated

### MySQL 5.6.X

MySQL 5.6 has reached end of life. The MariaDB equivalent is 10.0. It is recommended that you have your server upgraded to 5.7 or higher (MariaDB 10.2 or higher) as soon as possible. Future versions of vBulletin can use features made available in newer versions of MySQL.

---

## Additional Information

### "Long Step" Warning.

This upgrade adds fields to the node table in your database. On larger sites, this process can take a while to process. Please be patient.

### Install / Upgrade

Along with the PHP 8 changes, several upgrade steps have been updated to be more efficient.

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### Rebuild Search

IN order to enable new search filters for Answered topics, you will need to rebuild your search index. 

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

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - X.Y.Z
- Security Patch - X.Y.Z - 1
- Security Patch - X.Y.Z - 2
- No Patch Release - X.Y.Z -3 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node]########[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
