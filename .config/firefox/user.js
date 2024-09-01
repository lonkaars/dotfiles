// opinion
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("browser.quitShortcut.disabled", true);
user_pref("media.videocontrols.picture-in-picture.video-toggle.enabled", false);
user_pref("intl.regional_prefs.use_os_locales", true);
user_pref("layout.spellcheckDefault", 0);
user_pref("browser.safebrowsing.downloads.enabled", false);

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

