.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
CMOVNP EAX, ESI 
BTR ECX, EDI 
LEA BX, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
TEST AL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
SETNS DIL 
AND DIL, BL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
CMPXCHG AL, AL 
CMOVO EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
BTR BX, -54 
MOV AL, -13 
AND DIL, DL 
BT EDI, 6 
CMC  
XADD SIL, AL 
BT EBX, EAX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BSWAP RSI 
XOR RCX, RBX 
SETNO CL 
CMOVNO EDX, EBX 
SETLE BL 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
SETP AL 
MOVZX ECX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
