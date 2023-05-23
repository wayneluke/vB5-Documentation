# Changes and Updates in vBulletin 5.7.5

You can now download a preview release of vBulletin Connect 5.7.5. We do not recommend installing preview releases on production servers.

## Notifications

We have improved the handling of notifications. Upon deleting content, the system will automatically remove related notifications. Notifications will remain if the user has permission to view deleted content. 

## AdminCP

We have moved more inline Javascript to external files to enhance security handling. Furthermore, we have resolved several PHP syntax warnings and notices. If you encounter any issues in the AdminCP, please perform a hard refresh or clear your browser history.

## NoIndex

In previous versions, when using a query string (e.g., domain.com/?post=1234), the system a noindex meta tag could be placed on the rendered page. We have removed these tags from the content pages. The system will continue to add the canonical URL to prevent duplicate content warnings.

## Rebuild Thread Information

The General Update tools now include the Rebuild Topic Information tool, which will rebuild URLs based on current settings. Additionally, if a topic does not have a meta description, it will create one using the first 300 characters of the topic.

## Additional Issues

- Strip comments and whitespace from files in vb.phar
- The RSS feed poster did not work correctly when run from vbcron.php
- Clean up error handling in creating content
- Email Addresses over 100 characters cause issues.
- Header Ad Dialog is not constrained to the screen.
- Inline mod menu does not have the shrink child class
- An error was shown when double-clicking on a topic title
- update vb_backup.sh
- The Orphaned Topics tool has been removed.
- Clean up auto post logic
- Remove spamlog record when deleting a node
- Adding a hashtag to a reply node results in it being stripped from the post.
- Clean up set_time_limit
- Move next/previous version calculation to the base class
- vB_Utility_String fallback to iconv instead of failing when mbstring and iconv both enabled   



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

- Active Version - 5.7.4
- Security Patch - 5.7.3
- Security Patch - 5.7.2
- No Patch Release - 5.7.1 and earlier

### Discussion

If you have any questions about these changes, you may discuss them here: [node][/node]

If you find an issue with the software or request a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).