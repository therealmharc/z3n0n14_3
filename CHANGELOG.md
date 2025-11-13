# Changelog

All notable changes to this project will be documented in this file.

## [v3] - 2025-11-13

### Fixed
- Fixed persistent INSTALL_PARSE_FAILED_NO_CERTIFICATES error using modern APK signing
- Replaced JAR signing with APK Signature Scheme v2/v3 for better compatibility
- Ensured all asset file digests are properly computed and verified

### Security
- Switched from jarsigner (deprecated) to apksigner for Android 16+ compatibility
- Applied modern signing schemes (v2/v3) instead of legacy v1 scheme
- Verified all 1,780+ files with proper digest calculation

### Build
- Incremented version from v2 to v3
- Performed complete clean rebuild from source
- Applied proper zipalign optimization
- Verified signature integrity with v2 and v3 schemes

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
