# AWS_configuration
Configurations and scripts for AWS

## EMR configuration
The **[`setup`](./EMR/setup.sh)** script is downloaded and executed when the EMR instance is initialized. Edit that file if you want to add functionalities to the EMR machine.

**PS**: 
1. **currently the script is executed only in the master node**
2. **DO NOT EDIT THE [`execute_startup.sh`](./EMR/execute_startup.sh) SCRIPT.**
