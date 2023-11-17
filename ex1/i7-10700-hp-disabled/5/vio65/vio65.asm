.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -31 # instrumentation
CMOVBE EBX, ESI 
SETNBE BL 
CMOVNB EDX, EDX 
XCHG RAX, RAX 
MOV CX, 7389 
TEST RDI, -585033568 
CMOVNP ESI, EAX 
SAHF  
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
SETNZ BL 
XCHG BL, AL 
CBW  
XOR AL, 26 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -86 # instrumentation
BTS ESI, EDI 
CMOVZ CX, AX 
MOV DX, AX 
SETZ SIL 
AND RDI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDI] 
MOVSX EDI, CL 
MOV AL, SIL 
SETZ BL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
OR SI, -48 
CMOVNBE DI, DX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR SIL, -93 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND CX, -125 
NOT AX 
CMOVNO BX, BX 
XOR DL, 70 
CMOVNO EDI, EBX 
OR AL, -3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
