Git 簡介
========

## Using Web Service
如果你有 Web Server，可以直接將該目錄放在其下
然後訪問 http://YOURIPORHOSH/git.html

ex:
```
   python -m SimpleHTTPServer
```
瀏覽器瀏覽 http://localhost:8000/git.html


## Local

瀏覽器瀏覽 file:///................/git.all.html
為確保是最新的（或是更動過 git.md後），可以執行

```
   ./bin/build.sh git.md 
```
他會自動重新產生`git.all.html` 與 `git.html`
