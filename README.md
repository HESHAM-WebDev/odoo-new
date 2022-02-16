# Task1

## Dev Environment Requirements:

- Ubuntu or any compatible Linux Distro
- Docker
- Docker Compose
- VSCode
- VSCode Remote Containers Extension https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

### Installation tips:

- Follow this guide to install Docker https://docs.docker.com/engine/install/ubuntu/
- Make sure you add your current user to docker group to be able to run docker without root privileges `sudo usermod -aG docker $USER`
- Use this command to install docker-compose

  `sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose`

- Follow this guide to install VSCode https://code.visualstudio.com/docs/setup/linux and prefer the one from apt repository or snap to avoid manual updates later.

---

## Dev Environment Preparation:

- Clone this repository
- `cd path/to/this/repo`
- `docker-compose pull` --> Will pull necessary docker images (may take some time)
- `docker-compose build` --> Will build Odoo dev image (may take some time)
- `code .` --> This will open the project in vscode

- Click Here and the choose "Reopen in Containers"
  ![Alt text](/DevGuide/01.png?raw=true "Open Remote Window")

- Follow the logs and make sure all extensions installed successfully.

- If everything works well, you now have a working Odoo dev environment!

- Press` Alt + Ctrl + U` and choose `Initialize Clean Environment`, This will create new database and install all custom addons (Whatever in ./addons directory)

---

## Running Odoo:

- Press F5 to run Odoo in debug mode, and now Odoo should be available in http://localhost:8069/
- Default username: admin
- Default password: admin

![Alt text](/DevGuide/02.png?raw=true "Odoo Debug")

1 - Debug window, You will need to observe this whenever you add a break point to debug your code.

2 - Here you can restart and stop your odoo server.

3 - Observe Odoo logs here.

### Now you can start writing code!
