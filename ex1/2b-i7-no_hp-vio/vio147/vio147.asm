.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
TEST RAX, 1345171715 
BTR RBX, RDX 
BTC EDX, 109 
BTS DI, -20 
MOV BL, -86 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 81 
SETNLE DL 
STD  
MOVSX SI, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 5 
AND DIL, -116 # instrumentation
CMOVS DI, DI 
SETNB AL 
SETNBE CL 
AND DIL, 52 
SETB CL 
BTS ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 5 
AND ECX, ESI 
CMPXCHG EBX, EDI 
CMOVLE BX, CX 
OR BX, 27 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
CMPXCHG AL, SIL 
MOV SI, 17912 
CMC  
SETNO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
