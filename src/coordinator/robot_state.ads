-- RSR Robot State Specification (SPARK Verified)
package Robot_State with SPARK_Mode is

   -- 1. Combinatoric Dimensions
   type Audit_Level is (Quick, Deep, Forensic);
   type Repair_Mode is (Dry_Run, Interactive, Ruthless);
   type Target_Scope is (Config, Internal, Security, Complete);

   -- 2. The Transaction Matrix
   type Transaction_State is record
      Audit  : Audit_Level;
      Repair : Repair_Mode;
      Scope  : Target_Scope;
   end record;

   -- 3. Safety Contract (The Interlock)
   -- Post-condition: Returns True only if the permutation is safe to execute.
   function Is_Safe (S : Transaction_State) return Boolean
     with Post =>
       (if S.Audit = Forensic and S.Repair = Ruthless then Is_Safe'Result = False
        elsif S.Scope = Security and S.Repair = Ruthless then Is_Safe'Result = False
        else Is_Safe'Result = True);

   -- 4. Command Generator
   -- Converts the safe state into a CLI string for the Python engine
   function Generate_Command (S : Transaction_State) return String;

end Robot_State;
