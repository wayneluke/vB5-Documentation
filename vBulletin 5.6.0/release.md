# vBulletin 5.6.0 Changes and Updates

A preview release of vBulletin 5.6.0 is now available for download. Preview releases are for testing purposes only and are not for use on production servers.

## Front End Changes

### Login Refactor

The mechanics behind user login have changed. The system no long utilizes an iFrame tag. Eliminate the iFrame. The updated functionality uses AJAX and Javascript to login instead of an HTML form submission.

If you use the login template in a module, you need to update the template display module to use the login_main template.

### Event Highlights

Site Administrators can define Event Highlights. These allow you to display events on the calendars with a different background color in order to categorize events. Event Highlights work similarly to Topic Prefixes and are selected when a new event is created or edited.

### Member List

A search form has been added to the Member List module. This will allow individuals to search the member list by username.

In addition to this, the following changes have been made:

- IPv6 display has been improved.
- The Private Message column has been removed.
- Private Message/vBulletin Messenger link has been standardized to be consistent with other locations in the software.

---

## Back End / AdminCP Changes

### Node Tools - Close

A new tool has been added to Node Tools in the AdminCP. This tool allows the mass closing of topics on your site.

### Password Strength

Settings in Settings -> Options -> User Registration Options.

### Style Variable Editor

Variable inheritance has been improved while in debug mode. Now custom values will override the inherited value.

---

## Miscellaneous

### Sphinx Search

SphinxSearch only supports "latin and cyrillic" (English, Russian) characters by default. If your forum is on utf8mb4 and you expect the searchable content to have characters outside of the default
(e.g. German, Korean, Arabic) you have to tell Sphinx to treat those characters as characters instead of delimiters. This is done by setting the "charset_table" option within the vbulletin-sphinx.php file when generating the index. We have provided character sets in the /do_not_upload/sphinxsearchfiles. You will need to make these files accessible to Sphinx through the configuration file. Details are outlines in the /vbulletin-sphinx.php file.

### File Structure

- The /images and /css directories have been consolidated and merged. Unnecessary image files have been deleted from the file structure.
- Unused images in the /core/images directory have been deleted from the download package.

### Database Converter

A number of conversion issues have been found in the database conversion scripts. These have been resolved.

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
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 7.4 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.5.6
- Security Patch - 5.5.5
- Security Patch - 5.5.4
- No Patch Release - 5.5.3 or earlier.

### Discussion

If you have any questions about these changes you may discuss them [here]().:

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
