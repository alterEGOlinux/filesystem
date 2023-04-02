<!-- /NOTEHEADER/                                                          {{{1

AUTHOR = 'fantomH'
FILENAME = 'aelnotes-_ael.md'
CREATED = '2023-03-30 11:02:26 UTC'
UPDATED = '2023-03-30 11:02:34 UTC'
TAGS = ['#AEL', '#/etc/skel/.ael', '#filesystem', '#home', '#linux']

/NOTEHEADER/ 1}}} -->

# AEL Filesystem: `/etc/skel/.ael/`

AEL directory containing AEL stuff.

##### /etc/skel/.ael/.containers

Docker containers configuration, aliases and functions.

* `docker666`: start/status/stop docker services.
* `docker-stats`: gives statistics on running containers.
* `docker-container-cleaner`: removes all containers.
* `cyberchef`: start/stop CyberChef container.

```
mpepping/cyberchef
description    : A simple, intuitive web app for analysing and decoding data without having to deal with complex tools or programming languages. CyberChef encourages both technical and non-technical people to explore data formats, encryption and compression.
main cmd       : docker run -d -p 8888:8000 mpepping/cyberchef
```

* `dvwa`: start/stop Dawn Vulnerable Webapp container.
* `juice-shop`: start/stop OWASP Juice Shop container.
* `kali`: start Kali Linux container.

##### /etc/skel/.ael/.dircolors

Terminal colors file.

This file is evaluated upon loading rc files to set LS_COLORS.

Was obtained:

```bash
$ dircolors --print-database > ~/.ael/.dircolors
```

##### /etc/skel/.ael/.extra

Shell config specific for the local machine.

##### /etc/skel/.ael/.functions

Different general shell functions:

* `busy`: When the boss comes around.
* `cheat`: Uses cheat.sh API and search.
    - TODO: Standardize FZF config.
* `delete`: Deletes directory.
* `directory-size`: Outputs biggest directories.
* `fixout`: Cleans the history when exiting the shell.
* `fuck`: Repeats last command as root.
* `getmp3`: Downloads music with youtube-dl.
* `history-cleaner`: bash history cleaner.
* `ps-basic`: View processes with `ps aux`.
* `ps-grep`: View processes for a specific application.
* `py-clean`: Clean the Python "__pycache__" directories.
* `search_content()`: Aliases to `sc`.
* `shell_info()`: Aliases to `shell-info`.
* `show_utc()`: Aliases to `show-utc`.
* `tagalog`:
* `translate`:

##### /etc/skel/.ael/.gits

* `gitall`: Lazy git pull, add, commit and push.
* `gitStatus`: Checks status of git repo.
* `lazygits`: Updates repositories the very lazy way.

`lazygit` will fetch `git_repositories` array from `.alterego/.extrarc` so the repositories can be customed from device to device.

##### /etc/skel/.ael/.hacker

* wordlists
* reverse shells

##### /etc/skel/.ael/.main

General alterEGO linux shell configuration, aliases and functions.

This file sources all rc files.

* `open`: alias to `ael-open`
* `attack`: sources `.tryhackme`
* `ipaddr()`: $PUBIP and $LANIP
* `goto`: change directory to shortcuts.
* `reload`: reloads (sources) the rc files.

##### /etc/skel/.ael/.network

* `ispeed`: Test your internet connection.
* `net-scan`: Scans IPs using `rustscan` and `nmap`.
* `nmap-basic`: Basic nmap scan.
* `ports`: Show open ports with `netstat -tulanp`.
* `py-server`: Spawn a Python Web Server.
* `tun-info`: Display tunnel information.
* `view-ips`: Display IP addresses for all interfaces.
* `whois-web`: Query the web if `whois` port 43 is blocked on your network.

##### /etc/skel/.ael/.pkgmanager

* `pacmanInit()`: re-initialize pacman stuff.

##### /etc/skel/.ael/.tryhackme

<!-----------------------------------------------------------------------------
# vim: foldmethod=marker
# ____________________________{ FIN ¯\_(ツ)_/¯ }____________________________-->
