.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, -89 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
XOR RAX, 1154379917 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RDX 
CMPXCHG DIL, DL # instrumentation
AND DIL, -8 # instrumentation
MOVZX EAX, DL 
LAHF  
SETS SIL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], SIL 
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
OR EAX, 3047994 
SETNB BL 
CMOVNO RAX, RSI 
CMOVS DX, AX 
OR DX, BX 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 46 # instrumentation
CMOVNB RCX, RBX 
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
BTS EBX, 48 
AND DIL, -15 # instrumentation
SETB DL 
SETNLE AL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], SIL 
XCHG ESI, EAX 
MOV EBX, EDI 
CBW  
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -110 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RBX 
AND RSI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RSI] 
CWDE  
SETNBE CL 
OR AX, CX 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RCX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
