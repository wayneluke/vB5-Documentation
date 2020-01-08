# vBulletin 5.6.0 Changes and Updates

## Front End Changes

### Login Refactor

Eliminate the iFrame. Updated functionality uses AJAX and Javascript to login instead of an HTML form submission. Rename the login template. If you use the login template in a module, you need to update the template display module.

### Password Security

Administrators can define password settings to encourage more complex passwords.

### Event Highlights

Site Administrators can define event highlights. These allow you to display events on the calendars with a different background color in order to categorize events. Event Highlights work similarly to Topic Prefixes and are selected when a new event is created or edited.

### Member List

- Layout has been simplified.
- Private Message/vBulletin Messenger link has been standardized.
- A search form has been added to the Member List module.

---

## Back End / AdminCP Changes

### Style Variable Editor

Variable inheritance has been improved while in debug mode. Now custom values will override the inherited value.

### Password Strength

---

## Tools

### Database Converter

A number of conversion issues have been found in the UTF-8 conversion scripts. These have been resolved.

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

- PHP Version: 7.3 or higher
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
