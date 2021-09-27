# vBulletin 5.6.3 Changes and Updates

vBulletin 5.6.3 now available for download customers. Cloud customers will be automatically upgraded in the coming weeks.

## Front End Changes

### Censored Word Handling

The handling of administrator-defined censoring has been refactored and applies to more locations now. With vBulletin 5, word censorship is applied on display and not save. This provides the benefit of maintaining the actual words. For example, if you remove a word from the censor list, it can be recovered in the content. In the past, several locations of word censorship were not appropriately handled. Words are now censored correctly in the following areas:

- Topic Titles.
- Topic URLs.
- Post content, including replies and comments.
- Search Results.
- User Profile Status.

### Tags

- Improved the ability to search for posts by indexing tags as keywords. This change will allow for tag searching using the simple search box in the header of every page.
- Improved the handling of tag synonyms on the new topics. Previously, when a tag is automatically converted to a synonym, an error dialog would display and break the workflow. This would give the appearance that the post had not been saved. The display of this message has changed. Now the message will display at the top of the screen for five seconds. The new message display does not disrupt the workflow when creating new topics.

### Ignored User Handling

We have updated the caching of ignored users. This change will allow the ignored user functionality to work as designed in topic lists, topic display, and searches. There is still a known issue where the ignored user will continue to appear in the "Last Post" information box of a topic list.

### Additional Issues

- Administrators can edit a user's status by visiting the user's profile page.
- Moderator Notifications are now marked auto-read when visiting the topic.
- Resolved a layout issue with the user information in a post and using RTL Languages.
- Custom Icons now display for sub-forums in the forum list.
- Latest Activity searches should now correctly display topics created before the lookback period.
- Added a style variable for the "Mark Channels Read" phrase.

---

## Back End / AdminCP Changes

### Phrase Censoring / Monitoring

In addition to the visual changes on the front-end, you can now censor phrases if you wish. You would do this by surrounding the words with braces - {}. An example would be {brown dog}. This formatting will censor the phrase brown dog but not the words brown and dog individually.

The Word Monitoring and User Title Censorship options also support phrase handling.

### Option Groups

vBulletin 5 has a large number of settings within the AdminCP. From time to time, we review these options and remove those that are no longer needed. We have combined the Content Management and Blog groups with the Channel Management group. Unused options have been removed from the Message Attachment and the Channel Display groups.

If you cannot find the option that you are looking for, please use the filters or the AdminCP search. If you need additional assistance, please contact [Support](https://forums.vbulletin.com).

### Additional Issues

- Resolved an issue that could prevent Private Messages from being deleted when using Node Tools.
- A misspelled function name could prevent RSS Scheduled tasks from running.
- Improved the navigation of the AdminCP to accommodate longer phrase translations.
- Consolidated several phrases for "Groups."

---

## MySQL 5.6.X Deprecation

MySQL 5.6 will reach End of Life in February 2021. Due to this, we are encouraging customers to to upgrade to MySQL 5.7+ or MariaDB 10.3+. While vBulletin will remain functional using these older versions, support for them can change in the future without further notice.

Please watch the Minimum Requirements for vBulletin in our official release announcements and this [forum topic](https://forum.vbulletin.com/node/4387853).

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can find more information on file cleanup in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### Included Libraries

vBulletin includes several external libraries to provide functionality within the system.

- Javascript
  - [jQuery 3.5.1](https://jquery.com/)
  - [jQueryUI 1.12.1](https://jqueryui.com/)
  - [CKEditor 4.13.0](https://ckeditor.com/ckeditor-4/)
  - [Blueimp](https://github.com/blueimp/jQuery-File-Upload)
  - [Flatpickr](https://flatpickr.js.org/)
- PHP
  - [GuzzleHTTP](http://docs.guzzlephp.org/en/stable/overview.html)
  - [Facebook SDK for PHP](https://github.com/facebookarchive/php-graph-sdk)
  - [Apache Log4PHP](https://logging.apache.org/log4php/index.html)
  - [Portable ASCII](https://github.com/voku/portable-ascii)

### System Requirements

#### Minimum System Requirements

- PHP Version: 7.2.0
- MySQL Version: 5.6.10 or MariaDB Version: 10.1.0

#### Recommended System Requirements

- PHP Version: 7.3 or higher
- MySQL Version: 8.0+ or MariaDB Version: 10.3+

For more information, see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.6.3
- Security Patch - 5.6.2
- Security Patch - 5.6.1
- No Patch Release - 5.6.0 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4413190[/node]

If you find an issue with the software or wish to place a feature request, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Products, please visit our [community forums](https://www.vbulletin.com/forum/).
