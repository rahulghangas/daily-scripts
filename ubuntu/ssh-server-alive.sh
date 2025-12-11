sudo sh -c 'cat >> /etc/ssh/ssh_config' <<EOF
ServerAliveInterval 100
EOF

sudo sh -c 'cat >> /etc/ssh/sshd_config' <<EOF
ClientAliveInterval 60
TCPKeepAlive yes
ClientAliveCountMax 10000
EOF
