
function hc_restart_sshservice(){
    exec_cmd="systemctl restart ssh"
    echo $exec_cmd
    ${exec_cmd}
}

function hc_install_base(){
    sudo su 
    apt-get update
    apt-get install lsof
    apt-get install tree
    apt-get install vim
    apt-get install ufw
    apt-get install net-tools
}

function hc_open_port(){
    exec_cmd="ufw deny $1"
    echo $exec_cmd
    ${exec_cmd}
    hc_restart_service
}


function hc_close_port(){
    exec_cmd="ufw allow $1"
    echo $exec_cmd
    ${exec_cmd}
    hc_restart_service
}


function hc_list_port(){
    exec_cmd="ufw status|grep $1"
	echo $exec_cmd
	${exec_cmd}

    exec_cmd="netstat -tulnp | grep $1"
	echo $exec_cmd
	${exec_cmd}
}


function hc_cat_sshconfig(){
    exec_cmd="cat /etc/ssh/sshd_config"
	echo $exec_cmd
	${exec_cmd}
}