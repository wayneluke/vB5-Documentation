# vBulletin 5.6.9 Changes and Updates

vBulletin 5.6.9 is available for download. vBulletin Cloud customers will be upgraded automatically.

## Front End Changes

### Copy and Paste Image Uploads

Users can now use Copy and Paste to upload images into their posts. Users should be warned that image sizes may not be what they expected on paste. They can control the image size by hovering over an image and using the drag tool in the lower right corner. Users can also double-click (double-tap on a touch device) an image to bring up the properties window to change the size.

> Note: Firefox does not allow pasting multiple images at one time. Firefox also does not support the copy and paste of WebP images.

### WebP Image Support

Users will be able to upload images in the WebP format. These images are typically smaller than their PNG and JPEG counterparts. WebP images can also support background transparency. You can read about WebP on [Google's Developer Site](https://developers.google.com/speed/webp/).

### Additional Issues

- Added an option to filter for topics flagged as Answered on the Advanced Search page.
- Removed the See More link on Article previews. This link was causing an issue when the end-user had permission to view the Article Preview but did not have permission to view the Article.
- Name Cards have been updated to remove hover effects on the buttons. The change allows them to work better with touch devices that do not support hover.
- Hashtags will not be parsed in text posted between [noparse][code]...[/code][/noparse] tags.
- New lines will be maintained in text pasted between [noparse][code]...[/code][/noparse] tags.
- The Content Slider module will now use the thumbnails from link/video content as the background.

---

## Back End / AdminCP Changes

### HTML Support for Outgoing Emails.

vBulletin now uses HTML formatting for Outgoing Emails. All Email Body Text phrases have been updated and will appear the same after the change. However, if you have custom translations for these phrases, you will need to update them manually. Otherwise, your outgoing emails will lose their formatting. [W3Schools](https://www.w3schools.com/default.asp) has a free HTML course so that you can learn [basic HTML](https://www.w3schools.com/html/html_basic.asp) if you need to. Do not include doctype, html, or body tags in your outgoing emails.

### Contact Us Email Address Updated

The Contact Us form no longer uses the end-user's email address for the sender field. It will use the Webmaster Email stated within your site's options. 

### Email Diagnostic Updated

The Email Diagnostic tool was  updated to show the complete SMTP Error message if it occurs. This will make diagnosing outgoing email issues easier.

### Additional AdminCP Issues

- Combined the Image Settings and Message Attachment Options setting groups into a group called Attachment Options.
- Added column headers to the Style Manager. 
- Hidden Themes shown in Debug Mode can no longer be set as Active in the Style Manager.
- Settings can be backed up and restored outside of Debug Mode.
- A quick search for Recently Banned Users has been added to the User Manager.

---

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

Minimum System Requirements

- PHP Version: 7.4.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 8.0 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.6.9
- Security Patch - 5.6.8
- Security Patch - 5.6.7
- No Patch Release - 5.6.6 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node][/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).