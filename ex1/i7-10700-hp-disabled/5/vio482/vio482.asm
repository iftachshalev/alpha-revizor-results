.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
NOT RSI 
MOV RBX, -842545254921222100 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
JMP .bb_main.1 
.bb_main.1:
CMPXCHG EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RBX 
AND DIL, -70 # instrumentation
SETL CL 
OR AL, -49 
NOT DL 
MOV RDX, RBX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR AX, -2209 
SETNLE AL 
XOR ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], -124 
SETLE CL 
OR AX, 115 
AND RDX, 117 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
MOV EDI, 100368621 
SETBE DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG EBX, EAX 
BTS RCX, -11 
AND SIL, -96 # instrumentation
CMOVNBE CX, AX 
SETNLE AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -9 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
CMOVP RSI, RDI 
JMP .bb_main.4 
.bb_main.4:
NOT RDX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
AND SIL, 62 # instrumentation
CMOVNO DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
