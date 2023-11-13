.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -106 # instrumentation
CMOVNP EDI, EAX 
LEA EBX, qword ptr [RDI + RSI + 23603] 
TEST DL, AL 
NOT BX 
AND DL, 14 
MOVZX EAX, BX 
LEA RSI, qword ptr [RSI] 
CBW  
XCHG CL, BL 
CMOVLE EDI, EBX 
OR BL, DL 
TEST RAX, -300596117 
CMOVNZ RDX, RAX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
XCHG ECX, EAX 
MOVZX CX, DIL 
MOVZX RAX, DX 
SETBE DL 
TEST ECX, -1302649334 
OR EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 6 
XOR DL, -52 
XOR EAX, 415176888 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 2 
SETNZ AL 
CMOVNP ESI, ESI 
OR EDX, ECX 
CMOVLE BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
