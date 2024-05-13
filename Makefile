# Makefile for building Quarto Reveal.js presentations

# Define variables
SOURCE = TVBProcessing.qmd
TARGET = TVBProcessing.html
BUILD_DIR = _site

# Default rule for building the presentation
all: $(TARGET)

# Rule to build the HTML presentation from Quarto
$(TARGET): $(SOURCE)
	quarto render $(SOURCE) --to revealjs
	@echo "Presentation built."

# Rule to clean up build artifacts
clean:
	rm -rf $(BUILD_DIR) $(TARGET)
	@echo "Cleanup complete."

# Phony targets for clean and all
.PHONY: all clean
