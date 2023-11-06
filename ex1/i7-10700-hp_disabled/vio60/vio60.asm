.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
MOVZX ECX, AL 
XOR RAX, -920299241 
CMOVS RBX, RDI 
OR RDI, 88 
CMOVBE ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
BT RSI, RAX 
OR EAX, 638224827 
TEST AX, 11709 
CMOVNP CX, BX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AX, -24198 
MOV DL, BL 
CMOVO BX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
SETNO AL 
CMOVS BX, DI 
XCHG EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RCX] 
TEST DL, AL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DIL 
AND AL, -53 
XOR SI, -93 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
XOR SI, 99 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
SETZ AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
