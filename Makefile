STATIC_DIR=static

SASS_DIR = $(STATIC_DIR)/sass
CSS_DIR	 = $(STATIC_DIR)/css
JS_DIR = $(STATIC_DIR)/js

SASS_FILES  = $(shell find $(SASS_DIR) -type f -name *.scss)
SASS_GLOBAL	= $(SASS_DIR)/global.scss
SASS_TARGET = $(CSS_DIR)/global.css

JS_SOURCE = $(JS_DIR)/main.js
JS_TARGET = $(JS_DIR)/main.min.js


$(SASS_TARGET): $(SASS_FILES)
	sass 			$(SASS_GLOBAL) $@
#	autoprefixer 	$@ -o $@ -b "> 1%, last 3 versions, Firefox ESR"
#	cleancss 		$@ -o $@


$(JS_TARGET): $(JS_SOURCE)
	uglifyjs $^ -o $@

watch:
	watch make
