# DevCleaner - A dev tool for cleaning disk usage

```
 ██████████                          █████████  ████                                                  
░░███░░░░███                        ███░░░░░███░░███                                                  
 ░███   ░░███  ██████  █████ █████ ███     ░░░  ░███   ██████   ██████   ████████    ██████  ████████ 
 ░███    ░███ ███░░███░░███ ░░███ ░███          ░███  ███░░███ ░░░░░███ ░░███░░███  ███░░███░░███░░███
 ░███    ░███░███████  ░███  ░███ ░███          ░███ ░███████   ███████  ░███ ░███ ░███████  ░███ ░░░ 
 ░███    ███ ░███░░░   ░░███ ███  ░░███     ███ ░███ ░███░░░   ███░░███  ░███ ░███ ░███░░░   ░███     
 ██████████  ░░██████   ░░█████    ░░█████████  █████░░██████ ░░████████ ████ █████░░██████  █████    
░░░░░░░░░░    ░░░░░░     ░░░░░      ░░░░░░░░░  ░░░░░  ░░░░░░   ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░  ░░░░░     
                                                                                                      
```

A simple terminal cleaner for developers built with Rust

**This repo holds choco files for [DevCleaner](https://github.com/DevCleaner/devcleaner)**

# Install

Choco package located [here](https://community.chocolatey.org/packages/devcleaner). Since you cannot upload a new package while a previous one is being validated, the newest version of a release may take a while to appear.

```bash
choco install devcleaner

# Version number may be required for newer releases, if available:
choco install devcleaner --version=0.0.9
```

# Test and Deploy

To test and deploy, see [here](https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing) for more info but the gist is, in an admin terminal:

```bash
choco pack
choco uninstall devcleaner          # Just to avoid having to force
choco install devcleaner -dv -s .
```

If successful:

```bash
choco push <PACKAGE_NAME>.nupkg -s https://push.chocolatey.org/
```

Visit [https://github.com/DevCleaner/devcleaner](https://github.com/DevCleaner/devcleaner) for more details
