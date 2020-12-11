# core.matrix-examples

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/BrianChevalier/core.matrix-examples/main?urlpath=lab/tree/Notebooks)

This is a collection of examples using `core.matrix` and its implementations. This provides a way to easily test out `core.matrix` implementations with no local installation via [mybinder.org](https://mybinder.org) in a JupyterLab environment. Click the 'launch binder' badge above to start a temporary server.

Read on to learn more about how the environment is configured, although it's not necessary to use the examples.

## Configuration

Several configuration files are used to describe the environment. Read more about them [here](https://mybinder.readthedocs.io/en/latest/using/config_files.html). One additional dependency is the `deps.edn` file which specifies Clojure dependecies.

### Python Dependencies
The Python dependencies are installed via `conda` and are listed in `environment.yml` which includes `clojupyter`, `numpy`, and `scipy`.

### Installing Java & Clojure
Java is downloaded with `apt-get` and is listed in `apt.txt`. Clojure is installed using a downloaded script in `postBuild`. Note: `postBuild` actions are run under user and not root, so it is installed in a user directory (`~/.local`) without `sudo`.

### Creating and Installing the Kernel
This repo uses [clojupyter](https://cljdoc.org/d/clojupyter/clojupyter/0.3.2/doc/using-clojupyter-as-a-library) to create a new kernel using a `deps.edn` file to specify Clojure dependecies. If you'd like to change the `deps.edn` to bring in another Clojure library use the following to uninstall and reinstall the Clojupyter kernel. Make sure to reload the page and select the correct kernel (titled `deps-edn`).

```
make reinstall
```

## Local Docker Container

You can use [repo2docker](https://repo2docker.readthedocs.io/en/latest/usage.html) to create a docker image to test binder environments locally. Use the following:

```
make docker
```

The configuration should automatically run `make install` to install a Clojupyter kernel with the `deps.edn` dependencies.