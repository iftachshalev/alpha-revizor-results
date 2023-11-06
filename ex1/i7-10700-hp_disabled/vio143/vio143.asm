.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG EBX, EBX 
MOV BL, AL 
SETNBE DIL 
XOR ECX, -25 
AND DL, 24 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], CX 
OR RSI, -37 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
MOVZX RDI, DX 
AND SIL, 81 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -71 # instrumentation
MOV DX, -31074 
MOVZX EBX, BL 
CMOVNLE AX, SI 
CMOVP ESI, ESI 
NOT SI 
NOT AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 16 # instrumentation
SETP SIL 
TEST RDX, RDX 
MOVSX AX, AL 
SETNO AL 
OR CL, -103 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
OR RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
