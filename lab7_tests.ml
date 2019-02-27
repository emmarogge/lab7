open CS51 ;;
open Lab7_part1;;
(*Part I Unit Tests*)
open Math;;
let test_math_module () = 
	let title = "PART 1" in
	Printf.printf "========\n";
	Printf.printf "%s \n" title;
	Printf.printf "========\n";
	unit_test((pi) = 3.141592) "pi";
	unit_test((cos 90.0) = ~-.0.448073616129170127) "cos float";
	unit_test((sin 90.0) = 0.89399666360055785) "sin float";
	unit_test((sum 10.0 13.0) = 23.0) "sum float";
	unit_test((max [10.0; ~-.1.0; 7.3; ~-.100.9;]) = Some 10.0) "max floats";
	unit_test(result = Some 6.53589793076241867e-07) "result floats";
	unit_test(result_local_open = Some 6.53589793076241867e-07) "result_local_open floats";;

(*Part II Unit Tests*)
open Color;;
let test_color_module () =
	let title = "PART 2" in
	Printf.printf "========\n";
	Printf.printf "%s \n" title;
	Printf.printf "========\n";
	let c = color_named Red in
	unit_test((to_color 255 0 0) = c) "to_color";
	unit_test((red c) = 255) "red";
	unit_test((blue c) = 0) "blue";
	unit_test((green c) = 0) "green";
	unit_test((color_named Green) = to_color 0 255 0) "color_named" ;;

(*Part III Unit Tests*)
open Lab7_part3 ;;
let test_int_list_stack_module () =
	let title = "PART 3" in
	Printf.printf "========\n";
	Printf.printf "%s \n" title;
	Printf.printf "========\n";
	let open IntListStack in
	let s = [] in
	unit_test((empty) = s) "empty";
	unit_test((push 7 s) = [7]) "push first" ;
	let s = [7] in
	unit_test((push 3 s) = [3;7]) "push next" ;
	let s = [7;4;5] in
	unit_test((top s) = 7) "top";
	unit_test((pop s) = [4;5]) "pop";
	unit_test(small_stack () = [1;5]) "small_stack";
	unit_test(last_el = 1) "last_el";
	unit_test(invert_stack (small_stack ()) = [5;1]) "invert_stack";
	unit_test(bad_el = 5) "bad_el";
	let s = (SafeIntListStack.push 1 (SafeIntListStack.push 5 (SafeIntListStack.empty))) in 
	unit_test((safe_stack ()) = s) "safe_stack";;


(*Part IV Unit Tests*)

let test_all () = 
	test_math_module () ;
	test_color_module () ;
	test_int_list_stack_module ();;

let _ = test_all ();;