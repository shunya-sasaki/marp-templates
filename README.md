# Marp Templates

This project has templates for Marp slides and scripts that copies template and theme files to your working directory.

- [Requirements](#requirements)
- [Setup](#setup)
  - [Clone this project](#clone-this-project)
  - [Add an alias to your shell environment configuration file](#add-an-alias-to-your-shell-environment-configuration-file)
- [Usage](#usage)
  - [Add style files and templates to the current directory](#add-style-files-and-templates-to-the-current-directory)
  - [Create a new Marp project directory](#create-a-new-marp-project-directory)
- [License](#license)
- [Auhtor](#auhtor)

## Requirements

- [Visual Studio Code](https://code.visualstudio.com/)
  - [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)

## Setup

### Clone this project

First, clone this project to your computer by running the following command in your terminal.

```sh
git clone https://github.com/shunya-sasaki/marp-templates.git
```

### Add an alias to your shell environment configuration file

Open your shell environment configuration file (e.g., `.bashrc`) in a text editor,
and add the following line. Replace `YOUR_DIRECTORY` with the directory where
you cloned this project. This allows you to run the `marp-init` command.

```sh
alias marp-init=YOUR_DIRECTORY/marp-templates/bin/marp-init.sh
```

## Usage

### Add style files and templates to the current directory

If you add style files and template files to the current directory,
just run `marp-init`. After running this command, the `assets` and
`docs` directories are created as follows.

```diff
  your_directory
+ |- assets
+ |  `- css
+ |     `- custom.css
+ |- docs
+ |  `- slide.md
  `- ...
```

### Create a new Marp project directory

If you create a new directory that has subdirectories (`assets` and `docs`),
run the `marp-init` command with an argument that is the directory name.
After running this command, a directory with the specified name will be created.

## License

[MIT](./LICENSE)

## Auhtor

Shunya Sasaki &lt;<shunya.sasaki1120@gmail.com>&gt;
