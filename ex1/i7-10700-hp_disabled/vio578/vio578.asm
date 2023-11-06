.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDX], 5 
BTC SI, BX 
AND DIL, 99 # instrumentation
BSWAP RCX 
CMOVL EDI, EDX 
BTS BX, 42 
JMP .bb_main.1 
.bb_main.1:
BSWAP RDX 
TEST BL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], 57 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, -83 # instrumentation
NOP  
CMOVL RCX, RSI 
XOR AX, 12160 
CWDE  
CLC  
CMOVNP SI, SI 
MOVZX ESI, BL 
SETZ DL 
SETNP CL 
CMOVNB EDI, EBX 
TEST RAX, 149105484 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 29 # instrumentation
SETNBE SIL 
OR RAX, 125 
BTS BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTR RAX, RBX 
CMPXCHG AL, DL 
LEA EDI, qword ptr [RAX + RSI + 40656] 
BTR DI, DI 
XOR EAX, 238522605 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
