::download
::Apache24 - https://www.apachelounge.com/download/VC15/binaries/httpd-2.4.29-Win64-VC15.zip
::php-7.2.1-Win32-VC15-x64 - https://windows.php.net/downloads/releases/php-7.2.3-Win32-VC15-x64.zip
::phpMyAdmin-4.4.6.1-all-languages - https://files.phpmyadmin.net/phpMyAdmin/4.7.9/phpMyAdmin-4.7.9-all-languages.zip
::chromium - https://commondatastorage.googleapis.com/chromium-browser-snapshots/Win_x64/542012/chrome-win32.zip

::config in httpd.conf
::# PHP module
::LoadModule php5_module "E:/phpmyadmin/php/php5apache2_4.dll"
::#AddType application/x-httpd-php .php
::PHPIniDir "E:/phpmyadmin/php/"
::
::#PHPIniDir 'E:/Applications/php/php.ini'
::#LoadModule php5_module "E:/Applications/php/php5apache2_4.dll" 
::
::
::<VirtualHost *:11180>
::    DocumentRoot "E:/phpmyadmin/phpMyAdmin-4.4.6.1-all-languages/"
::	<Directory "E:/phpmyadmin/phpMyAdmin-4.4.6.1-all-languages/">
::
::
::		Options Indexes FollowSymLinks Includes 
::		AddType text/html .html
::		AddOutputFilter INCLUDES .html
::
::		Require all granted
::		#AuthType Basic
::		#AuthName "Restricted Content"
::		#AuthBasicProvider file
::		#AuthUserFile "C:\Apache24\.htpasswd"
::		#Require user internalUser
::	</Directory> 
::    #ServerName phpmyadmin
::    ErrorLog logs/phpmyadmin-error_log
::    CustomLog logs/phpmyadmin-access_log common
::</VirtualHost>

title phpmyadmin
set PATH=%PATH%;E:\phpmyadmin\php;
start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -incognito http://localhost:11180
E:\phpmyadmin\Apache24\bin\httpd

