.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD EDX, EDX 
NOT RAX 
XOR RAX, -510409294 
CMOVL RDX, RDI 
XCHG EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
BTS RAX, -55 
AND BX, BX 
CMOVO RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -127 
CMOVL RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], DX 
SETNLE CL 
BTR SI, -25 
XCHG EDI, EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -89 # instrumentation
CMOVNB BX, DX 
CMOVNBE RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -86 
AND ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -5 
CDQ  
BT EDX, -110 
BTC SI, CX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
LEA RSI, qword ptr [RAX] 
AND AX, -95 
OR RCX, RDI 
XADD EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
