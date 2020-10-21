# Install IIS Website
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Setup directory
New-Item C:\VotingWorkerApp -type Directory

# Copy over build artifacts
Copy-Item "C:\workflow-artifacts\*" -Destination "C:\VotingWorkerApp" -Recurse
 
# Create site
New-IISSite -Name "VotingWorkerApp" -BindingInformation "*:8080:" -PhysicalPath "C:\VotingWorkerApp" 

# Open firewall port for 8080
New-NetFirewallRule -DisplayName "Allow Outbound Port 8080" -Direction Inbound -LocalPort 8080 -Protocol TCP -Action Allow

# Clean up buildArtifacts directory
Remove-Item -Path "C:\buildArtifacts\*" -Force -Recurse

# Delete the buildArtifacts directory
Remove-Item -Path "C:\buildArtifacts" -Force 