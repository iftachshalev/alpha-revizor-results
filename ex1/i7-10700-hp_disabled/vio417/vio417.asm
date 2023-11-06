.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
LEA ESI, qword ptr [RBX + RCX + 62940] 
OR ESI, 109 
CMOVLE RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
CMOVLE RCX, RCX 
OR AX, 17464 
SETP CL 
XCHG RAX, RAX 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -55 # instrumentation
SETP CL 
AND EAX, -927420376 
CMOVZ BX, SI 
BTC EDI, EDX 
AND RSI, -35 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -91 # instrumentation
SETB SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -362 
BT EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
SETBE CL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -51 # instrumentation
SETZ BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
CMOVNLE EDI, EBX 
CMOVNP RAX, RCX 
MOV DI, CX 
CMOVNO EDI, ECX 
OR BX, BX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG ECX, EAX 
LEA RAX, qword ptr [RAX + RCX + 11412] 
BTC EBX, 46 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EBX 
BTC EDI, -5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
