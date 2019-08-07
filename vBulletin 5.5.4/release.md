# vBulletin 5.5.4 Changes and Updates

The Preview Release of vBulletin 5.5.4 is now available to download customers. Preview Releases should not be used on production servers and are for testing purposes only.

## Front End Changes

### Avatars as Status Icons

A new option has been added to show the user's avatar instead of the status icon in Topic Lists. This allows the system to be consistent with the responsive view. All views will display the same icons based on this option. You can access the option in the AdminCP under `Settings -> Options -> Topic Display Options`

### Semantic HTML

By using semantic HTML tags, we can provide additional information to search engines and accessibility tools (e.g. Screen Readers). Using these tags allows the system to signify which information is more important on the page.

We have converted the header, footer, and Channel Navigation Modules to better use Semantic HTML tags. The system is now using the &lt;header&gt;, &lt;footer&gt;, &lt;nav&gt;, and &lt;main&gt; tags where appropriate. Header elements are wrapped in the &lt;header&gt; tag instead of using the &lt;div&gt; tag. Footer elements on each page now use the &lt;footer&gt; tag. Menus and breadcrumbs are wrapped in the &lt;nav&gt; tag. The primary content of each page now uses the &lt;main&gt;. We have worked to make these changes backwards compatible and you should not see any difference in the rendering of your pages. However, if your custom CSS targets container.class (e.g. div.header) then you will need to update your CSS for these changes.

If you are using one of the provided styles, then you will not have to do anything to take advantage of this change.

---

## Back End / AdminCP

### Style Variable Validation

As a security measure, we have applied a series of validation rules to CSS attributes entered as Style Variable values and in User Profile Customization. These rules limit the amount of CSS that can be added to a variable and prevent users from adding their own attributes using third-party software to alter the page. As an Administrator, you can apply more complex CSS using the css_additional.css template for your style.

The following validation rules have been added to the system:

1. **Default**
    - Applies to all style variables unless specified below.
    - Limited to less than 250 characters.
    - Does not contain the characters "{}".
2. **URL and Image**
    - URLs must be quoted.
    - Unescaped braces "{}" are not allowed.
    - Base64 is allowed as long as there are no braces.
3. **Font Family**
    - No more than 20 font families listed.
    - Font Family list is comma separated.
    - Each font name is no more than 100 characters.
    - Font names with spaces must be enclosed within quotation marks.

### Security Headers / Anti-Clickjacking

We have added several options to control how your site can be embedded in frames. Embedding a website within another is a frequent method used to PHISH for user data. vBulletin now allows you to prevent this and control where your site appears. This security measure will help safeguard your user's information and your site overall.

These HTTP Headers are sent to the browser for interpretation. Each browser may interpret these headers differently.

The options can be found in the AdminCP under `Settings -> Options -> Cookie and HTTP Header Options`.

- **Anti-Clickjacking Headers**: This setting can be used to prevent your site from being included within HTML Frames. The default value will allow your site to be used in frames originating from the same URL. This will prevent sites that currently use frames from breaking. Setting this to Deny will prevent any framing. There are for options available:
  - Allow all Framing. This is how vBulletin works today. This option provides no security.
  - Deny all Framing. This is the most restrictive Option.
  - Allow from Same Site. Allows the system to be embedded in frames on your site. This provides basic security but will not break current sites. This will allow your site to be embedded in Frames that share the same domain as your Forum URL. Note: Accessing via domain name and IP Address will be considered two different sites.
  - Specify Raw Header Values. When this is selected, the system will not send headers unless specified in the next two options.
- **X-Frame-Options Header Value**: This setting allows you to specify a custom value for this header. This header is primarily for Internet Explorer 11 support. Please view the inline help for more information. This option is for Advanced Users and Network Administrators.
- **Content-Security-Policy Header Value**: This header is supported by all modern browsers and provides a robust framework for browser security. Please view the inline help for more information. This option is for Advanced Users and Network Administrators.

### Content Notifications

Administrators can specify words that will trigger notifications when they are used. The system works similarly to the existing word censor options. After you have created your list of words, the system will monitor them. When a word is used, the site Administrators and Moderators will be notified via their message center and email based on their notification settings.

The option for this is available in the AdminCP under `Settings -> Options -> User Banning Options`.

### PHP Imagick Support

We have added support for the PECL imagick class available for PHP. Using this class can reduce server overhead and processing time when compared to the ImageMagick command line tools using the exec() function. Please see the [PHP Documentation](https://www.php.net/manual/en/book.imagick.php) for information on installing this class on your server. Once installed, the class can be selected within the AdminCP under `Settings -> Options -> Image Settings`.

> Note: In a future version of vBulletin, we will be removing the older command line implementation of ImageMagick.

---

## Additional Information

### Install / Upgrade

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

### File Cleanup

After upgrading your vBulletin system, you should delete any possible obsolete files. You can obtain more information on why this is needed and instructions on how to do this in this [**topic**](https://www.vbulletin.com/forum/node/4391346) in the vBulletin 5 Installs & Upgrades forum.

### System Requirements

#### Minimum System Requirements

- PHP Version: 7.1.0
- MySQL Version: 5.6.10
- MariaDB Version: 10.0.0

#### Recommended System Requirements

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
