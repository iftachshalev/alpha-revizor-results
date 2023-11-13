.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 12 # instrumentation
CMOVNS CX, CX 
BTC RDX, -12 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ECX 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 7 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RCX] 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
XADD RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 4 
TEST DL, -66 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
CMOVO EDI, EDI 
CMOVO DX, SI 
CMOVS RCX, RSI 
CMPXCHG EAX, EAX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DL, CL # instrumentation
AND DIL, -85 # instrumentation
LAHF  
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
CMOVBE EDI, EAX 
CMOVS RSI, RDX 
CMOVL DI, SI 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
CMOVNL RDX, RDI 
BTR RBX, RDI 
TEST AL, 35 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
CMOVBE EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
CMOVZ DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
