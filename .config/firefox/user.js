// opinion
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("browser.quitShortcut.disabled", true);
user_pref("media.videocontrols.picture-in-picture.video-toggle.enabled", false);
user_pref("layout.spellcheckDefault", 0);

// i know what i'm doing
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

// i18n
user_pref("intl.regional_prefs.use_os_locales", true);
user_pref("layout.spellcheckDefault", 0);
user_pref("browser.translations.automaticallyPopup", false);

// privacy
user_pref("signon.rememberSignons", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_ever_enabled", true);

// smooth scrolling
user_pref("general.smoothScroll", true);
user_pref("general.smoothScroll.msdPhysics.enabled", true);
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS", 25);
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant", 1800);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio", "2");
user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant", 60);
user_pref("general.smoothScroll.currentVelocityWeighting", "1");
user_pref("general.smoothScroll.stopDecelerationWeighting", "1");

// enable chrome/userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// enable userChrome debugging
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);

// no first time ux
user_pref("trailhead.firstrun.didSeeAboutWelcome", true);
user_pref("app.normandy.first_run", false);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.aboutwelcome.didSeeFinalScreen", true);
user_pref("browser.bookmarks.addedImportButton", true);
user_pref("browser.bookmarks.restore_default_bookmarks", false);

// no new tab page
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.startup.homepage", "chrome://browser/content/blanktab.html");

// fonts
user_pref("font.default.x-western", "sans-serif");
user_pref("font.name.monospace.x-western", "monospace");
user_pref("font.name.sans-serif.x-western", "sans-serif");
user_pref("font.name.serif.x-western", "serif");

