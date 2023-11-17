.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DIL, -114 
CMOVBE RCX, RDI 
BT SI, -10 
AND SIL, -57 # instrumentation
CMOVS RAX, RAX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], EDI 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RAX] 
SETNLE AL 
BTS EDX, -125 
JMP .bb_main.2 
.bb_main.2:
XOR RAX, -66 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], BX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 5 # instrumentation
CMOVBE ECX, EDX 
OR EDX, 21 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], 7 
TEST BL, DL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
XOR EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], CX 
SETNS BL 
AND ECX, 61 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RSI], RDI 
SETNZ DIL 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -84 # instrumentation
CMOVLE RDI, RDX 
CMOVNZ RDI, RDX 
CWD  
BTR EDI, EDI 
XCHG ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
