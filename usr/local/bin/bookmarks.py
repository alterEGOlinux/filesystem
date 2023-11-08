#!/usr/bin/env python
## ----------------------------------------------------------------------- INFO
## [/usr/local/bin/bookmarks.py]
## author        : fantomH @alterEGO Linux
## created       : 2021-03-21 14:39:13 UTC
## updated       : 2023-11-08 11:49:48 UTC
## description   : Bookmarks launcher.

import os
import sqlite3 as sql
import subprocess
import tempfile
import webbrowser

con = sql.connect('/usr/local/share/bookmarks.db')
cur = con.cursor()

sqlite_select_query = """SELECT * from bookmarks"""
cur.execute(sqlite_select_query)
records = cur.fetchall()

options = set()
for row in records:
    try:
        title = f'{row[1]} - {row[2]}'
    except:
        title = f'{row[1]}'

    bk = f'{title:<100}: {row[3]} : {row[4]} : TAGS: {row[5]}\n'
    options.add(bk)

options = ''.join(sorted(list(options)))

with tempfile.NamedTemporaryFile(mode='w', delete=False) as f:
    f.write(options)
    f.seek(0)
    dumpfile = f.name

with open(dumpfile, 'r') as f:
    data = f.read().encode('UTF-8')

try:
    fzf = subprocess.run(["fzf",
                          "--prompt=Bookmarks ❯ ",
                          "--header=Title",
                          "--no-hscroll",
                          "--reverse",
                          "-i",
                          "--exact",
                          "--tiebreak=begin",
                          "--no-info",
                          "--pointer=•",
                         ], input=data, stdout=subprocess.PIPE)

    selection = fzf.stdout
    url = selection.decode('ascii').split(': ')[1]

    webbrowser.open_new_tab(url)
except:
    pass

con.close()
os.remove(dumpfile)

# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
