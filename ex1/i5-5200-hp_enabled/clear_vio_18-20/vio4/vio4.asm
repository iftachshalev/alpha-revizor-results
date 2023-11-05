.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RBX] 
CMOVS RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DIL 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 2 
AND DIL, 45 # instrumentation
SETNO BL 
CMOVP BX, BX 
MOVSX RSI, DIL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
CMOVNBE EAX, EBX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT SI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], 126 
CMOVNZ AX, BX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -5 # instrumentation
MOV EDI, EBX 
SETL BL 
OR AL, -51 
TEST AL, -16 
XCHG EAX, EAX 
SETZ AL 
JMP .bb_main.3 
.bb_main.3:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
AND CL, DL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND DIL, 113 # instrumentation
XCHG DL, CL 
CMOVL RDI, RDI 
SETS CL 
CMOVNO EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
