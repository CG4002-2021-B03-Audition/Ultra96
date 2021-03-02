# Jumps straight to an SSH connection on the xilinx
#ssh -J raghavb@sunfire.comp.nus.edu.sg xilinx@137.132.86.226
ssh -t -J raghavb@sunfire.comp.nus.edu.sg xilinx@137.132.86.226 "python recv_test.py"