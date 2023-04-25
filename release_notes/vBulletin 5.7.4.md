# vBulletin 5.7.4 Changes and Updates

vBulletin Connect 5.7.4 is now available to download. vBulletin Cloud sites will be upgraded automatically in the next 7-14 days.

## Page Manager

We updated the Page Manager and added tools that allow users to set the vBulletin home page and delete custom pages.

We have streamlined the processes after changing the home page in addition to this. We will remove the breadcrumbs on the new homepage and handle navigation tabs in the following manner.

1. If there is a tab for the previous homepage, the link will be updated to the canonical URL for the corresponding page.
2. If there is a tab for the new homepage, the link will be updated to the vBulletin root (i.e., '/').
3. If no tab exists for the new homepage, one will be created.

## Navigation

Navigations Links can be assigned to a page within the vBulletin system using a drop-down menu. Pages, including channels, will be listed alphabetically. When set in this manner and when the URL of a page changes, the Navigation Link will automatically change to the new URL.

## AdminCP Channel Manager

The date of the last activity is listed in the channel manager. This information can help administrators when merging or deleting channels to remove content that is no longer relevant.

## Presentation config.php

The $config['core_path'] value is now obsolete and removed from the file. New installations will not have this variable.

This is the code removed: 

```php
// Assumes default location of core. 
// These are the system paths and folders for your vBulletin files
// This setting is for where your vbulletin core folder is
$config['core_path'] = realpath(dirname(__FILE__)) . '/core';
```

## Additional Issues

- Twitter logins have been converted to use an OAUTH2 implementation.
- You can now use a new 'Select All' control to choose all tags on the page while viewing the Tag Manager.
- The URL BBCode and Preview system will no longer try to download large compressed files before adding the link to a post.
- Custom Node fields no longer appear when editing a reply.
- Additional Javascript refactors to modernize code and meet current standards.


---

## Install / Upgrade Information

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

With each version release, some files become obsolete. These files are mainly the Javascript Rollup files which are version stamped. However, we occasionally refactor PHP files and remove them from the distribution package. After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

#### Files to Delete
These are the files known to be unnecessary in the current version of the software. 

- In the `/js` directory, delete all files with 573 in their file name.



### System Requirements

Minimum System Requirements

- PHP Version: 8.0.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 8.1 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information, see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.7.3
- Security Patch - 5.7.2
- Security Patch - 5.7.1
- No Patch Release - 5.7.0 and earlier

### Discussion

If you have any questions about these changes, you may discuss them here: [node]4480218[/node]

If you find an issue with the software or request a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).