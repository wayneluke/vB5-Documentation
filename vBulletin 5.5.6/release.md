# vBulletin 5.5.6 Changes and Updates

A preview release of vBulletin 5.5.6 is now available to download customers. This version contains updates to the content editor and security tools within the software. Pre-release software should not be used on production servers. It is made available for testing purposes only.

## Front End Changes

### CKEditor Update

The version of CKEditor distributed with vBulletin is now 4.13. This brings the editor up to date with the vendor's distributed version. While the visible functionality will not have changed much, a lot has changed behind the scenes. For more information on changes please see the CKEditor [changelog](https://ckeditor.com/cke4/release-notes).

#### Emoji Support

Emoji are similar to vBulletin's smilie functionality but are implemented via standard font characters instead of using images. When using a compatible database, you can enable UTF-8 Emoji within CKEditor. This allows over 1500 different emoji to be used by your users. Emoji can be selected from a panel in the Richtext Editor or by automatic lookup when the user is typing.

#### Drag and Drop Uploads

You can now drag and drop allowed files within the editor window. This will give users more control over images uploaded to their content. To use this feature, users simply need to drag their attachments over the editor and drop them on the attachment panel. If the attachment panel is not open during the drag, it will automatically open.

## Forum Listing Depth

A depth setting has been added to the Activity Stream module (Forum Home Page) and the Sub-Channel Display module (used on individual channel pages). This setting allows a max depth of 1, 2, or 3 channels. The behavior varies depending on the use of Category channels at the top level. For example:

1. The home page allows showing Category (1) => Forum  (2) => Subforum (3). If you don't use category channels and have it set to 3, it will still only show Forum => Subforum when depth is set to 3. This is due to current limitations in the template code. This can affect the display if you have a mix of Categories and Forums that are not in categories. Setting this value to 1 or 2 will  hide subforum listings.
2. Forum channels typically show two levels as in Forum (1) => Subforum (2). At this time, the template system will limit this to a depth of 2 even if the value is set to 3.

## Other Issues

- Resolved an issue where the bread crumb links can be displayed off center in some themes.
- Modules now scroll a page at a time in the Site Builder Page Editor.
- Resolved an issue that resulted in large file sizes when resizing images.
- Resolved an issue that resulted in images being rejected before resizing.

---

## Back End / AdminCP Changes

### Notices

To continue the merging of Notice and Announcement functionality, a number of enhancements have been made to editing Notices in the AdminCP. These include:

- Notices now support BBCode in addition to HTML.
- Notices now support Smilie codes.
- URLs within Notices will be automatically parsed as links when the Notice is saved.
- Notices can be assigned to the "Home Page" channel in order to appear only on the default home page.

### Suspect File Diagnostics

The suspect file diagnostics has been rewritten and expanded to provide better file diagnostics. This utility allows you to quickly search for altered, missing, or extra files within your vBulletin directory. With the output provided and your own personal deployment records, you can use the Suspect File Diagnostics to help secure your server and make sure vBulletin's files are up to date. Several changes have been implemented:

1. A list of the checksum files used for comparison will be displayed at the top of the output.
1. A warning will be displayed if any of the checksum files are writable.
1. It will scan all vBulletin directories. If a directory is unknown, you will be informed of this fact.
1. Static files (i.e images, javascript, and css files) will now be scanned.
1. Problematic files will be listed at the top of the output.
1. Safe directories will be collapsed to simplify the output.
1. Additional file types will be checked. This includes .htaccess and image file extensions.

#### Known Limitations

- Templates stored in the file system can trigger false positives. By default, these are stored in the `/core/cache/template` directory. You can move these out of the vBulletin directory if you wish.
- Some optional directories will be ignored. Notably, the directories used when storing CSS as files. These directories should be inspected manually if you suspect issues.
- Several files will not be checked. These include `/.htaccess`, `/config.php`, and `/core/includes/config.php`. You will need to manually inspect these files if you suspect changes.

If you do not know how to manually inspect and update these files, the best course of action is to replace the files with new copies. If you need assistance please create a new topic in the appropriate forum.

### Style Variable Editor

The Style Variable Editor has been enhanced.

