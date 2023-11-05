.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 22 # instrumentation
STC  
CMOVL RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
BTC AX, BX 
CMOVNZ RAX, RCX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
XCHG BL, AL 
BSWAP RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], 1 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], -121 
XOR AL, DL 
LEA DI, qword ptr [RSI + RAX] 
SETNP BL 
BTS EBX, EAX 
BTC BX, 4 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
CMOVNL AX, DI 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 2 
BSWAP RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RSI] 
MOVZX DI, SIL 
CMOVNO ECX, EBX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 56 # instrumentation
CMOVP ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 3 
CMPXCHG BL, AL 
XCHG DX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
CMOVBE CX, DI 
TEST RAX, 1534815502 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
