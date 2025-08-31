# Installomator - macOS Application Installer

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

Installomator is a macOS shell script that automates downloading and installing applications. The codebase uses a fragmented architecture where the main script is assembled from multiple fragments stored in the `fragments/` directory.

## Working Effectively

### Environment Requirements
- **CRITICAL**: Installomator only works on macOS 10.14+ (Mojave or later)
- Requires `zsh` shell (built into macOS)
- Testing and development requires macOS - the script cannot run on Linux/Windows

### Building the Script
- Always build from fragments using the assembly script:
  - `zsh ./utils/assemble.sh --script` -- NEVER CANCEL: Takes ~0.05 seconds but set timeout to 2+ minutes for safety.
  - Output goes to `build/Installomator.sh` and is also copied to repository root
- For development/testing with specific labels:
  - `zsh ./utils/assemble.sh <labelname>` -- Assembles and runs immediately (takes ~0.05 seconds)
  - `zsh ./utils/assemble.sh <labelname> DEBUG=2` -- Assembles and runs in debug mode

### Repository Structure Navigation
- `fragments/` - Core script components that are assembled together:
  - `header.sh` - Configuration variables and setup code
  - `functions.sh` - All script functions
  - `arguments.sh` - Command line argument parsing
  - `main.sh` - Main execution logic
  - `version.sh` - Version string (currently 10.9beta)
  - `labels/` - 986+ application installation definitions
- `utils/` - Build and validation scripts:
  - `assemble.sh` - Main build script
  - `checkLabels.sh` - Validates individual labels (macOS only)
  - `buildLabel.sh` - Helper for creating new labels (experimental)
- `Installomator.sh` - Final assembled script (do NOT edit directly)
- `build/` - Build output directory

### Testing and Validation
- **CRITICAL**: All functional testing requires macOS
- **NEVER edit `Installomator.sh` directly** - it's auto-generated and will be overwritten
- Always test changes by:
  1. Edit fragments in `fragments/` directory
  2. Run `zsh ./utils/assemble.sh --script` to rebuild
  3. Test specific labels: `zsh ./utils/assemble.sh <labelname> DEBUG=2`
  4. For production testing: `sudo zsh ./utils/assemble.sh <labelname> DEBUG=0`

### Label Development
- Each application has a label file in `fragments/labels/`
- Label files contain shell script case statements defining:
  - `name` - Application name
  - `type` - Installation method (dmg, pkg, zip, etc.)
  - `downloadURL` - Where to download the application
  - `appNewVersion` - Version detection logic
  - `expectedTeamID` - Apple Developer Team ID for verification
- Example label structure (see `fragments/labels/firefox.sh`):
```bash
firefox)
    name="Firefox"
    type="dmg"
    downloadURL="https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
    appNewVersion=$(getJSONValue "$firefoxVersions" "LATEST_FIREFOX_VERSION")
    expectedTeamID="43AQ936H96"
    ;;
```

## Validation

### Build Validation
- Always run `zsh ./utils/assemble.sh --script` after making any changes to fragments
- **NEVER CANCEL**: Build takes ~0.05 seconds but set timeouts to 2+ minutes minimum for safety
- Verify build succeeds without errors before testing functionality

### Functional Validation (macOS Only)
- Test new/modified labels thoroughly: `zsh ./utils/assemble.sh <labelname> DEBUG=2`
- **MANUAL VALIDATION REQUIREMENT**: Always test complete installation scenarios:
  1. Download verification
  2. Version detection accuracy  
  3. Actual installation process
  4. Post-installation verification
- Use label validation: `zsh ./utils/checkLabels.sh <labelname>` (macOS only)
- Test both debug modes:
  - `DEBUG=1` - Downloads to current directory, no installation
  - `DEBUG=2` - Downloads to temp, checks versions/processes, no installation

### CI/CD Validation
- GitHub Actions automatically validate:
  - Script assembly process (`.github/workflows/assemble.yml`)
  - Line ending compliance (`.github/workflows/check-lf.yml`)
- Manual PR validation available via workflow dispatch

## Development Workflow

### Adding New Labels
1. Create new file in `fragments/labels/` (e.g., `newapp.sh`)
2. Follow existing label structure and naming conventions
3. Test assembly: `zsh ./utils/assemble.sh newapp DEBUG=2`
4. **CRITICAL**: Document version detection method in PR
5. Test on actual macOS system before submitting PR

### Modifying Existing Labels
1. Edit the appropriate file in `fragments/labels/`
2. Test changes: `zsh ./utils/assemble.sh <labelname> DEBUG=2`
3. Validate version detection still works
4. Ensure backward compatibility

### Core Script Changes
1. Edit appropriate fragment file in `fragments/`
2. Rebuild: `zsh ./utils/assemble.sh --script`
3. Test with multiple labels to ensure no regression
4. **NEVER CANCEL**: Allow full build time (~0.05 seconds, but use 2+ minute timeout)

## Common Tasks

### Repository Commands Reference
```bash
# Repository root contents
ls -la
# Key directories: .github/ fragments/ utils/ MDM/
# Key files: Installomator.sh README.md CONTRIBUTING.md

# Fragment directory structure  
ls fragments/
# Output: arguments.sh functions.sh header.sh labels/ main.sh version.sh

# Available labels (986 total)
ls fragments/labels/ | wc -l
# 986

# Build and test workflow
zsh ./utils/assemble.sh --script    # Build (~0.05 sec)
zsh ./utils/assemble.sh firefox     # Test specific label  
zsh ./utils/assemble.sh --help      # Show usage options
```

### Testing Scenarios
- **On macOS systems**: Test actual downloads and installations
- **On non-macOS systems**: Only build validation possible
- Always test version detection logic when adding/modifying labels
- Verify Team ID validation works correctly
- Test both successful and failure scenarios

### Time Expectations
- **Script assembly**: ~0.05 seconds - NEVER CANCEL, set timeout to 2+ minutes for safety
- **Individual label test**: ~0.05 seconds for assembly + download time (varies)
- **Full label validation**: Variable, depends on application size and download speed
- **CI workflow runs**: 2-5 minutes for basic validation

## Important Notes

- **macOS Required**: Cannot test actual functionality on Linux/Windows
- **Fragment-based**: Never edit `Installomator.sh` directly
- **Debug Modes**: Always use `DEBUG=2` for safe testing
- **Version Documentation**: Must document version detection method for new labels
- **Team Collaboration**: Use MacAdmins Slack #installomator channel for questions
- **Branch Strategy**: Work on `main` branch, `release` branch for stable versions

## Troubleshooting

### Build Issues
- Ensure `zsh` is available and executable
- Check fragment file syntax (especially closing `;;` in labels)
- Verify all fragment files exist and are readable

### Testing Limitations
- Cannot run functional tests outside macOS
- Use `DEBUG=2` mode to test without actual installation
- Assembly validation possible on any system with `zsh`

### Label Development Issues
- Follow existing label patterns exactly
- Ensure proper case statement syntax with `;;`
- Test download URLs are accessible
- Verify Team ID matches application developer