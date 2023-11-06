.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -94 # instrumentation
SETNLE DL 
XOR AX, CX 
LEA ECX, qword ptr [RCX + RAX + 25109] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND AL, 106 
TEST AX, DX 
BTC EDI, EAX 
CMOVZ EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RCX] 
TEST AL, BL 
SETO AL 
XOR CL, AL 
MOVSX EDI, DI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 10 # instrumentation
CMOVL CX, DI 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], AX 
OR DIL, CL 
NOT ESI 
OR DI, -91 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
CMOVNL CX, AX 
CMOVL EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], AL 
XOR EAX, 1584144489 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
AND DIL, -98 # instrumentation
CMC  
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DL, 9 
BTS SI, CX 
AND DIL, 46 # instrumentation
CDQ  
CMOVNL RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
BTS EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
