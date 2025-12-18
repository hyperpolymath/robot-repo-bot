# modules/nesy.just
# RSR: Neuro-Symbolic Autoencoder (The Self-Healing Subconscious)

# 1. TRAIN (The Encoder)
# Feeds source code into SurrealDB vectors, tagged with Symbolic Validation status
learn-manifold:
    @echo ">>> [NeSy] Mapping the Safe Manifold..."
    # 1. Run the Symbolic Auditor (Ada) to flag files as SAFE or UNSAFE
    just ui --audit forensic --mode dry-run > audit_log.json
    # 2. Feed only SAFE code into the Vector Database (The "Good" Latent Space)
    python3 maintenance/robot/nesy_encoder.py --ingest --filter=audit_log.json

# 2. DREAM (The Autoencoder Loop)
# Takes existing code, projects it into the Safe Manifold, and rewrites it
dream:
    @echo ">>> [NeSy] Dreaming (Optimizing Codebase)..."
    # 1. Read File -> Vector
    # 2. Find nearest "Perfect" Vector in SurrealDB
    # 3. Decode Vector -> New Code
    python3 maintenance/robot/nesy_decoder.py --target=src/ --rewrite

# 3. CHECK (The Anomaly Detector)
# If new code cannot be encoded easily, it is likely "Off-Manifold" (Buggy/Insecure)
detect-anomalies:
    @echo ">>> [NeSy] Checking Reconstruction Error..."
    python3 maintenance/robot/nesy_check.py
