# Build the two books.
build:
	# Developper manual
	./build_scripts/setup.sh
	./build_scripts/build.sh

update-gen:
	./build_scripts/update-include.sh


# Open the book in your prefered browser.
open:
	xdg-open manuals/index.html

# Fetches mdbook with the needed processors, the mariadb J connector and the schemaspy jars.
# It fetches the gh binary releases wich is quicker than installing normally. If you don't want
# to fetch the binary installations you can install everything manually.
vendor:
	-if [ ! -d vendor ]; then mkdir vendor; fi
	@echo "Downloading mdbook..."
	@curl -sSL https://github.com/rust-lang/mdBook/releases/download/v0.5.2/mdbook-v0.5.2-x86_64-unknown-linux-gnu.tar.gz | tar -xz --directory=vendor
	@echo "Downloading schemaspy..."
	@curl -sSL https://github.com/schemaspy/schemaspy/releases/download/v7.0.2/schemaspy-app.jar --output-dir vendor --output schemaspy.jar
	@echo "Downloading mariadb connector..."
	@curl -sSL https://dlm.mariadb.com/4174416/Connectors/java/connector-java-3.5.2/mariadb-java-client-3.5.2.jar --output-dir vendor --output mariadb-java-client-3.5.2.jar
