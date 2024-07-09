#how to write function in shell
function aptInsall(){
  sudo apt install update
  sudo apt dist-upgrade -y
  sudo apt install unattended-upgrades -y
}

aptInsall