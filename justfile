alias b := build
build:
	./build_scripts/build.sh

alias ut := update-translation
update-translation manual lang:
	./build_scripts/update-translation.sh lang manual

alias it := update-translation
init-translation manual lang:
	./build_scripts/init.sh lang manual

alias o := open
open: build
	xdg-open manuals/index.html

watch-build:
	watchexec -d 1sec -c -e md,po -i '*/build-src/*' -i '*/po/*.po' -- ./build_scripts/build.sh

serve-html:
	livereload --host localhost -p 8080 -t developper_manual/src/ -d manuals/ -w 0.5

[parallel]
serve: watch-build serve-html

vendor:
	if [ ! -d vendor ]; then mkdir vendor; fi
	echo "Downloading schemaspy..."
	curl -sSL https://github.com/schemaspy/schemaspy/releases/download/v7.0.2/schemaspy-app.jar \
		--output-dir vendor \
		--output schemaspy.jar
	echo "Downloading mariadb connector..."
	curl -sSL https://dlm.mariadb.com/4174416/Connectors/java/connector-java-3.5.2/mariadb-java-client-3.5.2.jar \
		--output-dir vendor \
		--output mariadb-java-client-3.5.2.jar
