kernel: deps.edn
	clojure -M:depstar -m hf.depstar.uberjar clojupyter-standalone.jar

install: kernel
	clojure -m clojupyter.cmdline install --ident deps-edn --jarfile clojupyter-standalone.jar

uninstall:
	clojure -m clojupyter.cmdline remove-install deps-edn

reinstall: uninstall install

docker:
	jupyter-repo2docker .