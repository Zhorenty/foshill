runner:
	flutter pub get
	dart run build_runner build --delete-conflicting-outputs

	cd packages/database && flutter pub get && dart run build_runner build --delete-conflicting-outputs



clean:
	flutter clean

	cd packages/auth_client && flutter clean

	cd packages/rest_client && flutter clean