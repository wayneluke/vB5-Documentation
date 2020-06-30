# Site Builder Frequently Asked Questions

## Overview

### What is Site Builder?

> Site Builder is a tool that allows you to easily customize the look and feel of pages throughout your vBulletin site. Using Site Builder, you can customize existing pages or create new custom pages.

### How do I enable Site Builder?

> In order to enable Site Builder, you must have the "Can Use Site Builder Administrator" permission. If you have this permission, you can click the "Edit Site" toggle to the right of your user name on any page.

## Pages

### How do I change my Homepage?

1. Visit the page you want to be your Homepage.
2. Click on "Edit Page" in the Site Builder menu.
3. Click "Save Page."
4. Check the box labeled "Make this page the homepage."
5. Finish saving the page.

> Note: If you have any Navigation links pointing to this page, they will need to be updated separately.

### How to I change the URL of my pages?

To change the URL of any page follow these steps:

1. Visit the page you want to update.
2. Click on "Edit Page" in the Site Builder menu.
3. Click "Save Page."
4. Update the URL field to reflect the new desired URL.
    - vBulletin will automatically create a 301 redirect to the new URL.
5. Finish saving the page.

### How do I delete a custom page?

## Modules

### After adding a PHP/HTML/Ad module, my page doesn't work.

If your code has an error in it, then you can break a page. To fix this you temporarily disable the rendering of PHP/HTML/Ad modules in the AdminCP. 

1. Log into the AdminCP.
2. Go to Settings -> Options -> General Settings.
3. Set the option "Disable the rendering of PHP, HTML and Ad Modules."

Once this is done, fix the error(s) in your module. Once the errors are fixed, you can enabled rendering again.

### I receive an error when trying to edit an Ad Module.

If you receive an error like 'error_information_0', the most likely cause is that you have an Ad Blocking browser extension installed. Whitelist your page and you'll be able to edit your Ad Modules.

### What is the Search JSON and how is it used?

Please see this article: [Search JSON](https://forum.vbulletin.com/node/4280580)
