# docker related files

1. install docker on
rpi: curl -fsSL https://get.docker.com | sh
2. The syntax for adding users to the Docker group is:
sudo usermod -aG docker [user_name]
3. To add the permissions to the current user run:
sudo usermod -aG docker ${USER}
4. Check it running:
groups ${USER}
5. Reboot the Raspberry Pi to let the changes take effect.
Enable the Docker system service to start your containers on boot
This is a very nice and important addition. With the following command you can configure your Raspberry Pi to automatically run the Docker system service, whenever it boots up.
sudo systemctl enable docker
With this in place, containers with a restart policy set to always or unless-stopped will be re-started automatically after a reboot.

6. Run Hello World Container
The best way to test whether Docker has been set up correctly is to run the Hello World container.
To do so, type in the following command:
docker run hello-world
Once it goes through all the steps, the output should inform you that your installation appears to be working correctly.
