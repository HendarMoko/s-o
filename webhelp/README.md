# Build kotlin for /docs/

It's required:
 * [docker](https://docs.docker.com/get-docker/)
 * and private docker image **kotlinlang-docs.tar**, contact [with us](mailto:doc-feedback@kotlinlang.org).

## Getting artifacts

### Prepare

Init submodule:
```shell
$ git submodule update
```

Import image for create:
```shell
$ docker image load -i kotlinlang-docs.tar
```

### Build docs artifacts

Run CLI script:
```shell
$ ./build-webhelp.sh
```

and check output in `build/docs` folder.

Output structure:
 * `docs/*.html` - pure page content
 * `docs/images/**` - graphics
 * `docs/static/**` - js/css files
