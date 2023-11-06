.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
SETNO AL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 33 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDI] 
AND DIL, 15 # instrumentation
SETB BL 
CMOVZ EBX, EDI 
AND EAX, 90602526 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CWDE  
XOR RAX, -289918928 
NOT ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
SETBE DL 
OR RAX, -1886281067 
BT EDI, -23 
BSWAP RDI 
SETBE CL 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -29 # instrumentation
CMOVBE RDX, RBX 
MOVZX RAX, SI 
BTS BX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
CMOVNP CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
SETS DL 
CMOVS DI, DX 
AND BL, 14 
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
OR AX, 10999 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
