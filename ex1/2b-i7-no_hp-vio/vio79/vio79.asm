.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 48 # instrumentation
CMOVP DX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMOVZ ECX, ECX 
AND SIL, -49 
SETNBE DL 
CMOVNL DX, DX 
CMC  
BTS EDI, ECX 
AND DIL, -100 # instrumentation
MOV CX, DI 
CMOVNL AX, DI 
CMOVBE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RSI] 
CMOVB RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 563750238 
AND RCX, -60 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
AND SI, 42 
CWDE  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EBX, DX 
MOVSX RDI, BX 
TEST ESI, 2127482975 
SETNB DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
CMOVZ RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RBX 
XOR RBX, RSI 
TEST CL, 82 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ECX 
TEST SIL, CL 
CMOVBE SI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
