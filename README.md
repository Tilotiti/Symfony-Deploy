# Symfony-Deploy
Linux command for deploying an new installation or an update of a Symfony 3 project.

## Installation

    $ cd ~
    $ git clone git@github.com:Tilotiti/Symfony-Deploy.git
    $ 'alias sf_deploy="~/Symfony-Deploy/deploy.sh"' >> .bashrc
    $ source .bashrc
  
## Usage
If you only want to refresh your code :

    $ cd /var/www/[symfony-project]
    $ sf_deploy
    
If you want to refresh your code and the composers dependencies :

    $ cd /var/www/[symfony-project]
    $ sf_deploy -c
