.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS ESI, -75 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDX] 
CMOVLE ESI, EDX 
CMOVNB BX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EDI 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RBX], DI 
NOT DX 
AND AX, 3506 
CMOVNO EAX, EDX 
MOVSX RDX, DIL 
XCHG CL, AL 
OR CL, 110 
AND AL, SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 43 # instrumentation
SETBE DIL 
SETNL SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDX] 
SETNL DL 
BTS EDI, EAX 
MOV CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], -95 
CMOVNBE EDI, EAX 
BT EDI, 55 
AND SIL, 99 # instrumentation
CMOVNL DI, DI 
OR EAX, 1245071276 
XCHG RCX, RDI 
BTR RDI, RDX 
CMOVNB EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
