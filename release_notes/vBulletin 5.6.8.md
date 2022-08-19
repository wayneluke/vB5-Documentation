# vBulletin 5.6.8 Changes and Updates

## Front End Changes

### Embedded Media

vBulletin now recognizes audio and video media files that have been attached to a post. Videos can be inserted inline after uploading using the [noparse][video][/noparse] bbcode. Audio attachments will display audio controls within the Attached Files box at the bottom of the post. End users will be able to use standard playback controls to view videos and listen to uploaded audio.

### Additional Issues

- Improved parsing on URLs embedded within the editor. This will prevent more instances of automatic parsing within other BBCodes.
- Video thumbnails will now show at the same size as the video. This prevents the "resizing" of videos when played.
- Resolved an issue where the Breadcrumb wrapper may render at an improper width.

---

## Back End / AdminCP Changes

### Handling Media File Types

Media files will be large so you will need to configure your site to accept them. They will range in size from a few megabytes to multiple gigabytes depending on the content. It is recommended that attachments are stored in the file system and not the database.

Media files come in several different formats. The base format that the end-user sees is called a container. Within this container, there will be multiple files/streams of audio and/or video. Whether individual streams can be played on the end-user's computer will depend on the Audio and Video codecs they have installed and the browser they are using.

The most commonly accepted containers are MP3 for Audio and MP4 for Video. These may not be the most efficient file types for this content though. These links provide more information about media file formats: https://developer.mozilla.org/en-US/docs/Web/Media/Formats/Containers

#### Media Formats For vBulletin

Audio and Video formats are not defined in a default installation. If you wish to use these file types, you will need to configure them in the AdminCP under Attachments -> Attachment Storage Types.

While there are many different audio and video formats, these formats are recommended for the widest acceptance across devices. 

| Extension|  Type  | Content Header           |
|----------|--------|--------------------------|
| .mp3     | Audio  | Content-type: audio/mpeg |
| .mp4     | Video  | Content-type: video/mp4  |
| .webm    | Video  | Content-type: video/webm |

However, vBulletin will automatically detect if an attachment is audio or video automatically based on the content-type header that you assign.

If you need to convert a video from one format to another, it is recommended that you use the open-source tool [Handbrake](https://handbrake.fr/). This software is available for Windows, macOS, and Linux.

### Updated Database Tools

The utf8convert.phar script has been updated to handle multibyte character sets (e.g. Arabic) better. The varbinary fields used to convert the data have been made larger to account for larger character sizes being stored.

### Additional Issues

- Continued code cleanup for newer versions of PHP and removing obsolete code.
- Added permission to allow Guest Users to see "Who Liked" a post.
- When parsing text on saving, mbstring functions now have priority over iconv functions. This prevents an issue that can cause slow processing on new posts.
- Resolved an issue that could cause a fatal error when creating a new channel with a custom style assigned.
- Removed the obsolete node library function fetchAttachInfo
- Fixed mbstring charset issues with cp1256
- Added PHP Hooks for posting comments.

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

- Active Version - 5.6.8
- Security Patch - 5.6.7
- Security Patch - 5.6.6
- No Patch Release - 5.6.5 and earlier

### Discussion

If you have any questions about these changes you may discuss them here: [node]4469969[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).