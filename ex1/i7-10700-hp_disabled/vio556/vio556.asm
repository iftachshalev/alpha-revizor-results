.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DI, DI 
CMOVZ AX, AX 
TEST AX, 6186 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
XCHG AL, BL 
OR EAX, EDX 
LEA RDX, qword ptr [RDX + RBX + 37260] 
BTS DX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND CX, CX 
XCHG RBX, RBX 
LEA RDX, qword ptr [RDX + RCX] 
SETO CL 
SETNO DL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -780579270 
NOT AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AL, -96 
MOV DI, 25084 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
CMOVNL DI, AX 
OR RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], DX 
AND SIL, -21 # instrumentation
CMOVNL RAX, RAX 
MOVSX BX, BL 
XOR RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
CMOVNBE RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
TEST RDX, 617722510 
TEST RDX, 567496500 
MOVZX EAX, AL 
CMOVNLE RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
