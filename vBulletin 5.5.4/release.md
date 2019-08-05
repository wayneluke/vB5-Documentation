# vBulletin 5.5.4 Changes and Updates

## Front End Changes

### Avatars as Status Icons

A new option has been added to show the user's avatar instead of the status icon in Topic Lists. This allows the system to be consistent with the responsive view when using small screen devices. All views will display the same icons based on this option. You can access the option in the AdminCP under `Settings -> Options -> Topic Display Options`

### Semantic HTML

By using semantic HTML tags, we can provide additional information to search engines and accessibility tools (e.g Screen Readers). Using these tags allows the system to signify which information is more important on the page.

We have converted the header, footer, and Channel Navigation Modules to better use Semantic HTML tags. The system is now using the &lt;header&gt;, &lt;footer&gt;, &lt;nav&gt;, and &lt;main&gt; tags where appropriate. Header elements are wrapped in the &lt;header&gt; tag instead of using the &lt;div&gt; tag. Footer elements on each page now use the &lt;footer&gt; tag. Menus and breadcrumbs are wrapped in the &lt;nav&gt; tag. The primary content of each page now uses the &lt;main&gt;. We have worked to make these changes backwards compatible and you should not see any difference in the rendering of your pages. However, if your custom CSS targets container.class (e.g. div.header) then you will need to update your CSS for these changes.

---

## Back End / AdminCP

### Style Variable Validation

As a security measure, we have applied a series of validation rules to CSS attributes entered as Style Variable values and in User Profile Customization. These rules limit the amount of CSS that can be added to a variable and prevent users from adding their own attributes using third-party software to alter the page. As an Administrator, you can apply more complex CSS using the css_additional.css template for your style.

The following validation rules have been added to the system:

1. Default
2. URL
3. Image
4. Font Family

### Frame Restrictions / Anti-Clickjacking

We have added several options to control how your site can be embedded in frames. Embedding a website within another is a frequent method used to PHISH for user data. vBulletin now allows you to prevent this and control where your site appears. This security measure will help safeguard your user's information and your site overall.

The options can be found in the AdminCP under `Settings -> Options -> Server Setttings and Optimization Options`

Note: These options are not available to vBulletin Cloud Administrators. The vBulletin Cloud system already handles them.

### Content Notifications

Administrators can specify words that will trigger notifications when they are used. The system works similarly to the existing word censor options. After you have created your list of words, the system will monitor them. When a word is used, the site Administrators and Moderators will be notified via their message center and email based on their notification settings.

The option for this is available in the AdminCP under `Settings -> Options -> User Banning Options`.

### Imagick PHP Class

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

### Current Version Support Schedule

It is recommended to use the latest version of vBulletin at all times.

- Active Version - 5.5.3
- Security Patch - 5.5.2
- Security Patch - 5.5.1
- No Patch Release - 5.5.0 or earlier.

### Discussion

If you have any questions about these changes you may discuss them here: [node][/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).
