.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -6 # instrumentation
XCHG EDX, EAX 
SETNP DL 
BTR RDX, 45 
AND SIL, 50 # instrumentation
STD  
LEA EBX, qword ptr [RDX + RDI + 10837] 
SETNL DL 
MOVSX RDI, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -22 
MOVZX EBX, DIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND AL, 109 
XOR ECX, ESI 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
OR DIL, 0 
SETBE CL 
CMOVNL BX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -57 
SETZ SIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDI], DX 
SETNBE AL 
MOVSX ESI, AL 
SETB BL 
MOV EDX, EDI 
AND AX, -13347 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EAX 
XOR EAX, 1990646377 
OR AL, 89 
AND RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
