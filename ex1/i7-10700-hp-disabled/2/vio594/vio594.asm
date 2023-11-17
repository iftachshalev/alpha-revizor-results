.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RBX, RCX 
BSWAP RBX 
SETL SIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
MOVZX DI, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
TEST ESI, -1318038232 
BTR ESI, EAX 
CWDE  
AND RAX, -2002628040 
TEST RSI, RAX 
CMOVNO EBX, ESI 
XCHG EDX, EDI 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
BT BX, -65 
MOV RDX, RDX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
LEA BX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
OR ECX, ESI 
CMOVNL ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -102 
NOT CX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], AL 
NOP  
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RAX 
SAHF  
MOVZX EDI, SI 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
