# vBulletin 5.5.3 Changes and Updates

vBulletin 5.5.3 is now available for all vBulletin 5 Download customers. We will automatically update vBulletin Cloud sites. vBulletin Cloud users will receive an email with the scheduled time for their site's upgrade.

## Front End Changes

### Group Icons

We have resolved a few additional issues with Group Channels. These include:

- Group Icons can now be removed. Previously you could only replace them with a new icon.
- Icon management works properly on the Group Settings Page.
- Items will no longer break out of the Conversation Toolbar at different resolutions.
- Topics and Replies will be properly moderated before displaying if this group option is set.

### Facebook Connect

A number of changes have been made to Facebook Connect to enable better operations due to changes in their API over the years. When a user registers with Facebook, the process is simplified. Facebook no longer allows the automated operations from vBulletin 4.X. We have worked to make the registration process as simple as possible. It is no longer possible to pre-fill custom profile fields with Facebook information. They have removed that functionality. We have also upgraded the Facebook API to the latest version.

### Container Module

You can now add additional modules to the Container Module in the Blog Channel Sidebar. An issue that could cause all modules to be deleted when doing this has been resolved.

### Accessibility

Code has been added to apply the aria-label attribute on form elements that currently do not have proper labels. This should improve general accessibility throughout the software. In addition to this, the jQuery Placeholder plugin has been removed from the system. The placeholder attribute is natively supported by browser engines today. This workaround was no longer needed.

### Breadcrumbs

These have been reworked to display better on smaller screens. Breadcrumb text will no longer be abbreviated with the CSS .ellipsis class. Instead the breadcrumbs will wrap to the next line as necessary. In addition to this, the Home label has been replaced with an icon and appropriate label.

---

## Back End / AdminCP

### Improved Search Engine Performance

A number of performance issues relating to the search engine in vBulletin 5 have been resolved. These changes can significantly speed up your search results when using either keyword based search or the JSON powered search modules placed on pages.

### Moderation Permissions

We have split the single "Skip Moderation Queue" permission into three different permissions. This was done to give you greater control over moderating new content similar to vBulletin 4.X. Setting these permissions to No will force content into moderation on a channel by channel basis. The three permissions are:

- Skip Moderation for New Topics - This will enable you to moderate new topics started by different usergroups.
- Skip Moderation for Replies - This will enable you to moderate replies and comments on approved topics.
- Skip Moderation for Posts/Topics with Attachments - If set to no, this will automatically moderate any topic starter or post with attachments. This allows review of the attachments before they are made available to your users.

### Proxy Support

We have added support for Cloudflare and Sucuri proxies in the `/core/includes/config.php` file. These directives are commented out in the default file. Uncomment the block that you wish to use. Uncommenting will make them active. Only one can be active at a time.

### .htaccess

Code has been added to the default .htaccess file to handle rewriting vBulletin 4.X Friendly URLs. This code is commented out by default.

### AdminCP Home Page Statistics

These statistics have been updated so they are more accurate. In addition to this, the obsolete Profile Picture Statistic has been removed.

---

## Mobile Apps

### Push Notifications

Changes have been made to make push notifications more reliable in the mobile apps. A new option has been added to control the push notification timeout. This option can be found in the AdminCP under Settings -> Options -> vBulletin API and Mobile Application Options.

---

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

Minimum System Requirements

- PHP Version: 7.1.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 7.3 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

It is recommended to use the latest version of vBulletin at all times.

- Active Version - 5.5.3
- Security Patch - 5.5.2
- Security Patch - 5.5.1
- No Patch Release - 5.5.0 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4416598[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
