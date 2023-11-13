.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDI, 98 
AND DIL, 24 # instrumentation
CMOVNS ESI, ECX 
CMOVNBE RSI, RAX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
AND SIL, -119 # instrumentation
CMOVB ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RDI 
BTR RSI, RCX 
AND SIL, -117 # instrumentation
CMOVB RAX, RSI 
CMOVNS DI, DX 
OR DX, -109 
BT RSI, -6 
AND DIL, -90 # instrumentation
CWD  
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWD  
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RCX 
MOVSX EAX, SI 
CWDE  
SETP SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
SETB CL 
CLC  
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
MOVZX EBX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
XOR ESI, EDI 
MOVSX EDX, DL 
CMOVS RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
SETNO AL 
CMOVNZ ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -25 
BT DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
