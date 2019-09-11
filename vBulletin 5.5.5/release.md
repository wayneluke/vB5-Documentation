# vBulletin 5.5.5 Changes and Updates

> A preview release of vBulletin 5.5.5 is now available for download. This version should be used for internal testing. We do not recommend using preview releases on a live site.

## Front End Changes

### New Landing Pages

We have added two new page layouts that users can select from when using Site Builder's Quick Setup. These new Home Pages allow you to change the focus of your site with a few clicks. They include:

1. **Standard**: This is the default home page and the same as the one used in previous vBulletin 5.X versions. This is a 70/30 layout with the Activity Stream, Statistics, and What's Going On located in the left column and various search modules in the Right Column. The activity stream defaults to the Forums tab.
2. **Classic**: Provides a home page similar to older versions of vBulletin. This layout only contains the Activity Stream, Statistics, and What's Going On module in a single full width column. The Activity Stream defaults to the Forums tab.
3. **Community**: A end user oriented Home Page. This includes a 30/70 layout. The left column includes the Channel Navigation Module, Friend's Activity, and Birthdays at 30% width. The Right column includes the Activity Stream, Statistics, and What's Going On module. The Activity Stream defaults to the Latest Activity tab in this view.

You can try these new pages out on your site by clicking on Quick Setup within Site Builder and choosing one the one you like to be your site's home page.

![Site Builder Menu](site_builder.png)
![Select Home Page](select_homepage.png)

### Forum Status Icons

Forum Status icons are now larger and display at 32 X 32 pixels by default. In addition to this, we have added "OnHover" events that will display if the channel has been read or not. For information on additional changes see "Channel Status Icons" below.

![Forum Icons](forum_icons.png)

### Inline Moderation

In this release, we have resolved a number of issues with Inline Moderation functionality. These updates will allow the following functions to behave as expected:

- Moving multiple nodes now allows for redirects to be created.
- Posts with Attachments can now be properly selected from the Inline Moderation menu.
- Thread Redirects can now have their titles changed by double-clicking in the title area.
- When selecting "View Topics" or "View Posts" when nothing is selected, an inline message is shown instead of redirecting to the search results page.
- An updated message is displayed if you attempt to move a topic into a Category that doesn't accept posts.
- Redirects are now deleted when the original node is deleted.
- Blog Entries can now be selected for inline moderation if only Sticky Topics are displayed.
- Channel Pagination should be calculated properly if you move nodes with redirects.

---

## Back End / AdminCP Changes

### Channel Status Icons

Administrators can now upload custom icons for individual Forum Channels. This is accomplished within the AdminCP under Channel Management -> Channel Manager. Forum icons will be resized to the value specified in the <<<< XXXXX >>>> style variable. The icon will be displayed at 50% opacity via CSS if the channel has been read by that user.

### File Scanning

We have added new API routines to scan files when they are uploaded. The most common use of file scanning would be to check attachments for malware before saving them to disk. In order to demonstrate this functionality, we have provided a package that would enable scanning files via ClamAV. ClamAV is a popular commandline tool used for malware detection. There is also a sample package in the `do_not_upload\development` directory of your download package if you wish to build your own file scanner.

### XML Sitemap Handling

You can now exclude Pages from being included in the XML Sitemap that is generated for search engine indexing. This is accomplished in the AdminCP under `XML Sitemap -> Manage Content Priority`. Set the priority for Pages to "Exclude" in order to prevent them from being listing in the generated XML Sitemap.

### Refactored URL Handling

Handling and retrieving external URLs has been refactored in order to make the system more reliable and secure. We have merged the vB_Url class with vB_Utility_Url. vB_Url has been removed from the system. This change will simplify code maintainance and improve security over time. This code is used to retrieve external URLs used for various services within the vBulletin code. Examples would include ReCaptcha, Facebook, and attachment uploads.

If you have third-party packages that rely on vB_Url, they will need to be updated to use the vB_Utility_Url class.

### Deprecrated Internet Explorer Code

Internet Explorer 11 is currently supported but should be considered deprecated. Previous versions of Internet Explorer are not supported. We have removed deprecated code that had been added to support these older versions of Internet Explorer from the software. Please make sure to follow the steps in the File Cleanup topic below. Please see the vBulletin [System Requirements](https://forum.vbulletin.com/node/4387853) topic for a list of supported browsers.

Users that access your site with IE should be encouraged to upgrade to the beta version of [Microsoft's Edge Browser](https://www.microsoftedgeinsider.com/en-us/) based on Chromium. This new browser is available for Windows 7, 8, 8.1, 10 and MacOS.

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
