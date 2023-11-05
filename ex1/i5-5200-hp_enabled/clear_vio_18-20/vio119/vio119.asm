.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DX, -126 
OR EAX, 1469624793 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RDI 
SETNZ DL 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
AND DIL, -88 # instrumentation
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
TEST DI, -15152 
AND EAX, ECX 
AND AX, -22641 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
SETLE BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RCX] 
BTR RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], ECX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 92 # instrumentation
SETNO CL 
AND RCX, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RCX] 
CMOVO EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 0 
OR EBX, EAX 
TEST BL, BL 
CMPXCHG SIL, BL # instrumentation
CMOVP CX, SI 
LAHF  
CMOVNO RDX, RBX 
OR AL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
CMOVP ECX, ECX 
MOVZX RBX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], SI 
CMOVL RBX, RBX 
XOR AX, -62 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
