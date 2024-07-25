# module completions {
#
#   # An Experimental Package Management Solution for Python
#   export extern rye [
#     --env-file: string        # Load one or more .env files
#     --version                 # Print the version
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye add pin" [] {
#     [ "equal" "tilde-equal" "greater-than-equal" ]
#   }
#
#   def "nu-complete rye add keyring_provider" [] {
#     [ "disabled" "subprocess" ]
#   }
#
#   # Adds a Python package to this project
#   export extern "rye add" [
#     ...requirements: string   # The package to add as PEP 508 requirement string. e.g. 'flask==2.2.3'
#     --git: string             # Install the given package from this git repository
#     --url: string             # Install the given package from this URL
#     --path: string            # Install the given package from this local path
#     --absolute                # Force non interpolated absolute paths
#     --tag: string             # Install a specific tag
#     --rev: string             # Update to a specific git rev
#     --branch: string          # Update to a specific git branch
#     --features: string        # Adds a dependency with a specific feature
#     --dev(-d)                 # Add this as dev dependency
#     --excluded                # Add this as an excluded dependency that will not be installed even if it's a sub dependency
#     --optional: string        # Add this to an optional dependency group
#     --pre                     # Include pre-releases when finding a package version
#     --pin: string@"nu-complete rye add pin" # Overrides the pin operator
#     --keyring-provider: string@"nu-complete rye add keyring_provider" # Attempt to use `keyring` for authentication for index URLs
#     --sync                    # Runs `sync` even if auto-sync is disabled
#     --no-sync                 # Does not run `sync` even if auto-sync is enabled
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Builds a package for distribution
#   export extern "rye build" [
#     --sdist                   # Build a sdist
#     --wheel                   # Build a wheel
#     --all(-a)                 # Build all packages
#     --package(-p): string     # Build a specific package
#     --out(-o): string         # An output directory (defaults to `workspace/dist`)
#     --pyproject: string       # Use this pyproject.toml file
#     --clean(-c)               # Clean the output directory first
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye config format" [] {
#     [ "json" ]
#   }
#
#   # Reads or modifies the global `config.toml` file
#   export extern "rye config" [
#     --show-path               # Print the path to the config
#     --format: string@"nu-complete rye config format" # Request parseable output format rather than lines
#     --get: string             # Reads a config key
#     --set: string             # Sets a config key to a string
#     --set-int: string         # Sets a config key to an integer
#     --set-bool: string        # Sets a config key to a bool
#     --unset: string           # Remove a config key
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Fetches a Python interpreter for the local machine. This is an alias of `rye toolchain fetch`
#   export extern "rye fetch" [
#     version?: string          # The version of Python to fetch
#     --force(-f)               # Fetch the Python toolchain even if it is already installed
#     --target-path: string     # Fetches the Python toolchain into an explicit location rather
#     --build-info              # Fetches with build info
#     --no-build-info           # Fetches without build info
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Run the code formatter on the project
#   export extern "rye fmt" [
#     ...paths: string          # List of files or directories to limit the operation to
#     --all(-a)                 # Perform the operation on all packages
#     --package(-p): string     # Perform the operation on a specific package
#     --pyproject: string       # Use this pyproject.toml file
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     ...extra_args: string     # Extra arguments to ruff
#     --check                   # Run format in check mode
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   def "nu-complete rye init build_system" [] {
#     [ "hatchling" "setuptools" "flit" "pdm" "maturin" ]
#   }
#
#   # Initialize a new or existing Python project with Rye
#   export extern "rye init" [
#     path?: string             # Where to place the project (defaults to current path)
#     --lib                     # Generate a library project (default)
#     --script                  # Generate an executable project
#     --min-py: string          # Minimal Python version supported by this project
#     --py(-p): string          # Python version to use for the virtualenv
#     --no-readme               # Do not create a readme
#     --no-pin                  # Do not create .python-version file (requires-python will be used)
#     --build-system: string@"nu-complete rye init build_system" # Which build system should be used (defaults to hatchling)?
#     --license: string         # Which license should be used (SPDX identifier)?
#     --name: string            # The name of the package
#     --private                 # Set "Private :: Do Not Upload" classifier, used for private projects
#     --no-import               # Don't import from setup.cfg, setup.py, or requirements files
#     --virtual                 # Initialize this as a virtual package
#     --requirements(-r): string # Requirements files to initialize pyproject.toml with
#     --dev-requirements: string # Development requirements files to initialize pyproject.toml with
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Installs a package as global tool. This is an alias of `rye tools install`
#   export extern "rye install" [
#     requirement: string       # The name of the package to install
#     --git: string             # Install the given package from this git repository
#     --url: string             # Install the given package from this URL
#     --path: string            # Install the given package from this local path
#     --absolute                # Force non interpolated absolute paths
#     --tag: string             # Install a specific tag
#     --rev: string             # Update to a specific git rev
#     --branch: string          # Update to a specific git branch
#     --features: string        # Adds a dependency with a specific feature
#     --include-dep: string     # Include scripts from a given dependency
#     --extra-requirement: string # Additional dependencies to install that are not declared by the main package
#     --python(-p): string      # Optionally the Python version to use
#     --force(-f)               # Force install the package even if it's already there
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye lock keyring_provider" [] {
#     [ "disabled" "subprocess" ]
#   }
#
#   # Updates the lockfiles without installing dependencies
#   export extern "rye lock" [
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --update: string          # Update a specific package
#     --update-all              # Update all packages to the latest
#     --pre                     # Update to pre-release versions
#     --features: string        # Extras/features to enable when locking the workspace
#     --all-features            # Enables all features
#     --with-sources            # Set to true to lock with sources in the lockfile
#     --keyring-provider: string@"nu-complete rye lock keyring_provider" # Attempt to use `keyring` for authentication for index URLs
#     --reset                   # Reset prior lock options
#     --pyproject: string       # Use this pyproject.toml file
#     --generate-hashes         # Set to true to lock with hashes in the lockfile
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Run the linter on the project
#   export extern "rye lint" [
#     ...paths: string          # List of files or directories to limit the operation to
#     --all(-a)                 # Perform the operation on all packages
#     --package(-p): string     # Perform the operation on a specific package
#     --pyproject: string       # Use this pyproject.toml file
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     ...extra_args: string     # Extra arguments to ruff
#     --fix                     # Apply fixes
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Builds and prints a PEP 508 requirement string from parts
#   export extern "rye make-req" [
#     ...requirements: string   # The package to add as PEP 508 requirement string. e.g. 'flask==2.2.3'
#     --git: string             # Install the given package from this git repository
#     --url: string             # Install the given package from this URL
#     --path: string            # Install the given package from this local path
#     --absolute                # Force non interpolated absolute paths
#     --tag: string             # Install a specific tag
#     --rev: string             # Update to a specific git rev
#     --branch: string          # Update to a specific git branch
#     --features: string        # Adds a dependency with a specific feature
#     --help(-h)                # Print help
#   ]
#
#   # Pins a Python version to this project
#   export extern "rye pin" [
#     version: string           # The version of Python to pin
#     --relaxed                 # Issue a relaxed pin
#     --no-update-requires-python # Prevent updating requires-python in the pyproject.toml
#     --pyproject: string       # Use this pyproject.toml file
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Publish packages to a package repository
#   export extern "rye publish" [
#     ...dist: string           # The distribution files to upload to the repository (defaults to <workspace-root>/dist/*)
#     --repository(-r): string  # The repository to publish to
#     --repository-url: string  # The repository url to publish to
#     --username(-u): string    # The username to authenticate to the repository with
#     --token: string           # An access token used for the upload
#     --sign                    # Sign files to upload using GPG
#     --identity(-i): string    # GPG identity used to sign files
#     --cert: string            # Path to alternate CA bundle
#     --skip-existing           # Skip files that have already been published (only applies to repositories supporting this feature)
#     --yes(-y)                 # Skip prompts
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye remove keyring_provider" [] {
#     [ "disabled" "subprocess" ]
#   }
#
#   # Removes a package from this project
#   export extern "rye remove" [
#     ...requirements: string   # The packages to remove
#     --dev                     # Remove this from dev dependencies
#     --optional: string        # Remove this from an optional dependency group
#     --sync                    # Runs `sync` even if auto-sync is disabled
#     --no-sync                 # Does not run `sync` even if auto-sync is enabled
#     --keyring-provider: string@"nu-complete rye remove keyring_provider" # Attempt to use `keyring` for authentication for index URLs
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Runs a command installed into this package
#   export extern "rye run" [
#     --list(-l)                # List all commands
#     --pyproject: string       # Use this pyproject.toml file
#     --help(-h)                # Print help
#   ]
#
#   # Prints the current state of the project
#   export extern "rye show" [
#     --installed-deps          # Print the installed dependencies from the venv
#     --pyproject: string       # Use this pyproject.toml file
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye sync keyring_provider" [] {
#     [ "disabled" "subprocess" ]
#   }
#
#   # Updates the virtualenv based on the pyproject.toml
#   export extern "rye sync" [
#     --force(-f)               # Force the environment to be re-created
#     --no-dev                  # Do not include dev dependencies
#     --no-lock                 # Do not update the lockfile
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --update: string          # Update a specific package
#     --update-all              # Update all packages to the latest
#     --pre                     # Update to pre-release versions
#     --features: string        # Extras/features to enable when syncing the workspace
#     --all-features            # Enables all features
#     --with-sources            # Set to true to lock with sources in the lockfile
#     --keyring-provider: string@"nu-complete rye sync keyring_provider" # Attempt to use `keyring` for authentication for index URLs
#     --pyproject: string       # Use this pyproject.toml file
#     --reset                   # Do not reuse (reset) prior lock options
#     --generate-hashes         # Set to true to lock with hashes in the lockfile
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   def "nu-complete rye test keyring_provider" [] {
#     [ "disabled" "subprocess" ]
#   }
#
#   # Run the tests on the project
#   export extern "rye test" [
#     --all(-a)                 # Perform the operation on all packages
#     --package(-p): string     # Perform the operation on a specific package
#     --pyproject: string       # Use this pyproject.toml file
#     --keyring-provider: string@"nu-complete rye test keyring_provider" # Attempt to use `keyring` for authentication for index URLs
#     --no-capture(-s)
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     ...extra_args: string     # Extra arguments to pytest
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Helper utility to manage Python toolchains
#   export extern "rye toolchain" [
#     --help(-h)                # Print help
#   ]
#
#   # Fetches a Python interpreter for the local machine. This is an alias of `rye toolchain fetch`
#   export extern "rye toolchain fetch" [
#     version?: string          # The version of Python to fetch
#     --force(-f)               # Fetch the Python toolchain even if it is already installed
#     --target-path: string     # Fetches the Python toolchain into an explicit location rather
#     --build-info              # Fetches with build info
#     --no-build-info           # Fetches without build info
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   def "nu-complete rye toolchain list format" [] {
#     [ "json" ]
#   }
#
#   # List all registered toolchains
#   export extern "rye toolchain list" [
#     --include-downloadable    # Also include non installed, but downloadable toolchains
#     --format: string@"nu-complete rye toolchain list format" # Request parseable output format
#     --help(-h)                # Print help
#   ]
#
#   # Register a Python binary
#   export extern "rye toolchain register" [
#     path: string              # Path to the Python binary
#     --name(-n): string        # Name of the toolchain.  If not provided a name is auto detected
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Removes a toolchain
#   export extern "rye toolchain remove" [
#     version: string           # Name and version of the toolchain
#     --force(-f)               # Force removal even if the toolchain is in use
#     --help(-h)                # Print help
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye toolchain help" [
#   ]
#
#   # Fetches a Python interpreter for the local machine. This is an alias of `rye toolchain fetch`
#   export extern "rye toolchain help fetch" [
#   ]
#
#   # List all registered toolchains
#   export extern "rye toolchain help list" [
#   ]
#
#   # Register a Python binary
#   export extern "rye toolchain help register" [
#   ]
#
#   # Removes a toolchain
#   export extern "rye toolchain help remove" [
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye toolchain help help" [
#   ]
#
#   # Helper utility to manage global tools
#   export extern "rye tools" [
#     --help(-h)                # Print help
#   ]
#
#   # Installs a package as global tool. This is an alias of `rye tools install`
#   export extern "rye tools install" [
#     requirement: string       # The name of the package to install
#     --git: string             # Install the given package from this git repository
#     --url: string             # Install the given package from this URL
#     --path: string            # Install the given package from this local path
#     --absolute                # Force non interpolated absolute paths
#     --tag: string             # Install a specific tag
#     --rev: string             # Update to a specific git rev
#     --branch: string          # Update to a specific git branch
#     --features: string        # Adds a dependency with a specific feature
#     --include-dep: string     # Include scripts from a given dependency
#     --extra-requirement: string # Additional dependencies to install that are not declared by the main package
#     --python(-p): string      # Optionally the Python version to use
#     --force(-f)               # Force install the package even if it's already there
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   # Uninstalls a global tool. This is an alias of `rye tools uninstall`
#   export extern "rye tools uninstall" [
#     name: string              # The package to uninstall
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   # List all registered tools
#   export extern "rye tools list" [
#     --include-scripts(-s)     # Show all the scripts installed by the tools
#     --include-version(-v)     # Show the version of tools
#     --help(-h)                # Print help
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye tools help" [
#   ]
#
#   # Installs a package as global tool. This is an alias of `rye tools install`
#   export extern "rye tools help install" [
#   ]
#
#   # Uninstalls a global tool. This is an alias of `rye tools uninstall`
#   export extern "rye tools help uninstall" [
#   ]
#
#   # List all registered tools
#   export extern "rye tools help list" [
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye tools help help" [
#   ]
#
#   # Rye self management
#   export extern "rye self" [
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye self completion shell" [] {
#     [ "bash" "elvish" "fish" "power-shell" "zsh" "nushell" ]
#   }
#
#   # Generates a completion script for a shell
#   export extern "rye self completion" [
#     --shell(-s): string@"nu-complete rye self completion shell" # The shell to generate a completion script for (defaults to 'bash')
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Performs an update of rye
#   export extern "rye self update" [
#     --version: string         # Update to a specific version
#     --tag: string             # Update to a specific tag
#     --rev: string             # Update to a specific git rev
#     --branch: string          # Update to a specific git branch
#     --force                   # Force reinstallation
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Triggers the initial installation of Rye
#   export extern "rye self install" [
#     --yes(-y)                 # Skip prompts
#     --toolchain: string       # Register a specific toolchain before bootstrap
#     --toolchain-version: string # Use a specific toolchain version
#     --modify-path             # Always modify without asking the PATH environment variable
#     --no-modify-path          # Do not modify the PATH environment variable
#     --help(-h)                # Print help (see more with '--help')
#   ]
#
#   # Uninstalls rye again
#   export extern "rye self uninstall" [
#     --yes(-y)                 # Skip safety check
#     --help(-h)                # Print help
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye self help" [
#   ]
#
#   # Generates a completion script for a shell
#   export extern "rye self help completion" [
#   ]
#
#   # Performs an update of rye
#   export extern "rye self help update" [
#   ]
#
#   # Triggers the initial installation of Rye
#   export extern "rye self help install" [
#   ]
#
#   # Uninstalls rye again
#   export extern "rye self help uninstall" [
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye self help help" [
#   ]
#
#   # Uninstalls a global tool. This is an alias of `rye tools uninstall`
#   export extern "rye uninstall" [
#     name: string              # The package to uninstall
#     --verbose(-v)             # Enables verbose diagnostics
#     --quiet(-q)               # Turns off all output
#     --help(-h)                # Print help
#   ]
#
#   def "nu-complete rye version bump" [] {
#     [ "major" "minor" "patch" ]
#   }
#
#   # Get or set project version
#   export extern "rye version" [
#     version?: string          # The version to set
#     --bump(-b): string@"nu-complete rye version bump" # The version bump to apply
#     --help(-h)                # Print help
#   ]
#
#   # Prints the currently installed packages
#   export extern "rye list" [
#     --pyproject: string       # Use this pyproject.toml file
#     --help(-h)                # Print help
#   ]
#
#   # The shell command was removed
#   export extern "rye shell" [
#     --help(-h)                # Print help
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye help" [
#   ]
#
#   # Adds a Python package to this project
#   export extern "rye help add" [
#   ]
#
#   # Builds a package for distribution
#   export extern "rye help build" [
#   ]
#
#   # Reads or modifies the global `config.toml` file
#   export extern "rye help config" [
#   ]
#
#   # Fetches a Python interpreter for the local machine. This is an alias of `rye toolchain fetch`
#   export extern "rye help fetch" [
#   ]
#
#   # Run the code formatter on the project
#   export extern "rye help fmt" [
#   ]
#
#   # Initialize a new or existing Python project with Rye
#   export extern "rye help init" [
#   ]
#
#   # Installs a package as global tool. This is an alias of `rye tools install`
#   export extern "rye help install" [
#   ]
#
#   # Updates the lockfiles without installing dependencies
#   export extern "rye help lock" [
#   ]
#
#   # Run the linter on the project
#   export extern "rye help lint" [
#   ]
#
#   # Builds and prints a PEP 508 requirement string from parts
#   export extern "rye help make-req" [
#   ]
#
#   # Pins a Python version to this project
#   export extern "rye help pin" [
#   ]
#
#   # Publish packages to a package repository
#   export extern "rye help publish" [
#   ]
#
#   # Removes a package from this project
#   export extern "rye help remove" [
#   ]
#
#   # Runs a command installed into this package
#   export extern "rye help run" [
#   ]
#
#   # Prints the current state of the project
#   export extern "rye help show" [
#   ]
#
#   # Updates the virtualenv based on the pyproject.toml
#   export extern "rye help sync" [
#   ]
#
#   # Run the tests on the project
#   export extern "rye help test" [
#   ]
#
#   # Helper utility to manage Python toolchains
#   export extern "rye help toolchain" [
#   ]
#
#   # Fetches a Python interpreter for the local machine. This is an alias of `rye toolchain fetch`
#   export extern "rye help toolchain fetch" [
#   ]
#
#   # List all registered toolchains
#   export extern "rye help toolchain list" [
#   ]
#
#   # Register a Python binary
#   export extern "rye help toolchain register" [
#   ]
#
#   # Removes a toolchain
#   export extern "rye help toolchain remove" [
#   ]
#
#   # Helper utility to manage global tools
#   export extern "rye help tools" [
#   ]
#
#   # Installs a package as global tool. This is an alias of `rye tools install`
#   export extern "rye help tools install" [
#   ]
#
#   # Uninstalls a global tool. This is an alias of `rye tools uninstall`
#   export extern "rye help tools uninstall" [
#   ]
#
#   # List all registered tools
#   export extern "rye help tools list" [
#   ]
#
#   # Rye self management
#   export extern "rye help self" [
#   ]
#
#   # Generates a completion script for a shell
#   export extern "rye help self completion" [
#   ]
#
#   # Performs an update of rye
#   export extern "rye help self update" [
#   ]
#
#   # Triggers the initial installation of Rye
#   export extern "rye help self install" [
#   ]
#
#   # Uninstalls rye again
#   export extern "rye help self uninstall" [
#   ]
#
#   # Uninstalls a global tool. This is an alias of `rye tools uninstall`
#   export extern "rye help uninstall" [
#   ]
#
#   # Get or set project version
#   export extern "rye help version" [
#   ]
#
#   # Prints the currently installed packages
#   export extern "rye help list" [
#   ]
#
#   # The shell command was removed
#   export extern "rye help shell" [
#   ]
#
#   # Print this message or the help of the given subcommand(s)
#   export extern "rye help help" [
#   ]
#
# }
#
# export use completions *
