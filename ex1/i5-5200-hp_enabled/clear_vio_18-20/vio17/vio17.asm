.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -74 
CMC  
OR EAX, -12103705 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 2 
CLD  
MOVSX RCX, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 89 # instrumentation
SETBE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDX] 
SETNO DIL 
JMP .bb_main.2 
.bb_main.2:
AND EAX, -1254309304 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], EDX 
TEST EAX, -1263733549 
OR RDI, 40 
AND RDX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDX] 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
CMPXCHG ESI, ECX 
MOVZX EAX, DL 
SETZ AL 
XOR EAX, -210632514 
CMOVNZ RAX, RDX 
AND EAX, EBX 
OR AL, BL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -117 # instrumentation
CMOVS RCX, RSI 
XCHG AX, AX 
TEST EAX, EBX 
CMOVNO EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
