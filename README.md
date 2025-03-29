for the original `README.md` see `README_original.md`

# Setup
## ssh keys
`mkdir ssh`\
`ssh-keygen -t rsa -b 4096 -C "youremail@example.com"`\
when asked to enter file `ssh/id_rsa`
Go to github settings and add the public key

## MuJoCo license
Go to `https://roboti.us/license.html` get the activation key and place it here (root of repo)

## Build Image
`bash build_image.sh`

## Enter container
`bash enter_container.sh`

## Install dependencies
`bash install.sh`