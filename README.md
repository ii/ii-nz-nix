# ii.nz site

This is the raw material that is built into  ii.nz.

It is based off [gitlab.com/ii/nz](https://gitlab.com/ii/nz), but starting fresh to more easily extract what we need from previous build dependencies.

This site is built using [hugo](https://gohugo.io).

# Developing on the site

The easiest way to develop on the site is to use nix, with flake support enabled.

You can install nix from their homepage: https://nixos.org

Then, follow these instructions to enable flake support:
https://nixos.wiki/wiki/Flakes

With nix(+flakes) installed, then you can simply clone down

this repo, enter it, and run:

``` sh
nix develop
```

This will install all the dependencies necessary to run, when the development environment is ready, you can run:

``` sh
hugo server -D
```

To start up a hugo server on localhost:1313.

All content is in our /content folder, and written in markdown.

To build this site, run

``` sh
nix build
```

And this will compile everything as a set of static files in the `/result` directory.
