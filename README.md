Lab - Depth-limiting Web Crawler
================================

Add depth-limiting to the concurrent web crawler from [web-crawler.go](./web-crawler.go).
That is, if the user sets `-depth=3`, the crawler must go until the third level of the links tree, the main page is considered as root or level 0.

In order to make it easier to read, generate a log file with the found links on each level. Please don't print links on terminal. Your program should run as follows:

How to run your program
-----------------------

```
./web-crawler -depth=3 -results=results.txt https://google.com
```

- And, your `results.txt` file should look like:

```
Root Page:
http://google.com

First Level:
http://www.google.com/intl/es-419/policies/terms/
https://drive.google.com/?tab=wo


Second Level:
http://www.google.com/setprefdomain?prefdom=MX&prev=http://www.google.com.mx/&sig=K_cr1AuSznYODaxydmK7EZ18czXcc%3D
http://www.google.com/advanced_search?hl=es-419&authuser=0
http://www.google.com.mx/imghp?hl=es-419&tab=wi
https://www.google.com.mx/intl/es-419/about/products?tab=wh

Third Level:
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

- Automated with MacOS or Linux (you need `make` tool)
```
make build
```

- Manual
```
go mod init CodersSquad/go-web-crawler
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

Grading Policy
--------------

- There are 4 test cases, you can see details in the `test` section in the  [`Makefile`](Makefile).
- Each test case will be wroth 25% of the grade
