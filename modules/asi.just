# modules/asi.just
# RSR: Artificial Super Intelligence

# 1. Install Ollama (The Inference Engine)
install-brain:
    curl -fsSL https://ollama.com/install.sh | sh
    ollama pull llama3:latest

# 2. Start the Cortex (Background Service)
start-cortex:
    @echo ">>> [ASI] Awakening the Cortex..."
    ollama serve > /dev/null 2>&1 &
