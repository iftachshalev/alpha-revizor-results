.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -97 # instrumentation
CMOVNLE DX, DI 
CMOVNBE ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDI], 4 
TEST ESI, 119252903 
SETNLE CL 
BT RDX, -57 
AND SIL, 85 # instrumentation
CMOVL BX, AX 
JMP .bb_main.1 
.bb_main.1:
XOR AX, -21117 
NOT BL 
CBW  
SAHF  
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 76 # instrumentation
SETZ DIL 
CMOVS ESI, EBX 
SETP DL 
MOVSX EDX, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ESI 
XCHG ESI, ESI 
BTS AX, BX 
XOR SI, BX 
CMOVBE EAX, EDX 
NOT EDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], DX 
CMOVP AX, DI 
TEST ECX, EAX 
SETNP BL 
MOV CL, 54 
MOVSX DI, AL 
BTC BX, AX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR AL, 34 
CDQ  
CMOVL RSI, RAX 
CMOVNP RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
