.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR BX, DX 
BSWAP EDI 
NOP  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -121 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RAX 
LEA BX, qword ptr [RSI + RAX + 38679] 
TEST ECX, -1340030351 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DL, -121 
SETZ CL 
MOV BL, CL 
CMOVNO BX, BX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ESI 
MOVZX DI, CL 
TEST AL, -34 
OR RDX, -12 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -12 # instrumentation
SETNP CL 
MOVSX RCX, DIL 
CMOVS RSI, RSI 
CMOVL RSI, RCX 
SETO BL 
CMOVNL RDI, RSI 
NOT RBX 
XCHG ESI, EAX 
BTC EBX, 98 
AND DIL, -50 # instrumentation
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
AND RCX, 34 
XOR EAX, -1070577696 
SETO AL 
XOR AL, CL 
TEST EAX, 1478420724 
NOT DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
