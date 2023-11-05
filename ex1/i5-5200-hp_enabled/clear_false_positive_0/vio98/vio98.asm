.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], SI 
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
SETP AL 
MOVSX EAX, SI 
CMOVP ESI, ESI 
LEA CX, qword ptr [RBX] 
MOVZX EBX, AL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RAX 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, 89 # instrumentation
SETLE AL 
CDQ  
CMOVNS CX, AX 
CMOVLE RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RCX] 
MOV CL, BL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC RCX, RAX 
AND SIL, 95 # instrumentation
SETS CL 
XCHG AL, CL 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RCX] 
LEA EBX, qword ptr [RCX + RAX] 
CMOVLE EDI, EDX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS EDX, -100 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DL 
TEST DL, DIL 
XOR RDI, -104 
JMP .bb_main.4 
.bb_main.4:
OR AL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 7 
TEST RAX, -1350628201 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
AND RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
