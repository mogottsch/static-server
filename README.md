# static-server
A minimal nginx configuration, which can be run as non-root, serving all files in the `static` folder.

## Running as non-root
This nginx configuration can be run as non-root user with the following command
```
nginx -c nginx.conf -p $PWD
```

## Why?
I use the vimium chrome extension, but always struggled with the new tab. 
Chrome deactivates all extensions on chromes own pages and therefore vimium cannot be used on those.
Vimium itself allows to overwrite the new tab with a blank white page, however, I wanted to have more control over this page (e.g. make it dark and not blinding bright white).
Therefore, I use this repository to start an nginx server on startup, to serve a darkmode blank.html, which I use as my new tab in chrome.  
Nginx masterprocess needs to be run as root, but it seemed wrong to me to run a sudo command on startup just to serve a blank page.
That is why I made this config, that can be run as non-root user.
