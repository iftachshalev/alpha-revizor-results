.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 2 
XOR DIL, -52 
XCHG RCX, RDI 
CMOVNP RAX, RCX 
MOVZX EBX, SIL 
CMOVNP RDI, RDX 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, 10 # instrumentation
CMOVS ECX, EBX 
XCHG BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
OR RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDI 
OR DL, DL 
XOR EAX, -1089591096 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDI], BX 
CMC  
XOR RCX, 13 
CMOVO BX, DX 
MOV ECX, -1586818790 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XADD ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], 118 
SETLE AL 
BTC EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDI 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -15 
CMPXCHG BX, DX 
SETLE DL 
CMOVLE EDX, ECX 
SETNZ BL 
BT RSI, 13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
