.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
BT EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
TEST RDI, -1094556451 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND AX, -118 
XADD ECX, EDI 
CMOVL DI, SI 
AND SIL, -98 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], -128 
XCHG RCX, RBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 43 # instrumentation
CMOVNL RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
NOP  
SETO AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
XCHG RDX, RAX 
CMOVLE DI, DI 
OR DIL, CL 
XADD RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 67 
CMC  
MOVSX CX, CL 
CMOVNL RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RBX] 
BT BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
SETNL DL 
CMOVB ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
