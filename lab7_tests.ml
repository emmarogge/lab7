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
	unit_test((empty) = s) "empty";;

(*Part IV Unit Tests*)

let test_all () = test_math_module () ;
	test_color_module ();;

let _ = test_all ();;