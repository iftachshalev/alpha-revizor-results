.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 83 # instrumentation
MOVSX EBX, AL 
SETNL BL 
CMOVNB CX, CX 
CMOVLE RCX, RBX 
CMPXCHG DIL, BL 
XCHG AL, AL 
CMOVNZ RDX, RDX 
AND DIL, DIL 
BT BX, -95 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], -112 
AND EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], 16 
SETS CL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DIL 
SETBE BL 
XCHG DX, AX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 18 # instrumentation
CMOVL RDI, RDX 
SETNBE SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], BX 
CMOVNO EBX, EDI 
SETS BL 
MOVZX BX, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
BT EBX, ECX 
MOV AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
TEST DL, AL 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 0 
MOV RBX, RCX 
BTS ESI, EDI 
AND DIL, 121 # instrumentation
SETNL DL 
MOVSX BX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
