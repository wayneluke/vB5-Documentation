# vBulletin 5.5.5 Changes and Updates

## Front End Changes

### New Landing Pages

We have added two new page layouts that users can select from when using Site Builder's Quick Setup. These new Home Pages allow you to change the focus of your site with a few clicks. They include:

1. **Standard**: This is the default home page and the same as the one used in previous vBulletin 5.X versions. This is a 70/30 layout with the Activity Stream, Statistics, and What's Going On located in the left column and various search modules in the Right Column. The activity stream defaults to the Forums tab.
2. **Classic**: Provides a home page similar to older versions of vBulletin. This layout only contains the Activity Stream, Statistics, and What's Going On module in a single full width column. The Activity Stream defaults to the Forums tab.
3. **Community**: A end user oriented Home Page. This includes a 30/70 layout. The left column includes the Channel Navigation Module, Friend's Activity, and Birthdays at 30% width. The Right column includes the Activity Stream, Statistics, and What's Going On module. The Activity Stream defaults to the Latest Activity tab in this view.

You can try these new pages out on your site by clicking on Quick Setup within Site Builder and choosing one the one you like to be your site's home page.

### Inline Moderation

In this release, we have resolved a number of issues with Inline Moderation functionality. These updates will allow the following functions to behave as expected:

### Forum Status Icons

These icons will now display at a larger 32 X 32 pixel size. This is for consistency with a new custom icon system for Forum Channels.

---

## Back End / AdminCP Changes

### File Scanning

We have added new API routines to scan files when they are uploaded. The most common use of file scanning would be to check attachments for malware before saving them to disk. In order to demonstrate this functionality, we have provided a package that would enable scanning files via ClamAV. ClamAV is a popular commandline tool used for malware detection.

#### Deprecrated Internet Explorer Code

We have removed deprecated code supporting older versions of Internet Explorer from the software. Please make sure to follow the steps in the File Cleanup topic below. Please see the vBulletin [System Requirements](https://forum.vbulletin.com/forum/vbulletin-sales-and-feedback/vbulletin-pre-sales-questions/4387853-vbulletin-system-requirements) topic for a list of supported browsers.

---

## Additional Information

### Install / Upgrade

Please see the forum topics below for the latest information on installing or upgrading vBulletin 5 communities.

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

- Active Version - 5.5.5
- Security Patch - 5.5.4
- Security Patch - 5.5.3
- No Patch Release - 5.5.2 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4413190[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
