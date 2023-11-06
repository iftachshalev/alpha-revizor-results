.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX AX, AL 
XOR EDX, 0 
CDQ  
MOVZX RAX, SI 
AND SIL, 39 
CMOVBE DX, SI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
AND SIL, -97 # instrumentation
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR AX, -25279 
XOR EAX, 1608169442 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 3 
XCHG BL, DL 
XOR AL, -41 
XOR RAX, -1164246652 
SETBE DL 
JMP .bb_main.2 
.bb_main.2:
MOV RDX, -830833627623246347 
MOVSX RCX, DX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -1698534361 
SETNP DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RSI] 
AND DL, AL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RAX] 
CMOVNL DX, CX 
CMOVBE RDI, RAX 
CMOVNB AX, BX 
MOVZX ESI, CL 
TEST EBX, 357000178 
JMP .bb_main.4 
.bb_main.4:
CMPXCHG RBX, RCX 
BTR SI, 91 
MOVZX CX, AL 
CBW  
CMOVBE RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
