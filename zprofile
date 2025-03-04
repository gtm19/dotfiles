# Initialise ssh-agent
if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # # Create ssh-agent directory if it does not already exist
        test_var="hello there"
        SSH_AGENT_DIR=$HOME/.ssh
        SSH_AGENT_FILE=$SSH_AGENT_DIR/ssh-agent
        [[ -d $HOME/.ssh  ]] || mkdir -p $HOME/.ssh && touch $HOME/.ssh/ssh-agent
        # # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval `cat $HOME/.ssh/ssh-agent`
fi

# Add github key to ssh-agent if it exists
if [  -f ~/.ssh/id_ed25519 ]; then
    ssh-add ~/.ssh/id_ed25519
fi
