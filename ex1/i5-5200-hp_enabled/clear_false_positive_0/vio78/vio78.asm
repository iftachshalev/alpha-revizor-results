.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 3 
AND DIL, 74 
CMOVBE RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
CMOVNS ECX, EDX 
MOVZX CX, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 5 
CLC  
AND RBX, -10 
BT EBX, 7 
AND SIL, -5 # instrumentation
SETBE DL 
CMOVNLE RBX, RDI 
CMPXCHG ESI, ESI 
BTR ECX, EDI 
AND RAX, 846800996 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
XOR DL, AL 
CMOVNP CX, DX 
CMOVLE RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 41 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
CMOVNS ECX, ESI 
CMOVLE EBX, EDI 
CMOVNL DI, DX 
SETNO BL 
SETS AL 
OR EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
