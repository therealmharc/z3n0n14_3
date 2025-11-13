# Changelog

All notable changes to this project will be documented in this file.

## [v2] - 2025-11-13

### Fixed
- Resolved INSTALL_PARSE_FAILED_NO_CERTIFICATES error due to corrupted APK signature
- Rebuilt APK from scratch with clean signature verification
- Ensured all file digests are correctly computed and signed

### Build
- Incremented version from v1 to v2
- Cleaned build artifacts and performed full rebuild
- Re-signed APK with production keystore (SHA256withRSA)
- Applied zipalign optimization for proper alignment

## [v1] - 2025-11-13

### Changed
- Updated minimum SDK version from 7 to 24 for Android 16 compatibility
- Updated target SDK version to 34 for modern Android standards
- Removed corrupted drawable resource (ui_menu_community_click_ch.png)

### Fixed
- Resolved INSTALL_FAILED_DEPRECATED_SDK_VERSION error preventing installation on Android 16+
