.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -41 
CMOVNP ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
CMOVNZ EAX, EDI 
BSWAP RDX 
BTC RDI, RDI 
AND EAX, -1448618811 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -101 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
LEA EBX, qword ptr [RSI] 
OR CL, AL 
BSWAP ECX 
OR ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
CMOVNL RDI, RSI 
MOV CL, SIL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], DL 
LEA DX, qword ptr [RSI + RAX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
MOVSX DI, AL 
AND RAX, -2069119161 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
BTR RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], ESI 
BT DX, 101 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
OR BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
