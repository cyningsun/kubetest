# Introduction

Init containers are exactly like regular containers, except:
- Init containers always run to completion.
- Each init container must complete successfully before the next one starts.

Here we have an init container which download page from `http://info.cern.ch` as the `index` page of app container(nginx).

