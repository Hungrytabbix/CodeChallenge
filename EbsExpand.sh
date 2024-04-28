#!/bin/bash

# The name of the EBS volume 
VOLUME="/dev/xvda1"

# 1. Grow the partition
# install the growpart

sudo yum install -y cloud-utils-growpart

# Expand the partition
echo "Expanding the partition"
sudo growpart "$VOLUME" 1

# 2. Resize the filesystem
# For ext4 filesystem
echo "Resizing the ext4 filesystem..."
sudo resize2fs "${VOLUME}1"


#conclusion
echo "Disk resized successfully.Thank you!"


#Thank you all!!!