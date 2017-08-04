# nodejs
nodejs Dockerfile

## build and push
	docker build --tag nmj21c/nodejs:0.1 --tag nmj21c/nodejs:latest .
	docker push nmj21c/nodejs:0.1
	docker push nmj21c/nodejs:latest

## version history
### 0.1
	install python@2.7.13
	install nodejs@6.11.1LTS
	install git
	install vim
