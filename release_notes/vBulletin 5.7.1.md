# vBulletin 5.7.1 Changes and Updates

vBulletin Connect 5.7.1 is now available for download. vBulletin Cloud customers will be automatically upgraded in the upcoming weeks.

## Front End Changes

### Terms of Service page

A Terms of Service page is becoming necessary on modern websites. A blank "Terms of Service" page has been added to hold this information. To add your terms to this new page, you can edit the terms_of_service_page_text phrase in the AdminCP. On new installations, this page will be automatically linked in the Footer navigation. It can be accessed at `/terms-of-service`

We cannot provide you with the text that should go on your own terms of service page. However, there are generators that can create these for you on the web. You can also consult your legal advisor about a terms of service page.

If you already have a terms of service page, you can update the target of the footer link within the AdminCP under Settings -> Options -> Privacy Options.

### Additional Issues

- Resolved an issue that caused the Upload Attachments button to appear malformed.
- The system will now remove the "Answered" status flag on topics where the answer is deleted.
- Resolved an issue with extraneous Name Card data preventing JSON returns.
- Private Messages will no longer be put into moderation automatically.

---

## Back End / AdminCP Changes

### User Ranks

User ranks have been updated to allow new selection criteria. The new criteria are Topics Started, Registration Time, Reputation Value, and Total Likes.

#### User Rank Grouping

Due to the new quantifiers available to define User Ranks, ad hoc grouping has been added. When creating a new rank, you can specify the group that you want it to be included within. User information will show the latest rank in the group only.

More information on using the new Rank system will be posted soon.

### Outgoing Email

HTML Email for outgoing email has been improved. In addition to this, a new Option to control the length of post snippets included in emails has been added under Settings -> Options -> Email Options. The new option allows you to include the entire message, a specified snippet length, or no snippet at all. In addition to this, line breaks in snippets will be maintained for HTML display. 

### Paid Subscriptions

#### Square

Payment processing through Square has been added. Square currently allows one-off subscriptions to be purchased using their payment methods. It does not support renewable subscriptions. Information to enable the Square Payment API is available in the AdminCP under Paid Subscriptions -> Payment API Manager. Please read the information for each option carefully when enabling this payment provider. 

Your end-users do not need a Square account to make purchases.

#### Google Payments

The implementation of Google Payments within vBulletin is no longer usable. Google has changed its payment methodology. This Payment API has been removed.


### Additional AdminCP Issues

- Database logging options have been moved to the core configuration file (`/core/includes/config.php`).
- Removed `/core/includes/functions_misc.php`. This file is no longer needed by the system.
- Removed the front-end test API interface from the download package. This interface is not used in the distributed product.
- Several issues that occurred when accessing the MAPI endpoints have been resolved and the code has been brought up to standards.

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

For more information, see [vBulletin Connect System Requirements](https://www.vbulletin.com/forum/node/4387853).

### Current Version Support Schedule

- Active Version - 5.7.1
- Security Patch - 5.7.0
- Security Patch - 5.6.9 PL1
- No Patch Release - 5.6.8 PL1 and earlier

### Discussion

If you have any questions about these changes, you may discuss them here: [node][/node]

If you find an issue with the software or wish to request a new feature, please visit our [tracker](https://tracker.vbulletin.com).

To receive support for your vBulletin Product, please visit our [community forums](https://www.vbulletin.com/forum/).