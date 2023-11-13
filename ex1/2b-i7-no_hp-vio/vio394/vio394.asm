.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 21 # instrumentation
SETNZ CL 
MOVSX RCX, DI 
SETB BL 
MOVZX ECX, BL 
CMOVLE SI, AX 
CMOVNS EAX, EDX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND DIL, -73 # instrumentation
CMOVNLE EDI, EAX 
TEST ESI, 944274882 
LEA RBX, qword ptr [RBX + RSI + 56996] 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], EBX 
AND SIL, 21 # instrumentation
MOV RDX, RSI 
SETNP AL 
SETNP CL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 87 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ECX, EDX 
CMOVB RDI, RAX 
SETZ CL 
OR CL, DL 
CMOVB RAX, RSI 
MOVSX CX, CL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RBX] 
SETNP BL 
OR CL, AL 
CWD  
SETBE CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], DI 
LEA RDI, qword ptr [RCX + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
MOVSX EAX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
