.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -58
NOT SI 
CMPXCHG CX, SI 
CMPXCHG DL, AL 
JNLE .bb_main.1
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111
OR EDX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
