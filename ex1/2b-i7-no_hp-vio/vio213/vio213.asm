.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 864910968 
SETO DIL 
OR DX, DX 
MOVZX ESI, SIL 
MOV ECX, 1597581943 
CMOVL AX, BX 
BTR ECX, 27 
TEST AL, SIL 
SETNB AL 
CMOVNL ECX, EDX 
CMPXCHG ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -21 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
CMPXCHG EDX, ECX 
XADD AL, DL 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], EAX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST ESI, -954551874 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
SETLE AL 
XOR AX, 4750 
CLC  
CMOVS EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
OR DL, AL 
CMOVB RSI, RAX 
CMPXCHG DL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], BX 
SETNB BL 
SETNZ DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
