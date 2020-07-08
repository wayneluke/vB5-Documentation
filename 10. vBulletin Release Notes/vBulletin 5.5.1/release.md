# vBulletin 5.5.1 Changes and Updates

vBulletin 5.5.1 is now available for testing by licensed download customers. 

## Front End Changes

### Responsive Editor Toolbar

The editor tool bar will automatically collapse and show the most used functionality based on your screen size. This change will allow more space to create posts and topics on devices with smaller screens. The hidden tools are still available by tapping on the ellipsis (&hellip;) at the end of the menu.

Related Issues: [VBV-18981](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18981), [VBV-19101](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19101)

### Photo Gallery Layout

Photo Gallery content has been updated to use Flexbox CSS. This allows your device to format rows of images for a better presentation. This change allows your Photo Galleries to respond to your settings better. Instead of changing CSS to change the size of your thumbnails, you can simply change the thumbnail size and rebuild them. The benefit to your users is to be able to present Photo Gallery and Album content using larger images in the initial display.

Related Issue: [VBV-17720](https://tracker.vbulletin.com/vbulletin5/issues/VBV-17720)

### Font Handling

Building on changes to font handling in the previous release (vBulletin 5.5.0), we have made further changes to support better customization.

- Line Height is now specified within Font style variables for easier maintenance.
- More areas of the site now work better with larger fonts (20 pixels and higher).
- When editing a font style variable, you can also specify the line height value for better layout and typography.

Related Issues: [VBV-13877](https://tracker.vbulletin.com/vbulletin5/issues/VBV-13877), [VBV-19058](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19058), [VBV-19060](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19060), [VBV-19109](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19109), [VBV-18953](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18953)

## Miscellaneous

- [VBV-18024: Add Template Hook for Categories in display_Forums_list](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18024)
- [VBV-18874: Add unread class to unread topic](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18874)
- [VBV-8965: Moderators lack the ability to view (frontend) user profiles under specific conditions](https://tracker.vbulletin.com/vbulletin5/issues/VBV-8965)
- [VBV-18899: List and indent editor button images not displayed when editing a post in RTL](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18899)

---

## Back End / AdminCP Changes

### Performance

#### Node Table

An index has been added to the `node` table. This index will increase performance when retrieving content after a new post has been created. Due to changing the `node` table, this change can take a significant amount of time on larger sites during the upgrade process.

Related Issue: [VBV-19073](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19073)

#### Upgrading

The upgrade scripts have been optimized to improve the performance of upgrading from vBulletin 3 and vBulletin 4.

Relate Issues: [VBV-19141](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19141), [VBV-19140](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19140), [VBV-19122](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19122), [VBV-19097](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19097), [VBV-19095](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19095)

### IP Address Search

The functionality to search IP Addresses by User Name or IP Address has been returned to the AdminCP. This includes finding users and posts by IP Address.

To access this functionality in the AdminCP go to `Users -> Search IP Addresses`

Related Issues: [VBV-11918](https://tracker.vbulletin.com/vbulletin5/issues/VBV-11918), [VBV-19088](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19088), [VBV-18689](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18689), [VBV-1312](https://tracker.vbulletin.com/vbulletin5/issues/VBV-1312), [VBV-14221](https://tracker.vbulletin.com/vbulletin5/issues/VBV-14221), [VBV-13185](https://tracker.vbulletin.com/vbulletin5/issues/VBV-13185)

### Search Indexing

When indexing posts, the system will index words containing hyphens now. Previously if a word contained a hyphen it was broken into two words and each indexed separately. If one word was below the minimum character threshold, it was discarded. This made searching more difficult on some sites. Now the system will index each word segment along with the original hyphenated word.

Examples:

- Previous versions: alpha-beta was indexed as two words alpha and beta.
- vBulletin 5.5.1: alpha-beta will be indexed as three words alpha, beta, and alpha-beta.
- Previous versions: z-wave was indexed as wave. The z will be discarded because it is less than 4 characters.
- vBulletin 5.5.1: z-wave will be indexed as wave, z-wave.

In order to take advantage of this change, you will need to reindex your search engine in the AdminCP, using the PHP commandline script provided or within Sphinx. This will depend on your configuration.

Related Issue: [VBV-12167](https://tracker.vbulletin.com/vbulletin5/issues/VBV-12167)

### Daily & Weekly Email Digests

This functionality has been refactored for better reliability. The Scheduled Task for this fuctionality will work automatically now. We've also added the display of Topic Prefixes to the outgoing emails.

Related Issues: [VBV-9476](https://tracker.vbulletin.com/vbulletin5/issues/VBV-9476), [VBV-13074](https://tracker.vbulletin.com/vbulletin5/issues/VBV-13074), [VBV-19134](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19134)

### XML Site Map

Updated the generation routines of the XML Site Map Generator to better account for recent changes to the vBulletin Routing API. This includes properly routing sub-content from a new home page and supporting the route by node functionality. A number of pages that shouldn't be indexed or viewable by guests have been removed from the generated files.

Related Issuses: [VBV-19154](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19154), [VBV-19009](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19009), [VBV-18319](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18319)

### Scheduled Tasks

Some minor changes have been made to the scheduled task system in order to aid in troubleshooting issues.

- [Allow vbcron.php to run specified crons](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19132)
- [Log exceptions in the digest crons](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19133)

---

All Resolved Issues can be found in Bug Genie's [Roadmap](https://tracker.vbulletin.com/vbulletin5/issues/find?fs[project_id][o]=%3D&fs[project_id][v]=1&fs[issuetype][o]=%3D&fs[issuetype][v]=&fs[status][o]=%3D&fs[status][v]=&fs[category][o]=%3D&fs[category][v]=&sortfields=issues.last_updated%3Dasc&fs[text][o]=%3D&fs[text][v]=&scs_current_template=&template=results_normal&template_parameter=&grouporder=asc&groupby=&issues_per_page=50&fs[milestone][o]=%3D&fs[milestone][v]=58&filters_milestone_value_58=58).

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

#### MySQL Deprecation

Versions of MySQL older than 5.6.10 and MariaDB older than 10.0.0 are now deprecated. Older versions of these database servers are no longer supported by their developers. While vBulletin will remain functional using these older versions for the time being, support for them may be dropped in the future without further notice. Please make plans to upgrade to a non-deprecated version.  vBulletin System Requirements have been updated to reflect this.

#### Minimum System Requirements

- PHP Version: 7.1.0
- MySQL Version: 5.6.10
  - MariaDB Version (alternative to MySQL): 10.0.0

#### Recommended System Requirements

- PHP Version: 7.3.0 or higher
- MySQL Version: 8.0 or higher
  - MariaDB Version (alternative to MySQL): 10.3+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

### Current Version Support Schedule

- Active Version - 5.5.1
- Security Patch - 5.5.0
- Security Patch - 5.4.5
- No Patch Release - 5.4.4 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node]4409010[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).