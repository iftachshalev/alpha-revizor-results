.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], SI 
CMOVB ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
XOR EAX, 1357571028 
MOVSX EDX, SI 
MOV RBX, RSI 
CMOVNL RCX, RCX 
CMOVNZ EDX, EDI 
SETZ DL 
XOR AL, BL 
SETNL BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 14 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BT EDX, -75 
AND DIL, -3 # instrumentation
MOVSX EBX, AX 
SETP BL 
SETNB DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -73 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 5 
AND DIL, 9 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -57 # instrumentation
MOVZX DX, DIL 
SETBE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
CMOVBE AX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
BSWAP RDX 
SETNO DL 
NOT DL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST EDI, EBX 
CMOVNB CX, AX 
OR SIL, -114 
CMOVNL DI, CX 
CMOVNS CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
