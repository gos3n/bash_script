# === batch chmod recurse directories via find === #

:method exec:
~~~
$ find . -user "$USER" -type d -exec chmod 700 {} +
$ find . -user "$USER" -not -type d -exec 600 {} +
~~~
[!] :test via echo:
	$ find . -user "$USER" -type d -exec echo chmod 770 {} +
	$ find . -user "$USER" -not -type d -exec echo chmod 660 {} +

:method xargs:
~~~
find . -user $(whoami) | xargs chmod ug=Xo=

:method sed/regexp:
~~~
find topdirectory -user "$USER" \( -type f -exec chmod 660 {} + \) -o \( -type f -exec chmod 770 {} + \)

:refs:
	> https://stackoverflow.com/questions/44128897/bash-script-changing-file-permissions-recursively

