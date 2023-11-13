.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RCX] 
CMOVLE RSI, RAX 
SETNZ CL 
TEST AX, CX 
XOR RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 65 
OR RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 58 
BT RSI, RSI 
AND SIL, 74 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
BTC DX, -24 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
SETNS BL 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 7 
BTS EAX, -72 
OR BL, DL 
TEST AL, CL 
CMPXCHG DIL, DL 
BTS EAX, 85 
XCHG EDI, EAX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
BTC DX, -55 
AND ESI, 112 
CMOVZ RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDI] 
SETO AL 
XOR SIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
