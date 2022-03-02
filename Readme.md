# Slate Docs made easy

This is a simpler approach to Slate Docs; simply run one of the commands from the Makefile and you will have a server running your docs or a folder with the static content to serve on your own.

---

## Requirements
You'll only need Docker and docker-compose in order to take advantage of this.

## Getting Started

Run `make build` to have the docker image ready.

---
## Your Files

### API Specs
Put your API Spec inside the folder `/src` under the name of `api-spec.md`.

### Logo
Put your Logo inside the folder `src` under the name of `logo.png`. Remember that the recommended size is a width of 230px and a height of around 50-100px.

---
## Serve documentation

Run `make slate-serve` to boot up the Slate server and have your documentation ready on `http://localhost:4567`

## Build static files

Run `make slate-static` to create the static files. 
Everything will be stored in `./build` so you can later serve it however you want.

---
## Other Customizations
For now, only changing the Specs and the Logo is supported.