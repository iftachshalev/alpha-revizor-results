.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EDI, ESI 
BT SI, 7 
TEST EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
AND RDX, -97 
XCHG BL, AL 
SETNO AL 
JMP .bb_main.1 
.bb_main.1:
MOVZX RDX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
OR AX, -44 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 3 
AND DIL, 16 # instrumentation
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 1 
AND DIL, -82 # instrumentation
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 5 
SETBE AL 
CWDE  
LEA CX, qword ptr [RDI] 
TEST BL, DL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], -121 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RBX] 
SETNS AL 
SETNB CL 
CMOVB RAX, RCX 
XOR BX, 6 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
XOR AL, 8 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RAX 
SETL AL 
MOVZX EDI, DL 
CMOVBE EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
