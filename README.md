# ASCII Art Output

A command-line utility that generates ASCII art with multiple output format options.

## Description

This program extends the basic ASCII art functionality by providing various output format options. It can generate ASCII art and save it to different file formats or display it in the terminal.

## Features

- All base functionality of the ascii-art program
- Support for multiple output formats
- File export capabilities
- Option to append to existing files

## Usage

```bash
go run . [STRING] [BANNER] [OPTION]
```

Options:
- `--output=<filename>`: Save output to the specified file

Examples:
```bash
go run . "Hello World" standard
go run . "Hello World" shadow --output=result.txt
```

## Implementation Details

- Creates new files if they don't exist
- Safely handles file writing operations
- Maintains original ASCII art formatting
- Provides error handling for file operations

## Requirements

- Go 1.13 or higher
