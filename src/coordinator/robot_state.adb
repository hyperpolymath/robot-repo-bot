package body Robot_State with SPARK_Mode is

   function Is_Safe (S : Transaction_State) return Boolean is
   begin
      -- Safety Rule 1: Never modify files destructively during a forensic audit.
      if S.Audit = Forensic and S.Repair = Ruthless then
         return False;
      end if;

      -- Safety Rule 2: Never ruthlessly auto-repair security configs (requires human eye).
      if S.Scope = Security and S.Repair = Ruthless then
         return False;
      end if;

      return True;
   end Is_Safe;

   function Generate_Command (S : Transaction_State) return String is
      -- Maps Enums to lower-case string flags
      Audit_Str  : constant String := (case S.Audit is 
         when Quick => "quick", when Deep => "deep", when Forensic => "forensic");
      Repair_Str : constant String := (case S.Repair is 
         when Dry_Run => "dry-run", when Interactive => "interactive", when Ruthless => "ruthless");
      Scope_Str  : constant String := (case S.Scope is 
         when Config => "config", when Internal => "internal", when Security => "security", when Complete => "complete");
   begin
      -- Construct the permutative command
      return "python3 maintenance/robot/main.py assert" & 
             " --audit " & Audit_Str & 
             " --mode " & Repair_Str & 
             " --scope " & Scope_Str;
   end Generate_Command;

end Robot_State;
