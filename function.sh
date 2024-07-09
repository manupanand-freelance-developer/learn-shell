#how to write function in shell
function aptInstall(){
  echo "installing update"
  sudo apt install update
  sudo apt dist-upgrade -y
  sudo apt install unattended-upgrades -y
}

# aptInsall

# can call this in another file>sourcr filename