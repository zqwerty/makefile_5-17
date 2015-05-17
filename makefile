main.exe:main.o expr.o expr_node.o int_node.o unary_node.o binary_node.o ternary_node.o
	g++ -o $@ $^

main.o:main.cpp expr.h

expr.o:expr.cpp expr.h expr_node.h int_node.h unary_node.h binary_node.h \
  ternary_node.h

expr_node.o:expr_node.cpp expr_node.h expr.h

int_node.o:int_node.cpp int_node.h expr_node.h expr.h

unary_node.o:unary_node.cpp unary_node.h expr_node.h expr.h

binary_node.o:binary_node.cpp binary_node.h expr_node.h expr.h

ternary_node.o:ternary_node.cpp ternary_node.h expr_node.h expr.h

clean:
	-rm main.exe main.o expr.o expr_node.o int_node.o unary_node.o binary_node.o ternary_node.o


