# vBulletin 5.7.2 Changes and Updates

vBulletin Connect 5.7.2 is now available to download. vBulletin Cloud customers will be upgraded automatically over the next couple of weeks.

## Custom Node Fields

This new feature allows Administrators to define text and text area fields that are assigned to channels. When a user creates a new topic, defined custom node fields will be available.
​
## How it works

1. The Administrator will create Field Categories in the AdminCP. Each category is assigned to one or more channels.
2. Within each category, the Administrator can create one or more fields that will get assigned to individual nodes.
3. When the End-User creates a new topic in that channel, the fields are available above the standard editor.
4. When the user saves their post, each field with a value will be shown above the post text in a key-index table.
  - When saved, the field values are attached to the node. So if the node is moved to another channel, the field values will travel with it.
  - These fields only appear on the starter post.
  - The system will not show any field without a value assigned in the post.

Additional images are available in the gallery below.

## URL Previews

The URL BBCode has been reworked to pull more information about the link. If you place the URL on its own line, it will behave similarly to the Link Content type after posting. Previews will include pulling a thumbnail and description from the linked site.

![Link Preview](images/linkpreviews.jpg)

- Inline links will work the same as always, as the new behavior isn't suited to inline display.
- If you wish to turn this feature off, you can do so in the AdminCP under Settings -> Options -> BB Code Options. Set the Show URL Previews option to No.


## PHP 7.4.X Deprecation

With the release of the next version of vBulletin, we will no longer support PHP 7.4.X. As of November 28th, 2022, PHP 7.4.X is EOL (End Of Life). Due to this, it is recommended that all customers upgrade to PHP 8.0 or higher as soon as possible.

## Additional Issues

- Resolved an issue that prevented proper resizing video thumbnails in responsive views.
- Firebase Messaging Keys can be tested in the AdminCP under Maintenance -> Diagnostics.
- The system will now correctly delete sub-channel routes when you delete the parent channel.
- Page navigation data will no longer be cached.
- Updated several AdminCP Manager pages to use standardized code generation.
- Added a new method to update a user's password to tools.php
- Resolved an issue that could result in PHP Warnings using Style Variable inheritance.
- Resolved additional PHP warnings in the AdminCP.
  
---

## Install / Upgrade Information

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

With each version release, some files become obsolete. These files are mainly the Javascript Rollup files which are version stamped. However, occasionally PHP files will be refactored and removed from the distribution package. After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

Minimum System Requirements

- PHP Version: 7.4.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

Recommended System Requirements

- PHP Version: 8.0 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information, see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.7.2
- Security Patch - 5.7.1
- Security Patch - 5.7.0
- No Patch Release - 5.6.9 PL1 and earlier

### Discussion

If you have any questions about these changes, you may discuss them here: [node]4477009[/node]

If you find an issue with the software or request a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).