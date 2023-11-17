.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 66 
CMOVS RDI, RBX 
BT RBX, RBX 
BSWAP RAX 
MOVSX EDX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], AX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], EBX 
TEST DL, 21 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 0 
MOVZX RCX, BL 
XOR RDX, -103 
CMOVP RDX, RBX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 126 # instrumentation
SETZ AL 
BTS EBX, -26 
OR AX, -8823 
CMOVNZ ESI, EBX 
XOR EDX, ESI 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 49 # instrumentation
CMOVS SI, DI 
CMOVNP BX, SI 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DIL 
CMOVNS EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -3 # instrumentation
CMOVNO EDI, EDX 
MOVZX EDI, CL 
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 4 
OR ECX, 57 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 1 
TEST EDI, 1328595485 
SETNBE AL 
SETB AL 
BTC RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
