.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RBX] 
OR AL, 113 
AND CL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
BTR RSI, -34 
AND SIL, -42 
BTS RSI, RDX 
AND DIL, -114 # instrumentation
XCHG ESI, EAX 
CMOVNS RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -107 
MOV AL, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
SETBE DL 
XOR AL, SIL 
AND DL, 76 
AND RDI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDI], 3 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], -125 
XADD BL, DL 
MOV DI, DX 
MOVSX RDI, BL 
OR SIL, -48 
CMOVS BX, DX 
XOR AX, -3579 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EBX 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTC word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RBX] 
XOR EDX, EDX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
LEA DX, qword ptr [RSI + RSI + 4842] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
