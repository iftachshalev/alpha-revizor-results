.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
XADD BX, AX 
CMOVNBE RAX, RBX 
NOT CL 
CMOVNO EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
CMOVNL DI, DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 56 # instrumentation
CWDE  
CMOVNBE BX, DX 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDX] 
OR EAX, -542832630 
CMOVNP RBX, RDI 
SETS BL 
BTS CX, -9 
OR RAX, 1692736564 
JMP .bb_main.2 
.bb_main.2:
BTR EDI, 62 
TEST EAX, 129465488 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
MOVZX SI, AL 
OR RCX, -50 
NOT DIL 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND DX, 53 
CMOVNB RSI, RDX 
BTR ECX, 49 
MOVZX EBX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
