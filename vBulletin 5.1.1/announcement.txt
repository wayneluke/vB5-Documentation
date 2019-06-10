We are proud to announce the release of vBulletin 5.1.1. This release fixes a number of bugs related to the CMS, Image Handling and Email Notifications. More than 100 issues are resolved in this version.

PHP 5.5.X Support
As of vBulletin 5.1.1, vBulletin 5 Connect supports PHP 5.5.X for access to the latest security and performance enhancements available in PHP. Please note that as of PHP 5.5.0, the mysql library is deprecated and we suggest that you switch to mysqli in your /core/includes/config.php file.

Image Handling
We've improved image handling in vBulletin 5 Connect. After inserting images, you can double-click on them to edit size, positioning and word wrap. If you have appropriate permissions you can assign specialized CSS classes to your images in order to improve your site's layout. In addition to this, we've increase the size permissions to modern layouts. Previous versions would accept only smaller images. We've increased the maximum image size to the equivalent of a 12 Megapixel image. Within your content, these images will be resized down to 1440 X 900 pixels on new installs or the settings you currently have on upgrades. Mentioning Image Resizing, this is an important feature that has been restored. This allows your users to upload a large variety of photo content to your site and the system will resize it to fit your specifications.

Email Notifications
Email Notifications have been added to vBulletin 5 Connect. This allows you and your users to receive prompt notice of new content on your site. Email notifications have been included for moderators, subscribed topics, and other locations around the site. Users can manage their notifications by going to sitename.com/forumpath/settings/notifications, e.g: http://www.vbulletin.com/forum/settings/notifications.

XML Sitemap Generation
We've worked to fix the issues surrounding XML sitemap generation. Particular attention was placed around the memory issues previously reported. A route has been put into place for the xmlsitemap.php file used in vBulletin 4.X. However there is not an actual file in the download. The Router and API will redirect appropriately. If you utilize XML Sitemaps as part of your SEO strategy, please make sure to test this.

Regarding PHP's MySQL Libraries.
With the release of PHP 5.5.0, the mysql libraries in PHP have been deprecated. We recommend using the mysqli library which is supported in all current versions of vBulletin. With PHP 5.5.0 included in vBulletin 5.1.1, we are deprecating support for the mysql library under PHP 5.5.0. We will continue to support mysql in PHP 5.3.X and 5.4.X until further notice.