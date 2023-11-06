.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DX 
SETP DL 
OR AL, 117 
CMOVNS RDI, RAX 
SETS CL 
SETNLE BL 
JMP .bb_main.1 
.bb_main.1:
BSWAP RBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND SIL, 19 # instrumentation
CMOVZ DX, DX 
SETNL AL 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XOR EAX, -1398586397 
BT RCX, -115 
AND SIL, 28 # instrumentation
SETNO DL 
CMOVZ BX, AX 
LEA EAX, qword ptr [RAX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
XCHG DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
OR CL, -39 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR RSI, 120 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 5 
BTC DX, -60 
BT RSI, 60 
AND SIL, -14 # instrumentation
CMOVL RAX, RAX 
SETB BL 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
BT SI, SI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
