# vBulletin 5.6.2 Changes and Updates

vBulletin Connect 5.6.2 is now available for download customers. vBulletin Cloud will be automatically upgraded in the upcoming days.

## Front End Changes

### Global Module Areas

Two new module sections have been added to Site Builder Pages. Placing a module within the new sections will cause it to appear on all pages. The new sections appear above and below the content areas on the page.

### Forum Listing Cleaned Up

Removed the extraneous category backgrounds above top-level forums in the default presentation. This presents a clearer view of the forums to the end-user and brings the display in line with older versions of vBulletin.

### Moderator Notifications

New moderator notifications have been added to the User Settings -> Notifications page. The settings to control these notifications are designed to replace the Moderator Email controls in the AdminCP and shift the control to the end-user. They will only appear to users that already have moderator permissions. Currently, there are four different notifications that a moderator can receive. These are:

- SPAM Trigger (Settings -> Spam Management)
- Monitored Words (Settings -> Options -> User Censorship Options)
- Unapproved Post (Channel Permissions, Skip Moderation Queue)
- Reported Post (End-user clicks on the Flag Report link)

### jQuery Update

jQuery 3.41 is now used to power the web client. During the process of upgrading jQuery, many of the JavaScript functions have also been updated and refactored. During this refactor, we have switched the JavaScript compiler to a more efficient and up to date tool. This will allow JavaScript to be handled better by your browser.

### Additional Frontend Issues

- Resolved an issue where Articles were sorted by the last comment date and not published date.
- Renamed the Activity Stream module on the default Home Page to Forum Home module. This better reflects its purpose.
- Updated the layout of Site Builder's Page Editor to allow for proper module spacing.
- Updated node parsing to prevent extraneous JSON from appearing after attachment deletion.
- Resolved an issue where Code, PHP, and HTML BBCode can have an improper height.
- Resolved an issue that prevented pagination on the Members List when using a non-English language.
- Resolved an issue that could show incorrect content based on caching and the use of is_member_of() based conditionals.

---

## Back End / AdminCP Changes

### Setting -> Option Groups

To make URL options easier to locate, all URL Options have been moved to a new group called "Site URLs and Routing".  In addition to this, the following changes have been made:

- The Site Name / URL / Contact Details group has been renamed "Site Name / Contact Details"
- The Human Verification Group has been removed. The single option from this group can now be found under Settings -> Human Verification Manager.

### Convert URLs to ASCII

An option has been added to convert URLs to ASCII format. When enabled, the system will automatically convert the UTF-8 characters in new topic titles to their ASCII representation. Turning this on will not necessarily change old content. However, if you edit the content the URL will be converted. The conversion is based on the user's active language settings at the time.

You can find this option in the "Site URLs and Routing" group.

### Delete Private Messages

A tool has been added to mass delete private messages in the AdminCP. It can be found under Node Tools. The tool will search and delete private message topics based on the criteria given. Depending on its settings there is the potential to delete active conversations. Private Messages deleted with this tool cannot be retrieved.

### Date Handling

New utility functionality has been added to help convert date() and strftime() formatted dates into a more consistent format throughout the system. These changes should make dates more consistent within translations that must use a Locale to support UTF-8 character sets.

### Additional Backend Issues

- Moderators should not be sorted by username on the Moderator Permissions page.
- Registration Statistics should work properly.
- Added a button to copy the text of the default phrase to the Help Manager to allow for easier translations.

---

## Member's Area Downloads

Starting with this preview release of vBulletin 5.6.2, downloads from the Member's Area will use the PHAR download option by default. This option will reduce the number of files needed for vBulletin to run on your server.

For more information please see this [forum topic](https://forum.vbulletin.com/node/4404840)

> Note: If you wish to use the uncompressed version of vBulletin, you can still do so by customizing your download.

---

## Additional Information

### Install / Upgrade

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

- Active Version - 5.6.2
- Security Patch - 5.6.1
- Security Patch - 5.6.0
- No Patch Release - 5.5.6 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4441630[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
