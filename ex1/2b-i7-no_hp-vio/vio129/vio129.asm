.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -122 # instrumentation
SETO DL 
CMOVNS BX, DI 
XADD DL, CL 
CMOVNS RDI, RSI 
BT RAX, -41 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 106 
MOV CL, CL 
LEA RDI, qword ptr [RBX] 
TEST AX, -29922 
CMOVNP EBX, ESI 
XOR RBX, -92 
AND CL, AL 
MOVZX EDX, DX 
MOVZX EDX, DL 
SETNO SIL 
XADD DIL, CL 
CMOVLE BX, AX 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
XADD EBX, EDX 
MOV EAX, -948183411 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], 68 
AND RCX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 5 
BTR CX, -8 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EAX 
MOV RDX, 7179354474909000132 
BTC EDX, -82 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
MOV BL, 21 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
