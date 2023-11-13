.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -117 # instrumentation
SETS DL 
XCHG CX, AX 
XOR EAX, -712734202 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
SETL CL 
CMOVZ RCX, RAX 
XOR AL, -7 
CWD  
MOVSX AX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
BSWAP RAX 
CMOVNLE RSI, RDI 
BT RBX, -68 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, DL 
CDQ  
SETZ AL 
SETB AL 
MOVZX ECX, DL 
OR RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
MOVZX EDI, AL 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 4 
BTC DI, AX 
BT AX, 44 
AND ECX, ECX 
CMOVNB RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], ESI 
OR RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
