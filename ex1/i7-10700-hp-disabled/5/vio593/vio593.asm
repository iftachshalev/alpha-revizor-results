.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, BX 
CBW  
AND RCX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RCX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND DIL, -78 # instrumentation
NOP  
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], ESI 
BTR EDX, 68 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 0 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
OR RDX, 6 
BTR RDX, -107 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 2969 
AND DL, AL 
TEST AL, -110 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 46 # instrumentation
SETNBE DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], AX 
AND AX, 26766 
SETBE CL 
BT AX, BX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RAX] 
SETNP CL 
CMOVLE EDI, EAX 
AND RDI, -48 
TEST RAX, 1614406725 
XCHG EAX, EAX 
CMOVS RDX, RAX 
TEST EBX, ECX 
BTR RCX, RBX 
AND DIL, -2 # instrumentation
CMOVP SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
