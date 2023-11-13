.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -82 # instrumentation
SETO DIL 
CMOVNZ ECX, EDX 
MOVSX RSI, CL 
MOV RSI, RAX 
XCHG EAX, EAX 
CWDE  
XOR CL, CL 
BTS RDI, 24 
NOT CL 
TEST ECX, EAX 
CMOVBE SI, AX 
OR EBX, EBX 
AND EAX, 34827299 
AND RAX, -731331371 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, 915466221 
CMPXCHG RCX, RDI 
XCHG SI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
SETZ AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
CMOVNB RDI, RSI 
BTC ESI, EDI 
XOR AL, BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
CMPXCHG CL, BL 
SETNB CL 
MOV EDI, -1240749472 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
CMOVB EAX, EDI 
MOVZX ESI, SI 
XADD DI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
