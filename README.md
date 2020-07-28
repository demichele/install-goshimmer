# Install GoShimmer for Pollen testnet using one command

You can use this one line command to get a routine that will perform the installation of GoShimmer. Login to your VPS and run the command bellow. **This shell script has been tested in Ubuntu 20.04.** 


## Install GoShimmer

The following commands will download and run an install.sh script with all steps needed to install GoShimmer according to the guide at [IOTA Foundation repository](https://github.com/iotaledger/goshimmer/wiki/Setup-up-a-GoShimmer-node-(Joining-the-pollen-testnet)). 

```
wget https://raw.githubusercontent.com/demichele/install-goshimmer/master/install.sh && chmod 0777 install.sh && ./install.sh
```

Once the process finishes you will be able to access your Node Dashboard at:

```
http://your-ip:8081
```
## Upgrade or restart GoShimmer

GoShimmer is experimental software and might crash from time to time. This command will delete your database, get the latest GoShimmer version, install it and restart it.
You can use it to upgrade your Goshimmer to the latest IF release or to recover your node if it fails.
Login to your VPS and run this command:

```
cd /opt/goshimmer && docker-compose down && rm db/* && docker-compose pull && docker-compose up -d
```

I will be updating the commands to reflect the installation recommended by the IOTA Foundation

**Donate:** OYAZJFTXVYHJTUQQNQXGJGITRIKKWWTCHCSODIJBDWM9YTT9MDHDKOWSDGHKCRXVQRQDOHDMXIFYGLGQCXSAJ9NJIW
