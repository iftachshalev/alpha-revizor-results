.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
XOR CX, -26 
CMOVB RSI, RAX 
AND AL, 56 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EDI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], BL 
LEA RAX, qword ptr [RDX + RAX] 
BTC EDX, -82 
AND CL, -116 
SETNP CL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDX] 
NOT EAX 
AND AX, 1745 
BTC RDI, RSI 
AND SIL, -86 # instrumentation
CMOVNLE DX, BX 
SETLE CL 
OR BL, -107 
CMOVNS ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV EAX, -1830678297 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
XOR RDX, RCX 
CMOVNB EDI, EBX 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
CMOVL DX, DX 
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -21330966 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 6 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
