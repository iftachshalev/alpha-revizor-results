.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -59 # instrumentation
BSWAP ESI 
CMOVNZ DI, SI 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1852489101 
XCHG RDI, RAX 
CMOVO RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ESI 
SETP DL 
OR CL, CL 
MOVZX DX, DL 
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
CMC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
XOR AX, -11295 
MOV EDI, 1955266611 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
TEST RSI, 402389347 
MOVZX SI, AL 
AND RCX, 95 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 7 
AND DIL, 31 # instrumentation
XCHG BX, AX 
LEA EAX, qword ptr [RCX + RDX] 
SETNLE CL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
OR DL, CL 
XOR AL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], AX 
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
SAHF  
BTR DI, -44 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
