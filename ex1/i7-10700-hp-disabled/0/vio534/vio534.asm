.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 19 # instrumentation
CMOVL RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RBX] 
BTS ESI, 33 
AND SIL, -25 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 2119110954 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 0 
MOV CX, -15678 
NOT ESI 
BT BX, -121 
BT BX, CX 
CMOVNB RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
SETP DL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], SIL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
BTS RSI, RDX 
CDQ  
NOT DI 
STD  
AND AX, 18073 
CMOVL AX, AX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DI, 10 
OR BL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -55 
XOR EAX, -946241869 
CMOVNLE EBX, EDX 
MOVZX RCX, DIL 
XOR EDX, EAX 
OR CL, -37 
CMOVNS RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
