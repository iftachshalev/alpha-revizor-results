.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 0b1000000000000000 # instrumentation
BSF BX, DX 
AND DIL, -55 # instrumentation
CMOVNBE RDI, RBX 
BTR RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RBX] 
AND BL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
TEST ECX, 403157941 
CMPXCHG CL, DIL 
AND BL, CL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -66 # instrumentation
CMOVP DI, CX 
SETNP BL 
BT CX, -44 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], AX 
SETNS CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
NOT DX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
BT AX, 113 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RAX] 
AND DIL, -103 # instrumentation
CMOVNL RSI, RAX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 2 
AND SIL, -109 # instrumentation
NOT AL 
SETLE AL 
BTS RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RAX] 
SETNO AL 
CMPXCHG RBX, RCX 
SETB AL 
LEA DX, qword ptr [RCX + RSI + 25681] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
