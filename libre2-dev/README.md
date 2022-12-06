# libre2-dev

An image to build various versions of [re2](https://github.com/google/re2)
against the [official Ubuntu images](https://hub.docker.com/_/ubuntu) and
package them up as `.deb`s suitable for installation by [GitHub
Actions](https://docs.github.com/en/actions).

## Usage

```
$ docker build 20.04 --tag mudge/libre2-dev:20.04 --platform linux/amd64
$ docker run -v $(pwd):/data --workdir /data --platform linux/amd64 mudge/libre2-dev:20.04 2021-02-02 20210202
```

The above commands will build the image and then run the build script (found in
`entrypoint.sh`), downloading the source for the given release of re2 into the
current working directory and packaging it up into a `.deb` with the given
version number.
