.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RCX 
XOR AX, -5294 
CMOVL RDX, RSI 
BTC BX, 27 
AND DIL, 86 # instrumentation
MOV RAX, RSI 
BSWAP EDX 
CMOVNP DX, DI 
CMOVB RBX, RAX 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XOR DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 4 
AND DIL, -81 # instrumentation
SETNZ AL 
CMOVNP ECX, EDX 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR SIL, CL 
SETL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], -54 
SETZ BL 
MOV ESI, EBX 
CMOVNB EDX, EDI 
AND RDX, RAX 
BTS RDX, -83 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XADD RDI, RCX 
CLC  
SETNS CL 
NOT DL 
SETNZ SIL 
BTC RBX, RDX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -1 # instrumentation
CMOVL ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
XADD EBX, EAX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
