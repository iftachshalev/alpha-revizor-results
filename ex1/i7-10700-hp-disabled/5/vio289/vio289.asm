.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 81 # instrumentation
CMOVNL EDX, EAX 
BTR BX, -79 
AND DIL, -47 # instrumentation
CMOVNS DI, AX 
CMOVNB ESI, ECX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -36 # instrumentation
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RBX] 
XOR CL, 36 
OR CL, DL 
OR BL, BL 
SETNZ AL 
BT AX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
AND DIL, 75 # instrumentation
SETBE AL 
NOT SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RBX 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
CMOVNL ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
CMOVP RDX, RAX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR CL, -20 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -37 
SETNB DL 
CMPXCHG AL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
XOR CX, -5 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDX], BX 
CMOVZ DX, DI 
NOT DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
