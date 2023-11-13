.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -14 # instrumentation
SETB SIL 
CMPXCHG AL, AL 
TEST EBX, -1698325996 
CMOVNO RAX, RDI 
SETNLE DL 
MOVSX RCX, AL 
AND DL, 36 
MOV AL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], ECX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 80 # instrumentation
SETP DL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
XCHG SI, AX 
XCHG RDI, RAX 
XOR EAX, 1572944248 
AND RCX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RCX] 
OR DIL, 32 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
CMOVNL RDI, RCX 
OR RSI, RCX 
CMOVO RCX, RAX 
XOR AX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
MOV RAX, -1044297601688450220 
NOT ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
OR CL, 93 
CMOVNZ RAX, RAX 
CMOVZ CX, DX 
MOVSX BX, BL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], CX 
CMOVNZ DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
