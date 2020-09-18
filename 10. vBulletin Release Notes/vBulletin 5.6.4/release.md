# vBulletin 5.6.4 Changes and Updates

The preview version of vBulletin 5.6.4 Alpha 4 is now available for download.

## Front End Changes

### Lightbox and Photos

The attachment system has been updated to use the Lightbox display for all image content including galleries, albums, and attachments.

### Other Issues

- The system properly inserts the Meta Tag for better discovery of the XML sitemap if you do not have it added to your custom robots.txt file.
- CSS has been added for proper highlighting of search keywords in search results. You can change the background color used here with the `search_result_highlight_color` style variable.

---

## Back End / AdminCP Changes

### PHP 8

Other issues:

- Removed the ability to `{vb:raw var.{vb:raw subvar}}` from template syntax. The accepted format is `{vb:raw var.$subvar}`. Any template modifications using the former will need to be updated.
- Removed obsolete {vb:link} template directive. The proper directive to use is {vb:url}.

---

## Additional Information

### Install / Upgrade

Along with the PHP 8 changes, several upgrade steps have been updated to be more efficient.

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

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
