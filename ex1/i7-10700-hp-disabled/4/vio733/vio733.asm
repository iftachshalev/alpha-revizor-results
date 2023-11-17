.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD BX, AX 
OR AL, BL 
CMOVNS SI, DI 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
BTS EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
XOR DIL, BL 
XCHG EDI, EAX 
JMP .bb_main.1 
.bb_main.1:
BT RSI, RCX 
CLD  
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
CMOVL EDX, ECX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST EDX, -1162581669 
OR AL, 84 
OR SIL, -117 
SAHF  
BT RAX, 89 
MOVSX EAX, BL 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 0 
OR RDX, RBX 
CMPXCHG EBX, EBX 
CMOVNL ESI, EDI 
MOV CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], -97 
XADD EBX, ECX 
SETBE AL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
BTS AX, 67 
TEST EBX, EAX 
CMOVB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
