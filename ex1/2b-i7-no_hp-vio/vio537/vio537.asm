.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -49 # instrumentation
CMOVB EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
OR EAX, 487056913 
SETNL DL 
CMOVNP BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RCX 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND SIL, 37 # instrumentation
XCHG RAX, RAX 
XCHG CL, CL 
CMOVNLE RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
CMC  
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 60 # instrumentation
CMOVL RBX, RCX 
XOR DL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RBX] 
BTR DI, DI 
BTR DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
OR RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
CMOVP RSI, RAX 
MOVZX SI, BL 
CMOVBE EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
OR RDI, 96 
AND DL, -43 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
