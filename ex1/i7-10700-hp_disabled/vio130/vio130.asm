.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ECX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
CMOVO RSI, RAX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 57 # instrumentation
XCHG EDI, EAX 
CMOVO SI, DI 
MOVZX EAX, AL 
CMPXCHG EDX, ESI 
AND DL, -80 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], BX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], -102 
BT RAX, 69 
JMP .bb_main.2 
.bb_main.2:
XOR BX, 79 
CDQ  
SETNO AL 
CMPXCHG RBX, RSI 
TEST SI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 59 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -18 # instrumentation
SETNP CL 
SETNB SIL 
OR DI, -95 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 6 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -250617382 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
CMPXCHG DX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVNLE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
