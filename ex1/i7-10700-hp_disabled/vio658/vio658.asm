.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
BTR CX, SI 
AND DIL, -85 # instrumentation
CMOVNL AX, DX 
TEST EAX, EDI 
SETNL CL 
SETNBE DL 
XCHG AX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 769081773 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -124 
CMOVNS DI, DX 
SETP BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], DL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RAX] 
BT EDI, EDX 
AND DIL, -111 # instrumentation
CMOVS RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
NOT AL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
BTR ECX, ESI 
CMOVNBE ESI, EDX 
JMP .bb_main.2 
.bb_main.2:
BT RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 7 
AND DIL, -120 # instrumentation
SETS BL 
OR AX, 29130 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], -123 
XOR DIL, 31 
XCHG AX, AX 
OR DL, BL 
MOVZX EAX, SIL 
CMOVO EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
