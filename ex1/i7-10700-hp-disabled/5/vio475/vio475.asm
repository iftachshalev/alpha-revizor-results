.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RAX, 4 
AND DIL, -9 # instrumentation
SETO AL 
XOR AL, 126 
OR EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
OR DL, AL 
XOR EDI, -52 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
XOR AL, -109 
MOV DL, -122 
TEST CX, 25756 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
TEST EDI, 1725451509 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
CMOVB ECX, EBX 
TEST DIL, -113 
BTS RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], 71 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 26377 
XOR DX, DI 
XCHG CL, CL 
SETNBE BL 
AND AL, DIL 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
SETNO DL 
AND EAX, 980090765 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
NOT BL 
NOT DI 
XCHG RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
