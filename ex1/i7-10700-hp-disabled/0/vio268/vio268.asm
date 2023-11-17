.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RBX] 
OR RAX, 1117265722 
CMOVNL AX, BX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -1870079189 
OR AL, 77 
AND RCX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RCX] 
XOR DL, 73 
BT EDI, ESI 
AND RAX, 1349471191 
XOR EDX, 86 
CDQ  
TEST EBX, -704577222 
SETL BL 
SETNO CL 
BTS EBX, EDX 
AND SIL, -123 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -30 # instrumentation
CMOVNB BX, CX 
AND EDX, ECX 
BTC DX, DX 
AND SIL, 73 # instrumentation
SETS BL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
BTC ESI, EDI 
XADD RBX, RSI 
LAHF  
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
BT EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
OR AX, -20862 
SETBE CL 
CMPXCHG DX, SI 
MOVZX AX, DIL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
