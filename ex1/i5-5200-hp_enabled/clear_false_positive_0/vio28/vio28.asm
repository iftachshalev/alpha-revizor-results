.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
SETNB BL 
LEA ECX, qword ptr [RCX] 
AND EDX, EBX 
XOR AL, 10 
TEST CX, -28445 
CMOVO AX, AX 
SETNL BL 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
SETNB BL 
SETNL BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], -77 
AND RBX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RBX] 
OR CL, 123 
AND RSI, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RSI] 
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -21 # instrumentation
SETP DIL 
CMOVS RDX, RSI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
AND DIL, 97 # instrumentation
NOT RCX 
CMOVL DX, SI 
SAHF  
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RAX] 
AND RSI, -102 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
TEST BL, 103 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
