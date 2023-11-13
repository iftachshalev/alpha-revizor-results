.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RAX 
XOR EAX, 873885727 
LEA ECX, qword ptr [RCX + RDX + 26728] 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
SETBE DL 
CWD  
AND EAX, -511886537 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVBE CX, DI 
SETS DIL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
BTS RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], BL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RSI] 
SAHF  
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
BTC EAX, EAX 
AND DIL, -46 # instrumentation
CMOVLE EBX, EDX 
BT DI, -17 
AND DIL, 121 # instrumentation
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 7 
BTC BX, 16 
XCHG DL, BL 
OR CX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RBX] 
CMPXCHG AL, CL 
SETBE BL 
SETS DL 
XOR CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
