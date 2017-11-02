## Lessons (by folder)

#### [1. ws-2016-gcloud](/tree/master/1.%20ws-2016-gcloud)

Tags:  [Packer](https://www.packer.io), [Terraform](https://www.terraform.io), [Ansible](https://www.ansible.com), Windows Servers, Google Cloud Compute.

Learned:

1. How to use [Packer](https://www.packer.io) to bake Windows-based VM Images on Google Cloud:
   - About Packer: 
     - Packer is **proprietary-agnostic**, meaning you can easily adjust the .json to bake images for a large variety of cloud providers. (See [Builders - Packer by HashiCorp](https://www.packer.io/docs/builders/index.html)).
     - Packer can pass provisioning to [Ansible](https://www.ansible.com) before baking image (e.g. "Windows updates").
2. How to use [Terraform](https://www.terraform.io) to define infrastructure in the cloud: 
   1. Pulling an image
   2. Deploying to the cloud
   3. Defining all the needed parameters (e.g. firewall, vm machine, region/zone).

#### [2. ubuntu-windows-desktop]() (In progress)

Tags: Ansible, Xubuntu 17.10, Windows Server 2016.

Learned: How to use [Ansible](https://www.ansible.com) to install MSI, scripts, and OS settings for a normal day-to-day SysAdmin laptop.