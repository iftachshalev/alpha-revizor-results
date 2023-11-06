.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST CL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
BT ECX, EAX 
MOVSX DI, AL 
XADD CX, AX 
BSWAP EBX 
AND SI, -27 
STD  
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 9 # instrumentation
SETL CL 
SETNB SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
BTR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1111973524 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
BTR RSI, -96 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
MOVZX ESI, DX 
CMOVNB RDX, RAX 
CMOVL EDX, ESI 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RDI] 
NOT CL 
XADD RCX, RSI 
CMOVNS SI, DX 
OR RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
