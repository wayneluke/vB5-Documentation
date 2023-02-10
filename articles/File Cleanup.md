# File Cleanup

During normal development processes, files are often refactored and/or removed from the distribution package. it requires the removal of files that become obsolete. Due to the upgrade process, these files can build up on your server. In addition to this, each version includes its own set of javascript files with unique version stamped names. While these files shouldn't cause issues, they will take up space on your server. We recommend deleting these obsolete files from your server in order to maintain a clean file set. This requires a few steps to complete.

1. Delete rollup javascript files that do not include your version number in the file name. 

2. Use the Suspect File Version tool in the AdminCP to delete all obsolete PHP files.
   1. In the AdminCP go to Maintenance → Diagnostics.
   2. Run the Suspect File Versions tool.
   3. It will scan the vBulletin directories and list all files not part of vBulletin.
   4. Review these files to make sure they aren't part of a customization. If they aren't needed, then delete them with your SFTP client.

