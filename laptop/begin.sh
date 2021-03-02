# SSH Flags
# -i: Use to indicate which identity file should be read to authenticate with the ssh server's public key. This identity file is a private key.
# -J: Jump from one ssh server to another ssh server. Useful for direct connection to xilinx
# -N: Do not execute the remote command, so shell isn't opened on the SSH server. This is useful for just forwarding ports.
# -v: Verbove mode
# -t: Forces terminal allocation? No idea what this does lol.

ssh -t -N -L 3000:127.0.0.1:12345 raghavb@sunfire.comp.nus.edu.sg "ssh -L 12345:127.0.0.1:12345 xilinx@137.132.86.226"
#python3 laptop.py

#ssh -N -L 3000:127.0.0.1:24242 raghavb@sunfire.comp.nus.edu.sg "ssh -N -L 24242:127.0.0.1:3000 xilinx@137.132.86.226
#ssh -N -L 3000:127.0.0.1:24242 raghavb@sunfire.comp.nus.edu.sg "ssh -N -L 24242:127.0.0.1:3000 xilinx@137.132.86.226
