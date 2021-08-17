find ~ -name ".git" -type d -exec bash -c "echo '{}' && cd '{}'/.. && git pull" \;


