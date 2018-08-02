SOURCE_DIR = src

MANIFEST_FILE = etc/manifest.txt

DEX_JAR = dx.jar

SOURCE_FILE = srcfile

CLASS_DIR = class_src

ORIGIN_DEX_JAR = origin.dx.jar

build:
	@find . -name "*.java" > $(SOURCE_FILE)
	@javac -d class_src -cp $(CLASSPATH) \@$(SOURCE_FILE)
	@jar cvfm $(DEX_JAR) $(MANIFEST_FILE) -C $(CLASS_DIR) .
	@cp $(DEX_PATH)/$(DEX_JAR) $(DEX_PATH)/$(ORIGIN_DEX_JAR)
	@cp $(DEX_JAR) $(DEX_PATH)/$(DEX_JAR)