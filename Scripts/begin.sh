ssh -t -i ~/.ssh/id_rsa -L 6666:127.0.0.1:24242 raghavb@sunfire.comp.nus.edu.sg "sh start.sh && ssh -t -i ~/.ssh/id_rsa -L 24242:137.132.86.226:12242 xilinx@137.132.86.226 'bash -l'; bash -l"
