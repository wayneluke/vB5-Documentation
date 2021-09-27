# vBulletin 5.5.2 Changes and Updates

vBulletin 5.5.2 is now available by licensed download customers. vBulletin Cloud customers will be notified when their sites are scheduled to be upgraded.

## Front End Changes

### Groups

We have made a number of changes to the functionality of Groups. Many of these changes are centered around the display of Groups in order to bring more attention to the functionality. The display of Groups has been updated to support a grid-based card layout in addition to the current List layout. The new layout should encourage users to create their own groups and augment the content on your site.

![groups image](imagepath)

Additional functionality changes include:

- My Groups shows all groups where you are a member. Not just groups that you own.
- Group Descriptions can now contain BB Code.
- Group Images that are smaller than 200 X 200 pixels will be enhanced with an automated background color.

Related Issues: [VBV-12379](https://tracker.vbulletin.com/vbulletin5/issues/VBV-12379), [VBV-19209](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19209), [VBV-8135](https://tracker.vbulletin.com/vbulletin5/issues/VBV-8135), [VBV-19298](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19298), [VBV-19303](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19303), [VBV-19297](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19297), [VBV-19278](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19278), [VBV-12951](https://tracker.vbulletin.com/vbulletin5/issues/VBV-12951)

### Accessibility

We've restored functionality for using the outline property on links and have applied CSS so that it better matches your style. This property highlights the [focus](https://developers.google.com/web/fundamentals/accessibility/focus/) of the currently selected element, primarily links. Originally, this was removed from many elements due to aesthetic reasons. That decision created issues when navigating using the keyboard and has been reversed. Removing the outline of links causes problems for individuals with vision problems. When using tab key to move from element to element on a page they will be properly highlighted with a dotted outline.

You can override this with custom CSS using the [outline](https://developer.mozilla.org/en-US/docs/Web/CSS/outline) property.

Related Issue: [VBV-19119](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19119)

### Channel Performance

Changes have been made to how a list of topics is retrieved within a channel. These changes should provide performance benefits in channels with a large number of topics. In addition to this, the node count of channels should be more accurate overall.

If you experience any performance issues due to this change let us know as soon as possible.

Related Issues: [VBV-19175](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19175), [VBV-19195](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19195), [VBV-19210](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19210)

### Permissions - Viewable on Member's List

This permission has been restored and is now functional. When setting this permission to No for a usergroup, those users will not be listed within the Member's List module. We have set the default values for this permission to Yes on various usergroups. This was done to provide functionality similar to vBulletin 4.2.5. Please review your permissions to make sure this value is set correctly for your site.

Related Issue: [VBV-10641](https://tracker.vbulletin.com/vbulletin5/issues/VBV-10641)

### Miscellaneous Changes

- [VBV-19197](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19197) - Do not parse smilies within the [attach] BB code.
- [VBV-13796](https://tracker.vbulletin.com/vbulletin5/issues/VBV-13796) - Photo gallery page is missing breadcrumbs.

---

## Back End / AdminCP Changes

### Authorize.net Hashing Updated

Due to changes in API processing from Authorize.net, the system will generate SHA256 hashes for communication. These new hashes will be required after you upgrade to vBulletin 5.5.2. If you use Authorize.net, you will need to generate a signature key for your Authorize.Net merchant account and update your Authorize.Net payment settings in the Admin CP.

> Note: These changes require that the [hash library](https://www.php.net/manual/en/book.hash.php) is enabled in PHP. When enabled you can see this library listed in your View PHP Info output within the AdminCP under Maintenance.

Related Issue: [VBV-19100](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19100)

### CSS File Output

When using "Store CSS and SVG as files" (recommended), the system will only write the files for Styles marked as active in the AdminCP. A style is considered active if it is assigned to a Channel within the Channel Manager or the Style is checked within the Style Manager. This provides a performance improvement when rebuilding styles during installs and upgrades or choosing to rebuild styles from the AdminCP or tools.php file. It will also provide a minor benefit in the space needed to store vBulletin's files.

This change also applies to the install and upgrade scripts. This should improve upgrade times and reduce server timeouts if you are using a provider such as GoDaddy.

If a non-active style is used by clicking on its title in the Style Manager, the system will revert to retrieiving the information from the database for that style.

Related Issue: [VBV-19274](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19274)

### Rebuilding the Search Index

In some cases, the Search Indexing tool would fail. This would prevent content created before upgrading to vBulletin 5 from being indexed. In order to resolve this issue, the tools to rebuild your search index after migrations or upgrades have been refactored. In addition to resolving this issue these tools are now able to index sites faster than before.

Related Issues: [VBV-14529](https://tracker.vbulletin.com/vbulletin5/issues/VBV-14529), [VBV-13834](https://tracker.vbulletin.com/vbulletin5/issues/VBV-13834)

#### AdminCP Indexing Changes

1. While reindexing within the AdminCP, vBulletin will attempt to increase the PHP memory limit to 256M. Provided that is permitted by the server configuration.
2. The "start nodeid" now does what it says. If provided we start the index at that node id. Previously it was an offset into the node list. Mostly it's useful because you can restart the index by giving it the "last node updated" value that is now displayed when a batch finishes.
3. The Default batch size at 250. This can be increase to provide more efficient reindexing. However larger batches will require more memory and are more likely to time out. We recommend using Command Line Indexing and/or Sphinx Search on larger sites.

#### Command Line Indexing

Using the command line indexing tool (`/do_not_upload/searchindex.php`) can provide a more efficient reindexing experience due to removing the overhead of a web interface.

This tool now supports command line parameters.

Example:

`$ php searchindex.php [--batch=5000] [--memory=700M] [--startnode=600]`

- batch: The number of nodes that are processed per batch.
- memory: Will attempt to increase the memory allocated to PHP. This values follows the rules for PHP config either number of bytes or you can use K, M or G as a shorthand.
- startnode: This tells the script which node to start the indexing process at. The startnode parameter is primarily used for restarting a process that failed at some point. The script's output will now give you the "last processed node" for reference.

---

### Additional Changes

- [VBV-9482](https://tracker.vbulletin.com/vbulletin5/issues/VBV-9482) - Paid Subscriptions - Hard coded currency needs to change
- [VBV-19206](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19206) - Create 32-bit API Key on generation.
- [VBV-19217](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19217) - Prevent ClickJacking.

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

- PHP Version: 7.3 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

#### MySQL Deprecation

Versions of MySQL older than 5.6.10 and MariaDB older than 10.0.0 are now deprecated. Older versions of these database servers are no longer supported by their developers. While vBulletin will remain functional using these older versions for the time being, support for them may be dropped in the future without further notice. Please make plans to upgrade to a non-deprecated version. vBulletin System Requirements have been updated to reflect this.

### Current Version Support Schedule

- Active Version - 5.5.2
- Security Patch - 5.5.1
- Security Patch - 5.5.0
- No Patch Release - 5.4.5 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4413190[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).