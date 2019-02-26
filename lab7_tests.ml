open CS51 ;;
open Lab7_part1;;
(*Part I Unit Tests*)
open Math;;
let test_math_module () = 
	let title = "PART 1" in
	Printf.printf "%s \n" title;
	unit_test((pi) = 3.141592) "pi";
	unit_test((cos 90.0) = ~-.0.448073616129170127) "cos float";
	unit_test((sin 90.0) = 0.89399666360055785) "sin float";
	unit_test((sum 10.0 13.0) = 23.0) "sum float";
	unit_test((max [10.0; ~-.1.0; 7.3; ~-.100.9;]) = Some 10.0) "max floats";
	unit_test(result = Some 6.53589793076241867e-07) "result floats";
	unit_test(result_local_open = Some 6.53589793076241867e-07) "result_local_open floats";;

(*Part II Unit Tests*)

(*Part III Unit Tests*)

(*Part IV Unit Tests*)

let test_all () = test_math_module () ;;

let _ = test_all ();;