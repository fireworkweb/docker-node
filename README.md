# fireworkweb/docker-node

<p align="center">
<a href="https://travis-ci.com/fireworkweb/docker-node"><img src="https://travis-ci.com/fireworkweb/docker-node.svg" alt="Build Status"></a>
</p>

![TravisCI](https://travis-ci.com/fireworkweb/docker-node.svg?branch=master)

Minimal Node Docker image focused on Laravel applications. Its use is intended for [fwd](https://github.com/fireworkweb/fwd), but can fit in any other Node use-case.

## Usage

With `docker run`:

```sh
docker run -it --rm fireworkweb/node:alpine node -v
```

### Available Tags

- **alpine**: Latest node version
- **10-alpine**: Node 10
- **8-alpine**: Node 8
- **qa**: Latest node + qa scripts

### Variables

**ASUSER**: Changes the user id that executes the commands

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
