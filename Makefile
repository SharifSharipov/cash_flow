### This file contains short terminal commands for regular operations (build, fix, build_runner...)
### It is possible to write many sequential operations within a single command.
### For example, the following code will clean and get pub. You need to type ``make clean`` in the terminal.
### clean:
### 	flutter clean
### 	flutter pub get


# For generation packages, one-time generation
gen:
	dart run build_runner build


# For generation packages, it listens for changes
gen_auto:
	dart run build_runner watch --delete-conflicting-outputs

# For generation packages, it listens for changes
lang_auto:
	flutter pub run intl_utils:generate

# To clean
clean:
	flutter clean
	flutter pub get


# To build iOS
build_ios:
	flutter clean
	flutter build ios


# To build an apk:
# apk builds, renames it to project_name_date.apk
# opens a folder, saves the last 5 commits from the current branch in git to changes.txt
build_android:
	flutter clean
	flutter build apk --release
	mv ./build/app/outputs/flutter-apk/app-release.apk "./build/app/outputs/flutter-apk/Trianon-Energy-`date +%d.%m.%Y`.apk"
	git log -n 5 --pretty=format:"%s" > ./build/app/outputs/flutter-apk/changes.txt
	echo "`git log -n 5 --pretty=format:"%s"`" | pbcopy
	open ./build/app/outputs/flutter-apk/


# Prevents common iOS errors
fix_ios:
	cd ios; pod cache clean --all; pod clean; pod deintegrate; sudo gem install cocoapods-deintegrate cocoapods-clean; sudo arch -x86_64 gem install ffi; arch -x86_64 pod repo update; arch -x86_64 pod install