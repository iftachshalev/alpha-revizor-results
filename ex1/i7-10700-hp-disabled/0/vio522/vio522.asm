.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, CL 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 110 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], CX 
MOVZX ESI, AL 
MOVSX RAX, DIL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR RCX, 127 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
NOP  
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 7 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 4 
NOT AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
AND SIL, -97 # instrumentation
CMOVP BX, CX 
CBW  
XOR SIL, -50 
NOP  
BTS EAX, -4 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
CMOVZ RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RBX] 
AND DIL, 64 # instrumentation
MOV ECX, EDX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], EDX 
AND ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RAX 
JMP .bb_main.4 
.bb_main.4:
BTC EAX, 87 
AND DIL, -16 # instrumentation
CMOVL AX, DI 
NOP  
NOT DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
