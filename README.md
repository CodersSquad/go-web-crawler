Lab - Depth-limiting Web Crawler
================================

Add depth-limiting to the concurrent web crawler from [web-crawler.go](./web-crawler.go).
That is, if the user sets `-depth=3`, then only URLs reachable by at most 3 links will be fetched.

- In order to make it easier to read, generate a log file with the found links. Please not print links on terminal. Your program should run as follows:

```
./web-crawler -depth=3 -results=results.txt https://google.com
```

- And, your `results.txt` file should look like:

```
http://google.com
http://www.google.com/intl/es-419/policies/terms/
https://drive.google.com/?tab=wo
http://www.google.com/setprefdomain?prefdom=MX&prev=http://www.google.com.mx/&sig=K_cr1AuSznYODaxydmK7EZ18czXcc%3D
http://www.google.com/advanced_search?hl=es-419&authuser=0
http://www.google.com.mx/imghp?hl=es-419&tab=wi
https://www.google.com.mx/intl/es-419/about/products?tab=wh
http://www.google.com/intl/es-419/about.html
https://accounts.google.com/ServiceLogin?hl=es-419&passive=true&continue=http://www.google.com/&ec=GAZAAQ
http://www.google.com.mx/history/optout?hl=es-419
http://www.google.com/intl/es-419/policies/privacy/
http://www.google.com/preferences?hl=es-419
http://www.google.com/intl/es-419/ads/
.
.
.
```

How to compile
--------------

- Easy
```
make build
```

- Manual
```
go mod init web-crawler
go mod tidy
go build -o web-crawler web-crawler.go
```


General Requirements and Considerations
---------------------------------------
- Use the [`web-crawler.go`](./web-crawler.go) file for your implementation.
- Don't forget to handle errors properly.
- Coding best practices implementation will be also considered.


Test Suite
----------
Build and Test automation is already implemented with the following command. Below some general tips and comments.

- Make sure that your program passes all test cases without errors.
- Remember that this is being executed by a robot script.
- You cannot edit the `Makefile` file.
- Failed compilation or segmentation faults means 0-graded.
- Failed tests will be properly discounted from total grade.

```
make test
```
