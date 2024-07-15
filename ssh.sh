ssh-keygen -t ed25519 -C "email" -f ~/.ssh/id_ed25519_frilename

#enter pass phrase

eval "(ssh-agent-s)"
#add ssh privatekey to agent
ssh-add ~/.ssh/id_name
#copy public key
cat ~/.ssh/id_name  
#opy and paste on auhentcated keys-server or reequired field


#configure ssh.conf for github
    ~/.ssh/config 
            `
            Host github.com
            User git
            IdentifyFile ~/.ssh/ide_name of private key

            `
#test 
ssh -T git@github.com