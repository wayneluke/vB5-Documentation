# vBulletin 5.5.6 Changes and Updates

## Front End Changes

### CKEditor Update

The version of CKEditor distributed with vBulletin is now 4.13.

#### Emoji Support

Emoji are similar to vBulletin's smilie functionality but are implemented via standard font characters instead of using images. When using a compatible database, you can enable UTF-8 Emoji within CKEditor. This allows over 1500 different emoji to be used by your users. Emoji can be selected from a panel in the Richtext Editor or by automatic lookup when the user is typing.

#### Drag and Drop Uploads

You can now drag and drop allowed files within the editor window. This will give users more control over images uploaded to their content.

---

## Back End / AdminCP Changes

### Suspect File Diagnostics

This utility will now scan all vBulletin directories and warn the user if the hash files are writable. This will allow better knowledge of what is installed in your vBulletin directory.

---

## Security

### .htaccess

The .htaccess file has been rewritten to improve overall security of the file system.

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

- PHP Version: 7.4 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.5.2
- Security Patch - 5.5.1
- Security Patch - 5.5.0
- No Patch Release - 5.4.5 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4413190[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
