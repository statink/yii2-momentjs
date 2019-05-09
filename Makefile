.PHONY: all php clean dist-clean
all: .gitignore php

php: vendor

dist-clean: clean
	rm -rf composer.phar vendor node_modules

clean:

vendor: composer.lock composer.phar
	COMPOSER_ALLOW_SUPERUSER=1 ./composer.phar install --prefer-dist -vvv

composer.lock: composer.json composer.phar
	COMPOSER_ALLOW_SUPERUSER=1 ./composer.phar update --prefer-dist -vvv

composer.phar:
	curl -fsSL 'https://getcomposer.org/installer' | php -- --stable
	touch -r composer.json $@

.gitignore:
	curl -fsSL 'https://www.gitignore.io/api/vim,yii2,emacs,composer,visualstudiocode' -o $@
