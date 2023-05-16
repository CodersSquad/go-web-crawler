# build & test automation

APP_NAME=web-crawler

build: clean
	go mod init ${APP_NAME}
	go mod tidy
	go build -o ${APP_NAME} ${APP_NAME}.go

test: clean build
	@echo Test 1
	./${APP_NAME} -depth=2 -results=test1.txt https://google.com/ | true
	@echo Test 2
	./${APP_NAME} -depth=3 -results=test2.txt http://www.gopl.io/ | true
	@echo Test 3
	./${APP_NAME} -depth=1 -results=test3.txt http://www.gopl.io/ | true
	@echo Test 4 - failed
	./${APP_NAME} http://www.gopl.io/ | true

clean:
	rm -rf ${APP_NAME} *.txt *.mod *.sum
