# Quick Start Guide

## Table of Contents

1. [Table of Contents](#table-of-contents)
2. [Introduction](#introduction)
   1. [Basic Terms](#basic-terms)
3. [Quick Setup](#quick-setup)
   1. [Style](#style)
   2. [Upload Logo](#upload-logo)
   3. [Select Home Page layout](#select-home-page-layout)
   4. [Add Forums](#add-forums)
   5. [Invite Members](#invite-members)
4. [Site Builder](#site-builder)
   1. [Editing and Creating Pages](#editing-and-creating-pages)
   2. [Linking to the a New Page](#linking-to-the-a-new-page)
   3. [Creating Your First Forum and Subforum](#creating-your-first-forum-and-subforum)
5. [AdminCP Tutorials](#admincp-tutorials)
   1. [Navigation](#navigation)
   2. [Accessing Inline Help](#accessing-inline-help)
   3. [Setting Up User Registration](#setting-up-user-registration)
   4. [Creating a Private Forum](#creating-a-private-forum)
   5. [Setting Up Human Verification](#setting-up-human-verification)
6. [Content Moderation](#content-moderation)
7. [FAQ](#faq)


## Introduction

Congratulations on successfully installing your new vBulletin site! If this is your first time using one of our products (or vBulletin 5), this guide will help you get things set up. 

When you first install your vBulletin, your site loads with the preset style and page like so:

As you can see, your new installation already been pre-populated with a variety of default pages and a few channels. If you upgraded from a previous version of vBulletin, you should see all of your forums and their content as well. A page is exactly that, a page. It displays your site to users and is a container for modules. Modules are pieces of functionality that you can add, customize, and, sometimes, remove from a page. These modules can cover such functionality as displaying ads, to announcements, to videos and even videos.

### Basic Terms

Before we proceed, it is prudent to talk about a few basic terms.

- **Site Builder**: A page tool that allows the creation of new custom pages and editing existing pages.
- **AdminCP**: Short for Administration Control Panel. This tool provides access to many settings to control vBulletin.
- **Page**: A combination of layout and modules that build the display for the end-user.
  - **Page Layout** - A grid of columns used to define the base of the page.
  - **Modules** - Individual blocks of content that can be placed within a layout.
  - **Page Template** - The combination of page layout and module used to define one or more pages. 
- **Style**: The look and feel of the rendered page. Styles control the underlying HTML, fonts, colors, and so forth. The style is applied via CSS after the page is sent to the browser.
- **Channel**: Content containers. Examples of channels are forums, article categories, blogs, and social groups. The most commonly used type of channel are forums.
- **Topic** - Used to reference content on the system. This term is used interchangeable with Topic, Article, Discussion, Entry, and Message. 
- **Post** - At the fundamental level, the Topic is a conversation among users. Posts refer to the components of those topics. Posts include starter (first post), replies, and comments.

Now that we have the basic terms down for vBulletin 5, we’ll move on to the how they work and how you can use them.

## Quick Setup

Quick Setup is one of the tools provided by Site Builder. With this tool, you can easily get your site opened to the public in 15 minutes or less. 

> All options set using Quick Setup are enabled immediately.

To access the Quick Setup tool, log into your site and then click the "Edit Site" button to the right of your user name. You will see the Quick Setup link in Site Builder's menu once it appears above the header.

### Style

vBulletin includes 17 different styles to choose from. Each theme provides an example of how you can customize vBulletin using Style Variables, CSS, and Fonts. If you choose, you can pick one to use as your default style here. 

### Upload Logo

Allows you to upload a custom image to be used as the logo for your website.

### Select Home Page layout

vBulletin 5 allows you to set any page as the home page for your site. Here you can choose between three layouts provided with the software. 

- Default: This is the two-column layout that you see immediately after installing vBulletin 5.
- Classic: This home page is designed to mimic the layout of older versions of vBulletin.
- Community: A variation of a homepage that is geared more towards users and building a community by having them interact with each other.


### Add Forums

This is a simplified version of the Channel manager built into Site Builder. It will allow you to create a few forums to get started.

### Invite Members

A community site needs users in order to build content and grow. This mini-tool allows you to invite a list of email addresses to visit and register on your site to get it going.

## Site Builder

### Editing and Creating Pages

You can edit all default pages in addition to adding more pages to meet the needs of your site. In order to edit an existing page, activate the Site Builder by click on the the Off button in the upper right hand corner of your navigation bar.

> When selecting a Site Builder option, you may be asked to re-enter your password for security purposes. Using Site Builder allows an administrator to change the look and feel of your site dramatically and this is to ensure that only authorized users can do this.

Once you’ve activated the Site Builder function, navigate to the page that you want to edit and click Edit Page button. This opens a form like the one below.

#### Add Modules Tab
There are four tabs in the form. The first (the Add Modules) is a catalogue of modules that you can add to the selected page to customize the look and feel of it. 

Everything displayed within vBulletin 5 is a module of some type. There are two types of modules: normal modules and system modules. The main difference between the two is that you’re unable to delete system modules. System modules provide critical functionality that you wouldn’t want removed from your site to begin with, such as private messages, advanced search and registration forms.

Each, as we mentioned, has a different function. Here’s a short list of some of them:

- Activity Stream - A module that tracks and displays the activity on your board. Also contains the directory for any channels created on the page.
- Ad - A module that organizes and rotates the ads on a site.
- Announcement - A module that manages and displays announcements and notices to
your users.
- Display Template - Allows you to display the output of any template on the page. 
- Online Users - A modules that displays the number of users online at any given time.
- Search - A module that displays a customized set of search results as a feed.
- Static HTML - A module that displays custom HTML.
- Tag Cloud - A module that displays a clickable list of tags used on the site.
- Today’s Birthday - A module that displays the usernames of user’s with birthdays on
any given day.
- Top Active Users - A module that displays a list of the top active users.
- Video - A module that embeds a video on to a page.

To put a module on a page, click and drag it from the menu onto the page itself. You can use the same method to rearrange the order of the modules on a page. To delete a module, click on the trash can icon to the right of the module title. To edit the module, click on the pencil. A form will open similar to the one below:

A number of fields will be available in the form for you to edit and change. To save the changes you have made for the module, click on the Save button at the bottom of the page.

####  Change Layout Tab

The Change Layout Tab is the second of the four tabs. This controls the number of columns on a page and the percentage of space each column takes up.

####  Select Template Tab

Templates are the saved designs for the default pages and any pages that you create. This can be especially helpful when you have several pages using the same template that requires a change that affects them all.

#### Saving the Changes

Once you’re finished modifying the page, click on the Save Page button to the right of the tabs. It opens a confirmation form where you have the option of saving the page as a new Template or overwriting the existing Template.

If you choose to overwrite the existing Template, you won’t be able to retrieve the old design if you want to switch back at a later time.

#### Adding a Page

To add a page to your site, follow the same steps as we listed at the top of this section, but instead of clicking on the Edit Page link, click on the New Page link instead.

### Linking to the a New Page

To link your newly created page in the navigation bar, navigate to the page and copy the address to your clipboard. Click on the Navigation Bar button. A form like the one below will open:

Decide if you want the link to be a main navigation item or a sub-navigation item. If the link is a sub-navigation item, click on the carat to the far right of the main navigation item you want it nested beneath. Click either the New Navigation Item or the New Sub Navigation Item.

Enter in the name of the link in the Navigation Item Name field and then paste the address your copied into the Target URL before clicking the Save button. Once that’s one, your link will appear in column it was added to. To change it’s position, click and drag it to its new location.
Finally, click Save Changes and confirm your changes. If you do not take this step, the changes will be lost.

### Creating Your First Forum and Subforum

Your vBulletin installation comes with a pre-generated forum. To add more forums, turn on your Site Builder and click on the Channels link. This opens a form like the one below:

#### Adding a Forum

From here, enter the name of the of forum you want to create in the New Forum text box and click Add. It will appear beneath the pre-generated Main Forum. You can change it’s position by clicking on the dotted strip to the left of the forum name and dragging it to its new location.
If you want to delete the forum, click the red x icon to the right of the plus symbol. A confirmation popup will appear. Clicking Yes will complete the deletion. Be careful of which forums you delete, since any threads, posts, and replies in that forum will be removed along with its parent.

#### Creating a Category

A category is a container for forums and largely used to organize the forums into, well, different categories. To make a category, click on the Make Category link to the right of the forum you wish to be a category. It will be instantly changed to a category. If you want to change it back, just click the Make Forum link that has taken it’s place. It’s that simple.

#### Adding a Sub-Forum

Sub-forums are forums that are nested in parent forums. Usually, this is used to create an area for specific aspects of the topic covered by the larger forum to be discussed. If you want to create sub-forum, click on the plus symbol between the Make Category link and the red x icon. A field such as as the one below will appear:

Enter the name of the new forum in the field that reads New Channel before clicking away from the sub-forum. It’s that simple.

## AdminCP Tutorials

### Navigation

### Accessing Inline Help

### Setting Up User Registration
With everything set up for your site, it’s now time to take a look at your User Registration settings. Stay in the AdminCP and double-click on the Settings header, followed by the Options link.

Once the vBulletin Options form loads, select the User Registration Options from the scrolling list and click the Edit Settings button:

The following form will load:


This controls every aspect of user registration for your site. It includes everything from whether or not it’s turned on, to COPPA Registration, to Welcome Messages. For a full list of options and what they do, go to:
https://www.vbulletin.com/docs/html/main/acp_settings_options_userregistration


### Creating a Private Forum

Now that you have your forums set up, you might want to change the permissions on them. Permissions tell the system which users get to see what. By using permissions, you can create a private forum for your users to use.

To do this, click on the AdminCP button in the upper right hand corner of the Site Builder menu.

> Please note, you may be asked to log in again for the same reasons that you had to provide your password a second time. The window will reload to a page similar to this:

Scroll down to the Channel Management header and doubl click it to open the section. Find the Channel Permissions option and click it. 

For a more thorough explanation of permissions, go here: https://www.vbulletin.com/docs/html/main/acp_permission_overview_overview

This will reload the frame to the right with a form like this:

This will list all your channels by display order. Underneath each channel name will be a list of usergroups.

Select the Edit link beside the usergroup you want to hide the forum from. This will open another form with several options:

Find the Channel Permissions header and change the Can View Channel setting to No before clicking Save. A popup will appear asking to confirm that you want to use custom permissions. Once saved, the usergroup that you selected will no longer be able to see that forum.


### Setting Up Human Verification

There are some sections of the site and its functionality that you’ll want to have human verification for. To turn on Human Verification, click on the Settings header in the AdminCP, followed by the Human Verification Manager link.

This reloads the frame with the following form:

Checking an option will activate it, while unchecking the option will deactivate it. This means that any usergroup that has the option Require Human Verification on Configure Actions activated will need to verify that they’re human when interacting with the selected options. Once you’re done, click Save and the changes you’ve made will be applied to the site.

## Content Moderation

Managing the content on your site is important. This management should be as easy as possible. To do this, a number of tools have been added to vBulletin.



## FAQ

- **How do I change my username?**
To change your username, login to the AdminCP and double click on the Users header. In the menu, click on Search for Users. In the new form in the frame to the right, enter your current username in to the User Name field and click the Exact Match button. In the User Form, change the username in the User Name field and click Save.

- **How do I change my password?**
On your Site Home Page, click on the Profile tab. Find the Edit Settings button beneath your user picture and click on it. This will reload the page with the Profile Settings page. Click on the Account tab and scroll down to the Password fields. Enter your current password in the field with the words ‘Enter current password’ and your new password in both the fields below that. Click Save Changes and your password will be set to the new password.

- **How do I change my logo?**
To change the logo of your site, make sure that Site Builder is turned on and click the Header button in the menu. Find the vBulletin logo and click the Edit button in the upper left hand corner. This will open an upload form which you can use to replace the current logo with another of your liking. Once you’ve uploaded the new logo, click on the Save Changes button. Your vBulletin page will reload with the new logo.

- **How do I change the default style?**
You can set the default style using two different methods.
 
  - Site Builder: After turning Site Builder on, click on Style to open the tool. Scroll through the styles that you see and click on the one you want to be your default style. Close the Style tool
  - Admin CP: Go to Settings -> Options -> Style & Language Options. Look for Default Style and select the style that you want to use from the drop down.

- **How do I add my own ads?** 
To add your own ads, turn on the Site Builder option and add the Ad Module to the page you want the ads to appear on. Click on the Edit button for the module and fill out the form before clicking Attach. This will take you to a new form where you can arrange the order in which the ads appear or add new ads. Once you’re done, click the Save button on the Ad form and confirm the changes on the page by clicking the Save Page button. The ads should now appear where you placed them.
