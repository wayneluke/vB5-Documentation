# vBulletin 5.6.7 Changes and Updates

vBulletin 5.6.7 is available for all download customers. vBulletin Cloud upgrades will be performed soon.

## Front End Changes

### Display Name

New functionality was added to allow for Display Names. Display names work in conjunction with user names and are not unique. This would allow two users to identify as "Robert Smith" when this functionality is needed. In new registrations, Display Names will default to the username created. Administrators can assign display names in the AdminCP by editing the user. There is an option under Settings -> Options -> User Profile Options to allow users to edit their display names. At the same location, there is also an option to limit the number of times a user can change their Display Name per day.

When used, Display Names will appear at most locations that would show the User Name in previous versions. In some locations, both the Display Name and User name will appear to increase clarity between different users.

### Hashtag Support

Users can now create [noparse]#hashtag[/noparse]s in their content to link the content to tags, existing channels, and specific nodes (via nodeid). Hashtags will allow better organic categorization of your content. If you wish to promote specific tags as hashtags on your site, you can create them in the AdminCP under Tagging -> Tags.

Types of Hashtags allowed:

- Tag: These will match tags that currently exist on your system.
- Channel Name: This will match any of your existing channels. After saving the hashtag will be replaced with a link to the channel specified.
- Node ID: Allows you to create links to any specific node on your site. This will pull the node title and use it as the link. 

After the user types the # (hash) and three characters the system will automatically pop up a search box of results they can select from. As they continue typing, the results will be refined. This allows user to easily find the content that they want as a link.

### Additional Issues
- Updated the display of Name Cards based on customer feedback.
- Name Cards are now rendered on request via AJAX. This was done to reduce the initial download size of pages and resolve some HTML formatting issues.
- Updated the Photo Title UI so that it works properly when reusing photos in an existing Album.
- Resolved minor issues with @username lookups in the system.
- Resolved an issue in Apple Safari where using the @username lookup can delete the content of the entire post.
- Events will be included in Outgoing RSS Feeds. The text content of event posts will be included in outgoing RSS Feeds. Users will need to continue visiting the site to view the event details.
---

## Back End / AdminCP Changes

- Added options to control the use of Display Names under Settings -> Options -> User Profile Options. See the inline help for more information on these new options.
- The unused Log4PHP library has been removed. Delete this directory from /core/libraries. This library was used for debugging in early versions of vBulletin 5 but is no longer updated by its creator.
- Removed the obsolete AIM and MSN messenger fields from the user table. Several other fields have been converted to VARCHAR fields. This row size of this table causes issues when used in a database with compact row formatting. Removing and reformatting how fields are stored is the only way to fix this easily.
- Code Cleanup in various directories. This is to bring older code up to current coding standards, fix warnings and deprecations caused by new versions of PHP, and remove unused code from the system.

---

## Deprecated

### PHP 7.3

PHP 7.3 has reached End of Life status on December 6th, 2021.  The minimum required version of PHP is now PHP 7.4

### MySQL 5.6.X

MySQL 5.6 has reached End of Life. The MariaDB equivalent is 10.0. Make sure to upgrade your server to MySQL 5.7 or higher (MariaDB 10.2 or higher) as soon as possible.

---

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) within the vBulletin 5 Installs & Upgrades forum.

### System Requirements

Minimum System Requirements

- PHP Version: 7.4.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.1.0

Recommended System Requirements

- PHP Version: 8.0 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.6+

For more information see: [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.6.7
- Security Patch - 5.6.6
- Security Patch - 5.6.5
- No Patch Release - 5.6.4 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node]4467311[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).