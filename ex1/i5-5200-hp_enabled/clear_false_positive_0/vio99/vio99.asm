.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 48 # instrumentation
CMC  
CMOVNO DX, BX 
MOVSX EDX, BL 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -69 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], 1 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RBX, RDI 
OR AL, 60 
MOVZX RAX, CX 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 1 
BT EAX, 40 
AND SIL, 116 # instrumentation
MOV DIL, DL 
CMOVS DI, AX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -74 # instrumentation
SETNL BL 
CMPXCHG DX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
AND DIL, -103 # instrumentation
CMOVNB BX, AX 
CMOVO RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], AL 
BTR RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -59 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
OR BL, CL 
XCHG CX, AX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], RAX 
AND DIL, 37 # instrumentation
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR SIL, 108 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
XADD RAX, RBX 
TEST RDX, RDX 
TEST ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
