# Linux System Setup Script

This repository contains scripts to automate the installation of softwares for a new Linux system. it has two scripts to work across multiple Linux distributions (Debian-based and Arch-based systems).

## Features

- Installs essential software packages.

## Prerequisites

- A Linux system (Debian-based or Arch-based).
- Root or sudo access.

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/anas-asimi/linux-setup-script.git
    cd linux-setup-script
    ```

2. Make the script executable:
    ```bash
    chmod +x *_setup.sh
    ```

3. Run the script:

    for Arch-based :
    ```bash
    sudo ./Arch_based_setup.sh
    ```
    
    for Debian-based :
    ```bash
    sudo ./Debian_based_setup.sh
    ```

## Script Details

The script performs the following tasks:

1. **System Update**: Updates the package lists and upgrades installed packages.
2. **Software Installation**: Installs a list of predefined software packages.
4. **System Clean Up**: Removes unnecessary packages and cleans up temporary files to free up disk space.

## Customization

You can customize the script by editing the `setup.sh` or apps.txt file. Add or remove software packages and system configurations as needed.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgements

- Inspired by various Linux setup and automation scripts available online.
- Special thanks to the open-source community for their contributions.
