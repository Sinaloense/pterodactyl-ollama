#!/bin/bash
# Ollama host
export OLLAMA_HOST=http://[::]:$SERVER_PORT

#
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":$HOME$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP} &
STARTUP_PID=$!

# Wait until the server is ready
until curl -s http://127.0.0.1:11434 > /dev/null; do
    sleep 1
done

# Output Current Ollama Version
ollama -v

# Pull the Model
ollama pull $OLLAMA_MODEL

# Wait for any process to exit
wait -n $STARTUP_PID
