.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -33 # instrumentation
SETO BL 
CMC  
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], -5 
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
OR RAX, -1067616971 
TEST SI, AX 
CMOVBE DX, SI 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 125 
TEST EAX, 191432793 
MOV EDI, 1558244376 
SETNLE AL 
OR AL, DL 
SETNLE CL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT AX, DI 
AND RDI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDI], 1 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
AND RSI, RAX 
MOVSX ECX, DI 
AND CX, 41 
AND SIL, -66 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
BTS RCX, -60 
CMPXCHG EDI, EDX 
AND RDI, -75 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 91446778 
TEST DX, 23390 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
CMOVS RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
