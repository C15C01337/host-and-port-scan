echo "[+]Enter the type of scan 1) Host-Scan 2) Ping Scan "
read file
if [ "$file" == "1" ]; then
    echo "[+]Enter IP address: "
    read IP
    echo "[+]Enter Subnet mask address: "
    read subnet
    nmap -sp $IP/$subnet -oG nmap_output
fi

echo "[+]Enter the name of file if available: "
read fileName
input= "$fileName"
while IFS= read -r line
do
    echo "$line"
done < "$input"

if [ "$file" == "2" ]; then    
    nmap -sn $line/$subnet -oG nmap_output2
else
    echo "[+]Enter the ip address: "
    read ipAddress
    nmap -sn $ipAddress/$subnet -oG nmap_output1
fi

