.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -69 # instrumentation
SETZ BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
BTS EAX, -117 
AND DIL, 6 # instrumentation
CMOVNO RDI, RSI 
CMOVNLE DI, DI 
CMOVL RSI, RDX 
BTC AX, 115 
OR CX, BX 
SETNBE CL 
CBW  
AND ECX, -16 
MOV CL, AL 
XOR RDI, -83 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 97 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 68 # instrumentation
CMOVBE RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 69 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
OR AX, 21284 
CMOVL RSI, RCX 
XADD AL, AL 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RAX], DI 
TEST EAX, -1219087972 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND SIL, 37 # instrumentation
CMOVNLE RDI, RDX 
XOR ESI, EAX 
CMOVNLE EDX, EDX 
CMOVNB DI, DI 
BTC BX, -73 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
