.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
XADD BL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RSI] 
SETL DIL 
AND AL, 72 
AND RBX, 82 
SETNBE CL 
MOVZX RCX, SI 
CBW  
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
BT ECX, -74 
MOV DI, DX 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 6 
NOT DL 
OR EDI, ECX 
CMOVB RAX, RBX 
NOT ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS DI, BX 
AND SIL, -65 # instrumentation
CMOVNP RDX, RSI 
BTC RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], 61 
MOV AL, BL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 2075236704 
SETNZ BL 
CMOVNBE RSI, RCX 
BT EDX, ESI 
CDQ  
OR RCX, 16 
MOV AX, SI 
CMOVNS RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
