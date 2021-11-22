# Project-1
Project_Repo 1
## Automated ELK Stack Deployment 
The files in this repository were used to configure the network depicted below. Project-1/Diagrams/Project_1.drawio.png
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat. 
filebeat-playbook.yml 
This document contains the following details: 
- Description of the Topology 
- Access Policies 
- ELK Configuration 
- Beats in Use 
- Machines Being Monitored 
- How to Use the Ansible Build 
### Description of the Topology 
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application. 
Load balancing ensures that the application will be highly available in addition to restricting access to the network. 
What aspect of security do load balancers protect? The Availability - ensures the system's authorized users have prompt and uninterrupted access to the information in the system and to the network. 
What is the advantage of a jump box? It allows automation, improves security, audits traffic of segmented networks, and allows for ease of access control by using a single point to be secured and monitored.   
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics and statistics.
What does Filebeat watch for? Filebeat is a lightweight shipper for forwarding and centralizing log data, which monitors for any changes in information and the change took place. 
-What does Metricbeat record? Metricbeat records metric and statistical data then sent out to elasticsearch for indexing. 
The configuration details of each machine may be found below. 
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.
| Name | Function | IP Address | Operating System | 
|----------|----------|------------|------------------| 
| Jump Box-Provisioner | Gateway | 10.0.0.4 | Linux ubuntu 18.04 | 
| Web1 | VM | 10.0.0.5 | Linux ubuntu 18.04 | 
| Web2 | VM | 10.0.0.6 | Linux ubuntu 18.04 | 
| ELK-vm | ELK-Stack| 10.1.0.4 | Linux ubuntu 18.04 | 
### Access Policies 
The machines on the internal network are not exposed to the public Internet. 
Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 
71.71.68.202 is my personal IPV4 address 
Machines within the network can only be accessed by port 22. 
Which machine did you allow to access your ELK VM?This machine can access my ELK VM using IP 71.71.68.202 - my personal machine IPV4 address What was its IP address? 10.0.0.4 
A summary of the access policies in place can be found in the table below. 
| Name | Publicly Accessible | Allowed IP Addresses | 
|----------|---------------------|----------------------| 
| Jump Box Provisioner | Yes | 10.0.0.4, 71.71.68.202 | 
| Web1 | No | 10.0.0.5 | 
| Web2 | No | 10.0.0.6 | 
Elk-vm No 10.1.0.4, 71.71.68.202 
### Elk Configuration 
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because.Allow you to deploy multiple applications using a single playbook into your servers. 
The playbook implements the following tasks: 
-In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._ 
- Install Docker 
Download Image 
Configure Container 
Create playbook and install container with Docker and Filebeat and Metricbeat Run playbook to launch the container
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance. 
![TODO: Update the path with the name of your screenshot of docker ps 
output](Images/docker_ps_output.png) 
### Target Machines & Beats 
This ELK server is configured to monitor the following machines: 
List the IP addresses of the machines you are monitoring_ 
10.0.0.5 Web1 
10.0.0.6 Web2 
We have installed the following Beats on these machines: Elk Server, Web1,Web2
Specify which Beats you successfully installed_ 
filebeat-7.4.0-amd64.deb - collects log events
metricbeat-7.4.0-amd64.deb - collects the metrics and statistics
These Beats allow us to collect the following information from each machine: - _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._ 
Filebeat monitors and collects log events on specified servers such as my Web-1 and Web-2 VM servers. Filebeat is used to send log files to Kibana. 
Metricbeat collects metrics from the operating system as well as services running on the server. It then sends the collected metrics to a specified output, such as Elasticsearch 
### Using the Playbook 
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
SSH into the control node and follow the steps below: 
- Copy the filebeat-playbook.yml file to /etc/filebeat/filebeat.yml. 
- Update the filebeat-config.yml file to include the ELK server private IP in lines 1106 and 1806. 
- Run the playbook, and navigate to [Elk-Public-IP]:5601/app/kibana to check that the installation worked as expected.
_TODO: Answer the following questions to fill in the blanks:_ 
- _Which file is the playbook? filebeat-playbook.yml Where do you copy it? /etc/ansible/files
- _Which file do you update to make Ansible run the playbook on a specific machine? /etc/ansible/hosts  How do I specify which machine to install the ELK server on versus which to install Filebeat on?Edit /etc/ansible/hosts/ file specific webservers for filebeat and where to install ELK. Which URL do you navigate to in order to check that the ELK server is running? http://71.71.68.202:5601/app/kibana
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
