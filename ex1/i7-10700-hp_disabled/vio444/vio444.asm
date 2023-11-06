.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
CMOVO RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
CMOVZ EBX, EDI 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BTC DI, SI 
AND DIL, -36 # instrumentation
LEA EDX, qword ptr [RDX + RDX] 
CMOVLE CX, CX 
AND ESI, EAX 
BTR RDI, RBX 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND SIL, -15 # instrumentation
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 91 # instrumentation
CMOVNZ EBX, EBX 
XOR DX, -116 
SETL AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
BTR RDX, -56 
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
CMOVNS EDX, ESI 
CMOVNZ AX, DI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
CMOVZ EAX, EDX 
TEST ECX, 388980327 
MOVSX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], 5 
AND DIL, -67 # instrumentation
CMOVLE RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 85 # instrumentation
SETNO AL 
XCHG DI, AX 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
