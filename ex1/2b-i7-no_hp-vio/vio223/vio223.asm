.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 120 # instrumentation
MOVSX AX, AL 
SETNO AL 
CMOVZ DX, CX 
BT EBX, EAX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
AND SIL, 3 # instrumentation
CMOVBE ECX, EAX 
SETP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 58 
CMOVNLE BX, AX 
SETNZ BL 
CMOVP RAX, RCX 
OR BL, AL 
CLC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -72 # instrumentation
SETNB BL 
CMOVBE EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 0 
AND DL, 29 
CMC  
BTC EDX, -36 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 80 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 22 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
MOV RBX, RAX 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], -39 
CMOVNP BX, AX 
CMOVLE DI, SI 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], DL 
TEST EBX, 307766923 
BTS RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
