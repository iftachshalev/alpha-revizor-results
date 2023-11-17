.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DI, BL 
TEST DX, 2472 
XOR RAX, -496912674 
MOV BL, -95 
BSWAP EDI 
XOR AL, -8 
CMOVL ESI, EAX 
BTC RSI, RCX 
MOVZX RDI, SIL 
OR EDX, 41 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG BX, AX 
OR SI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
MOV RCX, RDX 
BTS RAX, -49 
MOV DL, -53 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
OR AL, -3 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
SETNBE CL 
XOR RDX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 21 # instrumentation
CMOVLE AX, SI 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], ESI 
MOV DL, AL 
CMOVLE RBX, RAX 
CBW  
CMOVO BX, AX 
CMOVNL CX, DX 
TEST AX, -4807 
AND RAX, -150981969 
AND DI, AX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
