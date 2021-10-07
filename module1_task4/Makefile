# New Website by Go-Hugo

POST_NAME=new_post
POST_TITLE=new_title

.PHONY: all
all: build
build:	## Generate the website from the markdown and configuration files in the directory dist/.
	@hugo > /dev/null 2>&1

.PHONY: post
post:	## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	@touch content/posts/$(POST_NAME).md
	@echo "---" >> content/posts/$(POST_NAME).md
	@echo title: \"$(POST_TITLE)\" >> content/posts/$(POST_NAME).md
	@echo "---" >> content/posts/$(POST_NAME).md

.PHONY: clean 
clean:	## Cleanup the content of the directory dist/
	@rm -rf ./dist/*
	
help:	## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

