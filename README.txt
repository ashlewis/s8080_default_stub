--------------------
S8080 Default Module STUB
--------------------
Stub makefile to download all s8080 default contrib/custom modules

Using this method:
1) default modules can be added to a new site OR an existing site (unlike an install profile)
2) modules are not added as dependencies and therefor may be disabled if not required for individual sites
3) there is no need to use git submodules which may add unnecessary complexity to project repos
4) devel, i18n, seo, security, and maps modules may be added only when required

Usage
------

1) IMPORTANT: this relies on git credentials being cached, to set this up run:
   git config --global credential.helper "cache --timeout=3600"

2) Go to directory outside of any repo
   cd ~

3) Pull down copy of stub makefile
   git clone https://s8080.visualstudio.com/DefaultCollection/_git/s8080_default_stub

4a) FOR *NEW* SITE
   i) Download Drupal core and all default modules/themes/libraries
   drush make -y s8080_default_stub/s8080_default_stub.make /path/to/your/site/httpdocs

   ii) Install Drupal
   cd /path/to/your/site/httpdocs
   drush site-install standard --db-url=mysql://root:root@127.0.0.1:3306/<SITE_NAME> --site-name="<SITE_NAME>" --db-su=<MYSQL_SUPER_USER_NAME> --db-su-pw=<MYSQL_SUPER_USER_PASSWORD> --account-name=s8080_admin --account-pass=<DRUPAL_PASSWORD>

 *OR*

4b) FOR *EXISTING* SITE
   i) Download all default modules/themes/libraries
   drush make -y --no-core s8080_default_stub/s8080_default_stub.make /path/to/your/site/httpdocs

5) Enable default modules
   cd /path/to/your/site/httpdocs
   drush en -y s8080_default

6) [OPTIONAL] Enable default sub-modules
   drush en -y s8080_default_devel
   drush en -y s8080_default_i18n
   drush en -y s8080_default_maps
   drush en -y s8080_default_security
   drush en -y s8080_default_seo