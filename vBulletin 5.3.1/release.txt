vBulletin 5.3.1 is now available. Customers with valid licenses are encouraged to test the software on their staging servers. 

[h2]Support for Large Forums[/h2]
In the past there have been some performance issues with sites that have a very large number of Forum Channels (200+) and a large number of custom usergroups. In vBulletin 5.3.1, we have refactored how permissions are stored in the datastore and loaded into memory when people visit your site. This has allowed us to increase performance by an order of magnitude while lowering the required amount of memory to process each page. For more information see [jira]VBV-14871[/jira]

[h2]Administrator and Moderator Security[/h2]
We take the security of your site very seriously. Over the years we have introduced a number of technologies to keep your site secure from exploits. Recently in 5.3.0, we introduced Two-Factor Authorization for Administrators and Moderators. In 5.3.1, we are introducing the ability to restrict the ability of Administrators and Moderators by IP Address as well. By entering a series of IP addresses in your configuration file, you can restrict these areas to the individuals with those addresses.

To configure this for your site, edit your /core/includes/config.php and alter these values:
[code]
//  ***** RESTRICT ADMINCP/MODCP ACCESS BY IP *****
//  You can provide a list of IP addresses that can access the AdminCP. This can increase security of your site.
//  Enter IP Addresses (XXX.XXX.XXX.XXX) separated by a comma. An Empty value disables this feature.
$config['Security']['AdminIP'] = '';

//  You can provide a list of IP addresses that can access the ModCP. This can increase security of your site.
//  Enter IP Addresses (XXX.XXX.XXX.XXX) separated by a comma. An Empty value disables this feature.
$config['Security']['ModIP'] = '';
[/code]

If you're using an older version of the config.php file, you can copy these from your /core/includes/config.php.new file or copy the code above. If you do not know what your IP Address is, you can see it by typing "What is my IP?" into Google.

[h2]Route by Node[/h2]
An option has been added to create URLs on your site by Node ID instead of relying on title text. This is primarily in place to allow foreign language sites to access URLS that are not currently accessible due to encoding issues. You can find this option in the AdminCP under Settings -> Options -> Site Name / URL / Contact Details. Set the Route Channels and Conversations by Node ID to Yes.


[h2]MAPI Update[/h2]
We have update the vBulletin 5 Mobile API to handle Articles and Events. Once this is supported in the Mobile Apps, your users will have access to this content.

[h2]MySQL Version Update[/h2]
Please note that MySQL 5.1.15 is an old version of the software and no longer under direct support. In vBulletin 5.3.2, we will be increasing the required version of MySQL and MariaDB to 5.5.X. This will provide customers with an additional performance boost and most servers have most likely updated. There are no immediate database changes planned to support this change. We will provide further information as it becomes available.

[h2]Cloud Upgrades[/h2]
Upgrades for vBulletin Cloud sites will be scheduleded as soon as possible. Site owners will be notified by email before their site is upgraded.

[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.1.15

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

Current Version Support Schedule:
[list]
    [*]Active Version - 5.3.1
    [*]Security Patch - 5.3.0
    [*]Security Patch - 5.2.6
    [*]No Patch Release - 5.2.5 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4369308[/node]