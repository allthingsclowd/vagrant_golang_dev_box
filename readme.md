# Golang Development Box Vagrantfile
This vagrantfile builds an ubuntu server with Golang installed and downloads the repository defined in the environment file - environment.sh

Ensure to source the environment.sh file before running vagrant up

## Deployment

``` bash
source environment.sh
vagrant up
```

## Verification
Log into the GoDev server and test as follows [assumes the default hello repository is in use]:
``` bash
vagrant ssh GoDev
$HOME/code/go/bin/hello
```
