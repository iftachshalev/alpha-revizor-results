.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -47 # instrumentation
SETS BL 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND DI, 98 
SETS BL 
BTR EDX, -101 
CWD  
SETZ DL 
CMOVNZ CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], BX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 7 
CDQ  
MOVSX ECX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 76 
NOT SI 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RBX], BX 
BTC RAX, 34 
MOV DX, DI 
OR BX, AX 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
SETNS AL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT EBX 
XCHG RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
XOR EAX, -1008910063 
XOR RBX, RDX 
CMC  
CMOVNBE DI, BX 
CMOVB ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 4 
AND RBX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
