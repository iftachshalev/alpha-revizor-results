.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -58 # instrumentation
NOT SI 
LEA RBX, qword ptr [RDI + RSI + 25828] 
SETNS BL 
CMPXCHG CX, SI 
BTR BX, 21 
CMPXCHG DL, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, 64 
AND RCX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RCX] 
.bb_main.2:
.bb_main.3:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
