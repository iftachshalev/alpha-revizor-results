.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RAX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -5 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RDX, -102 
CMPXCHG SIL, DL 
XOR BL, BL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
TEST RAX, -1497114634 
TEST AL, -51 
SETO BL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
MOV CL, DL 
OR AL, 82 
SETP DL 
CWDE  
AND RAX, 610820905 
CMOVZ EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], ESI 
MOV ESI, -1072164383 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 19 # instrumentation
SETNL DL 
BT EBX, -8 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
MOVZX EDX, DIL 
BTC BX, SI 
AND DIL, 64 # instrumentation
CMOVNLE ESI, EBX 
MOV BX, -26043 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RAX 
SETBE AL 
BTS ESI, EAX 
AND SIL, -60 # instrumentation
CMOVS SI, SI 
CMOVNLE EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
