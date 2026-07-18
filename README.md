# openSUSE sync packages

openSUSE sync packages provides a simple framework to compare and manage installed packages across multiple openSUSE machines using a Git submodule.

## Description
I've created the repository to compare, manage and track the installed packages on my openSUSE machines in a simple way. It contains a list of default installed packages on openSUSE Tumbleweed at the time of the commit, and scripts to install from, or update the list of installed packages in a text file.

## Usage

### Steps

#### 1. Initialize the Git submodule
To use this repository as a Git submodule in your project, run the following command in your project root:

```
git submodule add https://github.com/martonlente/opensuse-sync-packages.git opensuse-sync-packages
```

and pull the submodule content:
```
git submodule update --init
```

#### 2. Update the packages list
To update the `opensuse-sync-packages-installed.txt` file with the list of currently installed packages on your machine, run:

```
./opensuse-sync-packages/update-opensuse-sync-packages-installed.sh
```

This will generate or update the `opensuse-sync-packages-installed.txt` file in your project root directory.

#### 3. Install packages from the list
To install the packages listed in the `opensuse-sync-packages-installed.txt` file, run:

```
./opensuse-sync-packages/install-opensuse-sync-packages-installed.sh
```

### Branch management
- Each machine should have its own branch (e.g., `opensuse-l-p`, `opensuse-l-p-1`, etc.).
- To sync packages from one machine to another, check out the reference machine's branch first:

```
cd opensuse-sync-packages
git checkout <ref-machine-branch>
cd ..
```

Then, run the `install-opensuse-sync-packages-installed.sh` script to install the packages listed in the ref machine's branch.

## Version
0.1.0

## License
openSUSE sync packages is licensed under the [Apache 2.0](https://github.com/martonlente/opensuse-sync-packages/blob/main/LICENSE) license.
