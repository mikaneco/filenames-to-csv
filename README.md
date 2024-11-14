# Text Files to CSV Converter

This Ruby script reads all `.txt` files in a specified folder and generates a CSV file containing the filenames and their content.

## Features
- Reads all `.txt` files from a given folder.
- Outputs a CSV file with two columns: `File Name` and `Content`.
- Removes leading and trailing whitespace from the content.

## Requirements
- Ruby installed on your system.

## Usage

1. Place all `.txt` files in the folder you want to process.
2. Update the `folder_path` variable in the script to point to your folder.
3. Run the script:
   ```bash
   ruby your_script_name.rb
   ```
4. The output CSV (`output.csv`) will be generated in the same directory as the script.

## Output Format
The CSV file will have the following structure:

| File Name       | Content                |
|-----------------|------------------------|
| example1.txt    | Content of example1... |
| example2.txt    | Content of example2... |

## Notes
- Ensure the folder specified in `folder_path` exists and contains `.txt` files.
- The script automatically skips any non-`.txt` files in the folder.

