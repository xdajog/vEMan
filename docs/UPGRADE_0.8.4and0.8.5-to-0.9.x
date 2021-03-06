
Upgrading vEMan is easy ;-)
-----------------------------------

***************************************************************************************************
Keep in mind that vEMan is currently in BETA state and so there can be:

- heavy changes in code
- heavy changes in file structure
- complete replacement or deletion of variables and vEMan files

That also means that in this state an upgrade may require manual changes and/or re-adding your 
configuration options and the behaviour of functions can change, too.
***************************************************************************************************

Hint:
Even if I encountered no problems when using VMware SDK for Perl Toolkit v4.x I recommend using v5.x for vEMan.
Since v0.8.2 vEMan is based on the current v5.0 VMware SDK for Perl that means my tests will be done for v5.x only.
That means NOT that the v4.x Perl Toolkit will NOT work anymore but I will not TEST it anymore.

This Upgrade Guide is for >v0.8.4< and higher versions.
If you have an older version than v0.8.4 you need to read the corresponding docs/UPGRADE_0.X.X-to-X.X.X depending on your
current version.

I highly recommend to upgrade this way:

1) Rename your current vEMan folder, e.g.:
	$> mv [INSTALL-DIR]/vEMan_XXX/ [INSTALL-DIR]/vEMan_BAK/
	$> mv ~/.vEMan ~/.vEMan_BAK (here are your settings stored like last ESX etc)

2) Download the new vEMan version
	$> cd [INSTALL-DIR] 	(I install it in my home so I use: cd ~ )
	$> wget http://sourceforge.net/projects/veman/files/latest/download

3) unpack it to your installation directory
	$> tar xvzf vEMan_vxX.tgz

4) Change the permissions
	$> cd [INSTALL-DIR]/vEMan_vXXX/
	$> chmod -R +x vEMan ./libs/ ./vmapps/

5) copy your previous user settings 
	$> cd [INSTALL-DIR]/vEMan_vXXX/
	$> cp -avf vEMan_BAK/etc/uservars_vEMan.cfg etc/

If the new vEMan version works as expected you can delete the folder you renamed in 1) otherwise 
you can easily switch back to the previous version.


