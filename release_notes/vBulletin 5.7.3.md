# vBulletin 5.7.3 Changes and Updates

vBulletin Connect 5.7.3 is now available to download. vBulletin Cloud sites will be automatically updated in the coming weeks.

## Third-Party Logins

- Google Authentication has been refactored. The routines have been updated to Google's new APIs and use OATH2.
- Twitter Authentication has been repaired with the current Twitter v2 APIs. However, registration via Twitter Authentication does not work at this time.

## RSS Module

A new RSS Module is available for custom pages. RSS Feeds will be cached between updates. An option is available to specify how frequently a feed is updated. Due to the nature of gathering external data, page rendering can be delayed when the feed is updated. When using many RSS feed modules on the same page, there can be a significant delay when the cache is updated.

## URL Previews

Several issues reported with URL Previews have been corrected:

- URL Preview Caching will now work correctly.
- Better image processing has been added for invalid images on some URLs.
- A memory leak that occurred with many URLs in a post has been resolved.
- Image scaling has been updated to provide a better presentation.

## PHP 8.0+ Required

With this release , we will no longer support PHP 7.4.X. As of November 28th, 2022, PHP 7.4.X is EOL (End Of Life). Due to this, it is recommended that all customers upgrade to PHP 8.0 or higher as soon as possible.

---

## Install / Upgrade Information

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

With each version release, some files become obsolete. These files are mainly the Javascript Rollup files which are version stamped. However, occasionally PHP files will be refactored and removed from the distribution package. After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

#### Files to Delete
These are files known to be unnecessary in the current version of the software. 

- In the `/js` directory, delete all files with 572 in their file name.
- The directory `/core/packages/googlelogin/vendor` should be deleted.


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

If you have any questions about these changes, you may discuss them here: [node]4478815[/node]

If you find an issue with the software or request a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).