.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 103 # instrumentation
CMOVP CX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
BTS EBX, 113 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND SIL, -112 # instrumentation
SETNB BL 
SETNBE BL 
NOT CL 
SETNO DL 
SETO DL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -43 # instrumentation
LEA RBX, qword ptr [RDX + RDI + 44928] 
MOV EDX, EDX 
CMOVLE DI, DI 
CMOVNB EDI, EAX 
TEST SIL, -41 
XOR AL, 35 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
XOR EAX, 1866531424 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND DIL, 84 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 108 # instrumentation
SETNB CL 
XOR SIL, DL 
BTS EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
CMC  
XCHG RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTS word ptr [R14 + RBX], SI 
XOR ESI, 63 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 21 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], 113 
OR CL, DL 
AND RSI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
