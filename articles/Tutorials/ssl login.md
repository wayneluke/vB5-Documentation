Enabling SSL Logins in vBulletin 5 Connect.

One feature that has been requested for a long time is the ability to force logins via SSL. vBulletin 5 Connect implements this feature. In order to have SSL Logins, you need a couple of things.

[list]
[*] SSL Certificate sold by a trusted authority.
[*] Copy of the vBulletin files in your SSL directory.
[/list]

To turn on this feature, you would do so in your presentation config.php file. This is located in your forum root directly (along with index.php and .htaccess). In this file look for the following code:

    // If you do wish to use https for login, uncomment this line
    // Then fill in your https url.
//$config['baseurl_login'] = 'https://www.yourdomain.com/folder';

For most purposes, you would uncomment this line and add your base url using the https protocol. For example:
If your base url is: http://www.example.com
Then your login url would be: https://www.example.com

[b][size=3]Frequently Asked Questions[/size][/b]

[b]Can I use a self-signed certificate?[/b]
While nothing is stopping you from doing this, it is not recommended. Self-Signed Certificates are often flagged as untrusted by modern web browsers and the user is warned against accessing sites without trusted certificates

[b]Aren't SSL Certificates expensive?[/b]
That depends on your definition of expensive. If you're not selling items with SSL and don't need the anti-fraud insurance, you can purchase a certificate for under $15.00 (US).

[b]Can I use a Wildcard Certificate?[/b]
As long it is valid for your domain name, then yes.

[b]How do I install a Certificate?[/b]
Your hosting provider can assist you with installing your SSL certificate.

[b]What is my SSL Directory?[/b]
On modern web hosting platforms, this is usually the same as your standard public_html or htdocs directory. Contact your hosting provider for more information on this.

[b]Can vBulletin Solutions install my security certificate?[/b]
This is not a service we offer at this time.

[b]I purchased a new installation and would like this implemented. Can you do this?[/b]
With the purchase of the installation service, we can set up SSL logins provided the certificate is already installed. State you want this done in the customer comments field of your installation worksheet.

