.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 1 
AND DIL, -19 # instrumentation
SETNLE DL 
CMOVL RAX, RDI 
CMOVNP EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RAX 
MOVZX RSI, CX 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 5 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 1 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], CL 
AND ESI, -64 
MOVZX EAX, CL 
AND CL, 83 
CMOVS RDI, RBX 
SETB AL 
CMOVLE RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], 99 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
TEST CL, BL 
TEST RAX, 103212864 
SETNL AL 
SETL BL 
AND SIL, 23 
OR RAX, -1803232364 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], AL 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 111 # instrumentation
CMOVZ BX, DX 
MOVZX DI, AL 
XOR RDI, -97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
