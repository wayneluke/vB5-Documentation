# vBulletin 5.7.0 Changes and Updates

vBulletin 5.7.0 is available for download. 

## Front End Changes

### Editor 

Users can now drag and drop images directly into the Editor pane. They no longer need to be dropped on the Attachment pane.

### Inline Videos

Inline portrait/vertical videos should display with a proper aspect ratio. Firefox will show playback controls properly.

### Additional Issues
- The Contact Us form now uses the Webmaster Email address as the From address.
- Poll Voters should show up on public polls now.
- When editing a page in Site Builder, custom URLs will no longer be overwritten when you change the page title.
- Resolved an issue in Debug Mode that caused database explain to fail on Forum pages.

---

## Back End / AdminCP Changes

### Paid Subscriptions

#### PayPal IPN Updated

vBulletin now records Paypal's updated response codes. Informational response codes are no longer logged as a transaction failure. These will be listed as informational to reduce confusion.

#### Stripe Checkout

vBulletin now includes support for the [Stripe](https://stripe.com/) Checkout as a subscription payment gateway. Stripe Checkout allows payments via Credit Card, Apple Pay, and Google Pay. It also provides support for recurring transactions. Stripe Checkout supports Inclusive (e.g., EU VAT) and Exclusive (e.g., US sales tax) taxes.

### Additional AdminCP Issues

- Added a style variable to control link colors on dark backgrounds.
- Removed the ability to create a channel based on another channel. 
- Resolved an issue in the Suspect File diagnostics that prevented viewing skipped or passing files.
- Additional fixes for warnings in PHP 8.0 and higher.

---

## Additional Information

### Install / Upgrade

As of 5.7.0, new installations will automatically support MP3 (audio) and MP4 (video) attachment types. Customers can delete these attachment types or control access to them via Attachment Permissions.

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

For more information, see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.7.0
- Security Patch - 5.6.9 PL1
- Security Patch - 5.6.8 PL1
- No Patch Release - 5.6.7 PL1 and earlier

### Discussion

If you have any questions about these changes, you may discuss them here: [node]4473553[/node]

If you find an issue with the software or wish to request  a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).