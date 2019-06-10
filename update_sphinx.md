# Rebuilding the Sphinx index

From time to time, we will need to update the indexing schema for the Sphinx server. In order for this fix to take effect you will need update the sphinx schema for the index. Follow these steps to rebuild your Sphinx Search Schema.

+ Stop the Sphinx service on your server.
+ Replace your existing Sphinx configuration file (vbulletin-sphinx.php) with the one provided in the current version of vBulletin 5 Connect. You can find this file in the do_not_upload directory.
+ Update the file as provided in the instructions to create the vbulletin sphinx configuration file found in the sphinx installation instructions for your OS.
    + These files are sphinx_install_unix.txt and sphinx_install_windows.txt
+ Start the Sphinx service on your server.
+ Copy searchindex.php to from the do_not_upload directory to the root vbulletin directory on your server.
+ Run "php searchindex.php" from your server's command line. You will need to run this as a user with sufficient privileges to run Sphinx index commands. 
    + You may have to use sudo on a Linux machine in order to have the proper permissions.
+ Select the correct vbulletin core directory (you can probably use the default) and choose to empty the search index (otherwise the schema will not be recreated from the config)
+ When the index process is complete delete the searchindex.php file from your server.