function hc_autogpt_install(){
    apt-get update
    apt-get install python3-pip


    git clone https://github.com/Significant-Gravitas/Auto-GPT.git
    cd Auto-GPT
    pip install -r requirements.txt


    git clone https://github.com/reworkd/AgentGPT.git
    cd AgentGPT
    npm install

}