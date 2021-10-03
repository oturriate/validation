# This is the default target, which will be built when 
# you invoke make

POST_NAME=new_post
POST_TITLE=new_title

.PHONY: all
all: build

# This rule tells make how to build hello from hello.cpp
build:
	@hugo > /dev/null 2>&1

# This rule tells make to copy hello to the binaries subdirectory,
# creating it if necessary
.PHONY: post
post:
	@touch content/posts/$(POST_NAME).md
	@echo "---" >> content/posts/$(POST_NAME).md
	@echo title: \"$(POST_TITLE)\" >> content/posts/$(POST_NAME).md
	@echo "---" >> content/posts/$(POST_NAME).md

# This rule tells make to delete hello and hello.o
.PHONY: clean 
clean:
	@rm -rf ./dist/*
