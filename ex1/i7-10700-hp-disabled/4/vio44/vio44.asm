.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
CMOVLE ESI, EDI 
SETL DL 
MOVSX AX, CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 101 
CMOVL EDX, EDX 
MOVSX DI, CL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EDX 
CMOVNP EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
XOR RAX, 1499473597 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 15 
CMOVNS ESI, EBX 
MOV BL, CL 
SETNL AL 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -5 # instrumentation
SETNS DIL 
CMOVNO EAX, EDI 
BTR EDI, -117 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], EDI 
TEST SI, BX 
CMOVNP RAX, RSI 
JMP .bb_main.3 
.bb_main.3:
XCHG DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
SETLE BL 
CMOVNS EBX, ECX 
SETP BL 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RBX 
CMOVO RDX, RBX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST DIL, 110 
BTS SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
