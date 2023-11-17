.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 84 # instrumentation
SETNO SIL 
MOVZX EAX, BL 
OR RAX, 1738768107 
SETB DIL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -1313986326 
LEA SI, qword ptr [RDX + RDX + 2461] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -84 # instrumentation
CMOVNS DX, CX 
BTR RDI, RDI 
XCHG RBX, RCX 
NOT AL 
NOT BL 
CMOVNZ ECX, EBX 
OR SI, BX 
BTS SI, 109 
JMP .bb_main.2 
.bb_main.2:
XOR SI, AX 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
XCHG ESI, EAX 
CMOVL BX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RBX] 
OR AL, 102 
SETNB DL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST BL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
OR CX, SI 
CMOVNP ECX, EDX 
BTR RBX, 81 
AND DIL, -45 # instrumentation
SETNP CL 
CMOVNS EDX, EDI 
CMOVP SI, DI 
NOP  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
