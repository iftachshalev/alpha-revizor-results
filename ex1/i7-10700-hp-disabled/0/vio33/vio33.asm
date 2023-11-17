.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, DL 
MOVZX CX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RDI 
CMOVNS AX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 66 
AND RBX, RSI 
OR BX, SI 
OR CL, -84 
CWDE  
SETL BL 
BTC CX, -78 
TEST EAX, -1057838766 
TEST AL, -87 
MOVZX CX, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
AND DIL, DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG CL, DIL # instrumentation
AND DIL, 110 # instrumentation
LAHF  
XOR EDX, 48 
SETB AL 
BTC EAX, -98 
AND RBX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RBX 
OR AX, 17186 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
MOV DL, DL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DL 
NOT SIL 
XOR RAX, 441203345 
CMPXCHG DX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
