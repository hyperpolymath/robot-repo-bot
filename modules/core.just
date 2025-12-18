# --- ADA COORDINATOR ---

# Install GNAT (Ada Compiler)
setup-ada:
    @echo ">>> [RSR] Installing GNAT/SPARK..."
    # (Distro specific, e.g., 'apt install gnat' or 'alr get gnat')

# Build the TUI
build-coordinator:
    @echo ">>> [Ada] Compiling Coordinator..."
    gprbuild -P src/coordinator/robot.gpr

# Run the TUI
ui: build-coordinator
    ./bin/robot_coordinator
