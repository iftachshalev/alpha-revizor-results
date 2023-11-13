.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 36 
LEA DX, qword ptr [RAX] 
BSWAP RBX 
TEST AL, -126 
SETNP DL 
CMOVNLE CX, SI 
SETP DIL 
CMOVZ AX, DI 
XOR SIL, 64 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
AND EDX, 25 
NOT AL 
MOVZX EDX, AL 
MOVZX ECX, CL 
SETNO DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -49 # instrumentation
CMOVLE AX, SI 
TEST SIL, -66 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
CMOVS DI, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
XOR DX, -96 
TEST CL, AL 
SAHF  
CMOVL ECX, EAX 
OR EAX, 101 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -9391 
SETNO DL 
BT DX, 88 
SETBE BL 
SETNBE DL 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
