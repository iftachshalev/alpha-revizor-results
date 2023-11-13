.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
MOV DL, AL 
MOVSX EDX, CL 
OR AL, 66 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
SETZ AL 
XADD ESI, EBX 
BTS AX, AX 
CMOVB DI, BX 
LEA BX, qword ptr [RDX + RCX] 
CLD  
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], -57 
XCHG RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EAX 
CMOVNP RCX, RCX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD RCX, RDX 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 4 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
XOR DX, 15 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RCX 
BTC EDI, ESI 
AND SIL, -51 
CMOVS BX, CX 
CMOVNLE DI, AX 
OR DIL, AL 
SETNLE CL 
XOR AX, 19754 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], DI 
SETZ DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
