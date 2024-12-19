UNAME := $(shell uname)

.ONESHELL:

init:
	npm install n8n -g
	npm install --save-dev babel-cli
	pnpm install

run-local:	build unlink link

publish:
	npm publish

build:
	npm run build

clean:
	rm -rf dist/
	rm -rf node_modules/

unlink:
	cd ~/.n8n/custom/ &&	npm unlink @elvis_vg/n8n-nodes-telepilot
link:
	npm link
	cd ~/.n8n/ && mkdir -p custom && cd custom && npm link @elvis_vg/n8n-nodes-telepilot
