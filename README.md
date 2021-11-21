# Project-1
Project_Repo 1
GoodSecurity Penetration Test Report Benny.Walker@GoodSecurity.com 
DATE 11-2-21
1.0 High-Level Summary 
GoodSecurity was tasked with performing an internal penetration test on GoodCorp’s CEO, Hans Gruber. An internal penetration test is a dedicated attack against internally connected systems. The focus of this test is to perform attacks, similar to those of a hacker and attempt to infiltrate Hans’ computer and determine if it is at risk. GoodSecurity’s overall objective was to exploit any vulnerable software and find the secret recipe file on Hans’ computer, while reporting the findings back to GoodCorp. 
When performing the internal penetration test, there were several alarming vulnerabilities that were 
identified on Hans’ desktop. When performing the attacks, GoodSecurity was able to gain access to his machine and find the secret recipe file by exploit two programs that had major vulnerabilities. The details of the attack can be found in the ‘Findings’ category.
2.0 Findings 
Machine IP: 
Machine’s IP address 192.168.0.20 
Hostname:MSEDGEWIN10 
Actual name of the machine 
Vulnerability Exploited:Port:8000 TCP OPEN HTTP Icecast streaming media server The name of the script or Metasploit module used
Vulnerability Explanation: 
Explain the vulnerability as best you can by explaining the attack type (i.e. is it a heap overflow attack, buffer overflow, file inclusion, etc.?) and briefly summarize what that attack is (Might need Google’s help!) This application allows a buffer overflow exploit wherein an attacker can remotely gain access of a victim’s system by overwriting the memory on the system by utilizing the icecast defect, which writes past the end of a pointer array when receiving 32 HTTP headers. 
Problems - Remote Access: 
File discovery and exfiltration 
key logging and screen capture
Privilege escalation to Administrator 
Severity: 10 
In your expert opinion, how severe is this vulnerability? This vulnerability is serious especially when a hacker can escalate their privilege to administrator by remote access. Also discovered two more vulnerabilities -exploit/windows/local/ms16_075_reflection and exploit/windows/local/ikeext_service 
Proof of Concept: 
This is where you show the steps you took. Show the client how you exploited the software services. Please include screenshots!

There should be a separate finding for each vulnerability found! 
3.0 Recommendations
What recommendations would you give to GoodCorp? My recommendations for GoodCorp is to fix the issue with an installment of the latest version and other software, but this is still a HIGH priority to be corrected.
