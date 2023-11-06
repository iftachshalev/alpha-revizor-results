.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 8 # instrumentation
CWD  
MOV CL, -114 
CMOVLE RCX, RSI 
CMOVP RAX, RAX 
SETB SIL 
CMOVP BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EAX 
CMOVBE RAX, RSI 
BT EDI, -20 
AND ECX, -71 
OR AL, 41 
CMOVNLE EDI, ESI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
MOV CX, BX 
CMOVNB RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 28 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 39 # instrumentation
SETLE CL 
CMOVNB RSI, RDX 
CMOVNBE EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 6 
XCHG RSI, RAX 
OR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], EBX 
AND SIL, 101 # instrumentation
CMOVNP AX, SI 
OR AL, -103 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -96 # instrumentation
SETNBE BL 
XOR CX, -4 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDI] 
SETB BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
