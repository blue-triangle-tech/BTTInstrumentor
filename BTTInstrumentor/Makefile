TEAM_ID = RFX6NF2RC6
IDENTIFIER = com.bluetriangle.BTTInstrumentor
SIGN_IDENTITY = Developer ID Application: Blue Triangle Technologies Inc. ($(TEAM_ID))
BINARY = .build/release/BTTInstrumentor
KEYCHAIN_PROFILE = btt_notary_app_specific_password

# Build universal binary
build:
	swift build -c release --product BTTInstrumentor --triple arm64-apple-macosx
	swift build -c release --product BTTInstrumentor --triple x86_64-apple-macosx
	lipo -create -output $(BINARY) \
		.build/arm64-apple-macosx/release/BTTInstrumentor \
		.build/x86_64-apple-macosx/release/BTTInstrumentor
	strip -rSTX $(BINARY)

# Sign the binary
sign:
	codesign --sign "$(SIGN_IDENTITY)" \
		--options runtime \
		--timestamp \
		--identifier "$(IDENTIFIER)" \
		$(BINARY)

# Verify signature
verify:
	codesign --verify --verbose $(BINARY)

# Notarize the binary
notarize:
	zip BTTInstrumentor.zip $(BINARY)
	xcrun notarytool submit BTTInstrumentor.zip \
		--keychain-profile "$(KEYCHAIN_PROFILE)" \
		--wait
	rm BTTInstrumentor.zip

# Install to /usr/local/bin
install: build sign
	sudo cp $(BINARY) /usr/local/bin/BTTInstrumentor

# Full release — build, sign, notarize
release: build sign notarize

# Print SHA for formula update
sha:
	shasum -a 256 $(BINARY)
