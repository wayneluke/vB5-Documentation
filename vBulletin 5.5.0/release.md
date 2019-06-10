
# vBulletin 5.5.0 Changes and Updates

![header](header.jpg)

We're proud to begin the new year with a new version of vBulletin. These changes will apply to both vBulletin Connect and vBulletin Cloud unless otherwise noted. 

## Typography Changes

We have made several changes to how Typography or Fonts work within vBulletin to resolve several different issues that continually occur over time. These issues include display issues with scaling, the ability to support relative font sizes, and inheritance of font sizes. In order to resolve these issues, we've added two new style variables, changed the body_font style variable and reconfigured how fonts work in our default styles.

As part of this change, we have converted the CSS in vBulletin to use REM units instead of pixel units. REM stands for Root EM. It is a relative unit of measurement and relies on the end-user's browser to make the final determination of font size. REM is Relative to the size of the root element. The root element in vBulletin is the &lt;body&gt; tag. For backwards compatibility we have set this to a value of 10 pixels (62.5% of a browser's default 16 pixel font) so that it equals 10 pixels in most desktop browsers. This allows us to create different font sizes using modifiers to enlarge or shrink based on this starting point. Within the default vBulletin styles 1 REM equals 10 pixels, so 1.3 REM equals 13 pixels.

### Why Use REM?

The primary reason is the ease of use when you don't know what type of device is being used to view vBulletin. The software has to work on everything from 4 inch mobile phones to 27 inch monitors. Someone may even use it on their 60 inch television. In addition to this, each browser and operating system can adjust the font size. Most Web Browsers use a 16 pixel font as their baseline. If we set vBulletin to use 1 REM as its baseline, then it will use the same 16 pixel font. If someone changes their baseline font to 24 pixels, vBulletin will automatically adjust when using REMs. It will not if we use pixels. To accommodate multiple display devices and baseline fonts, REM was the best choice.

### Other Questions

- **How does this affect my current style?**
  - It shouldn't change the values on your current style. However, as is the case with all customizations, we suggest you test the changes before going live.
- **What if I want to continue using pixels?**
  - You still can. Style Variables still support this unit for fonts.

## Style Variable Changes

A new style variable group was created for the base font variables. It is called "Global." You can find this at the top of the Style Variable Editor.

- **root_font_size**: This new style variable allows you to set the base font size for the entire site. When using REM units, all other fonts are relative to this value. The default value of 62.5% sets the root font size to roughly 10 pixels when using the default font size set by your Browser.
- **global_text_font**: This style variable is thenew name for the body_font style variable. All content text inherits from this style variable. The default value for this is 1.3 REM. This restores the 13 pixel font size used previously in our themes.
- **global_header_font**: A new style variable used by headers throughout a vBulletin Site. This will allow you to easily use a different Header font in custom styles. The default size is 1.6 REM. This sets a base size of 16 pixels for headers.

For more information:

- [VBV-18879](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18879)
- [VBV-18844](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18844)
- [VBV-18867](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18867)

## Style Variable Editor

The Style Variable Editor has been improved with proper phrasing. Each Style Variable should have a proper title and description. The Style Variable Groups have also had their text converted to phrases. These changes will allow for translation and provide more inline help to Administrators.

For more information: [VBV-18866](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18866) and [VBV-7255](https://tracker.vbulletin.com/vbulletin5/issues/VBV-7255)

## Memory Usage

We've refactored how large topics are retrieved from the database. This has allowed us to significantly reduce memory requirements to show large topics. In our testing a 650,000 post topic had its memory requirement reduced from 540 Megabytes to about 70 Megabytes. We will continue to look for further performance enhancements in the software.

For more information: [VBV-17204](https://tracker.vbulletin.com/vbulletin5/issues/VBV-17204)

## Other Issues

- Resolved an issue with Search that would prevent the proper display of results. [VBV-17272](https://tracker.vbulletin.com/vbulletin5/issues/VBV-17272)
- Updated the order and grouping of the AdminCP Navigation. This is to improve the user experience. [VBV-18921](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18921)
- Cleaned up the Template Editor in the AdminCP to improve the user experience. [VBV-18968](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18968)
- The Database Repair/Optimize tools have been removed from the AdminCP. [VBV-18460](https://tracker.vbulletin.com/vbulletin5/issues/VBV-18460)

You can view all issues here: [5.5.0 Roadmap](https://tracker.vbulletin.com/vbulletin5/roadmap#roadmap_milestone_52)

## System Requirements

Minimum System Requirements

- PHP Version: 7.1.0
- MySQL Version: 5.5.8
- MariaDB Version: 5.5.8

Recommended System Requirements

- PHP Version: 7.2 or higher
- MySQL Version: 8.0 or higher
- MariaDB Version: 10.2+

For more information see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4391344).

## More Information

- [Installation Instructions](https://www.vbulletin.com/forum/node/4391348)
- [Upgrade Instructions](https://www.vbulletin.com/forum/node/4391346)

## Current Version Support Schedule

- Active Version - 5.4.5
- Security Patch - 5.4.4
- Security Patch - 5.4.3
- No Patch Release - 5.4.2 or earlier.

## Discussion

If you have any questions about these changes you may discuss them here: [node]4404553[/node]

If you find an issue with the software or wish to place a feature request please visit our [tracker](https://tracker.vbulletin.com).

In order to receive support for your vBulletin Product please visit our [community forums](https://www.vbulletin.com/forum/).

----

## Known Issue

[VBV-19078](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19078) - calc() produces broken CSS when we pass it unitless values in some cases

With this issue, you can generate broken CSS if you set the following style variables to 0 without a unit type. The workaround is to specify a unit type. px is the best option.

- form_field_border
- toolbar_border
- form_dropdown_border
- side_nav_border

This issue will be resolved in the next release and the workaround will not be necessary.

[VBV-19081](https://tracker.vbulletin.com/vbulletin5/issues/VBV-19081) - Missing CKEditor CSS in the vBMessenger chat popup

The editor in vBMessenger may display an incorrect font compared to the one specified for the current style.