- The default view will only show variable groups. This simplifies the display and allows administrators to select a group of variables easier.
- The system will expand and contract the groups as you use them.
- When you search for one or more style variables, only the matches will be shown in a simplified list. Groups without a match will be hidden.

### User Profile Fields

An option has been added to the User Profile Field editor to show the field and its label in the User Info block of topic starters and replies. You can set this option by editing your existing User Profile Fields in the AdminCP. 

> Note: If you are using template hooks to display these, you would need to inactivate/delete those hooks to prevent the double display of fields.

## Security

### New Password Scheme

Support for the Argon2ID password hashing algorithm has been added to the system. This will be utilized if the server supports it. The server must be using PHP 7.3 or higher. PHP must be [configured](https://www.php.net/manual/en/password.installation.php) to allow the Argon2ID algorithm. More information can be found [here](https://www.erianna.com/introducing-support-for-argon2id-in-php73/). If Argon2ID is not available, the system will continue to use the BCrypt algorithm for password storage. The cost for BCrypt has been increased to account for newer processors.

For more information on password hashing please see the [PHP documentation](https://www.php.net/manual/en/function.password-hash.php).

These changes should be transparent to end users.

### Password Reset

A tool to invalidate all user passwords has been added to the AdminCP. This will update the password of all users except the currently logged in Administrator. Users will not be able to log in until they create a new valid password. This tool is located under Maintenance -> General Update Tools. For security purposes, this will only appear while the site is in [Debug Mode](https://www.vbulletin.com/go/vb5debug).

### File Permissions

We recommend making the vBulletin directories and files write-protected for security purposes. If you need assistance with this, please contact your hosting provider.

### .htaccess

The .htaccess file has been rewritten to help improve security of the file system. The changes prevent direct access of PHP files in a number of directories. This will not affect normal operations of vBulletin. It is recommended to use this file if you're using shared hosting.

The use of .htaccess files within sub-directories has been changed. This has resulted in the removal of these files in some directories as well as the addition of .htaccess files in others.

#### AdminCP Directory

The `/admincp/` directory in the vBulletin root has been removed for new installations. This directory is not needed for vBulletin to function properly. If you use the new .htaccess file provided in 5.6.0, you will need to delete this directory when upgrading.

---

## Additional Information

### Install / Upgrade

> Note: When upgrading to 5.5.6, make note of the changes to the file structure. Most notably, the /admincp directory has been removed. In addition to this, it is important to review the changes to the .htaccess file so that your site is as secure as possible.

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

Minimum System Requirements

- PHP Version: 7.1.0, See End of Life note below.
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 7.4 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

#### PHP 7.1 End of Life

Please note that PHP 7.1.X is now end of life. It is recommended that you upgrade to PHP 7.2 or higher as soon as possible. 

### Current Version Support Schedule

- Active Version - 5.5.6
- Security Patch - 5.5.5
- Security Patch - 5.5.4
- No Patch Release - 5.5.3 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4413190[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).

---

## Deprecated

### Announcements

We are currently in the process of merging Announcement and Notice functionality. After this is completed in an upcoming version, we will remove Announcements from the system. Merging these similar features will simplify code maintenance and allow us to provide more features to the Notice system over time.

### ImageMagick

Calling the ImageMagick executable directly has been deprecated in favor of using the imagick PECL library. We will remove direct support for ImageMagick in a future release. The imagick library functionality was added in vBulletin 5.5.4. We suggest updating your PHP installation to support imagick. You can find instructions on doing this in the [PHP Documentation](https://www.php.net/manual/en/imagick.installation.php).

### Internet Explorer Support

Internet Explorer 11 is currently supported but should be considered deprecated. Previous versions of Internet Explorer are not supported. We have removed some code specific to Internet Explorer from the system. This code had been added to support older versions of Internet Explorer. After upgrading, please make sure to follow the steps for [File Cleanup](https://www.vbulletin.com/forum/node/4391346). For more information on supported browsers please see the vBulletin [System Requirements](https://forum.vbulletin.com/node/4387853).

Users that access your site with IE should be encouraged to upgrade to the beta version of [Microsoft's Edge Browser](https://www.microsoftedgeinsider.com/en-us/) based on Chromium. This new browser is available for Windows 7, 8, 8.1, 10 and MacOS.
