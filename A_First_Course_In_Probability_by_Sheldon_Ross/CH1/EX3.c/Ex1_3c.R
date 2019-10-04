no_of_math_books = 4
no_of_chem_books = 3
no_of_history_books = 2
no_of_lang_book = 1

no_of_types_of_books = 4
no_of_orderings = factorial(no_of_types_of_books)

ans = no_of_orderings*factorial(no_of_math_books)*factorial(no_of_chem_books)*factorial(no_of_history_books)*factorial(no_of_lang_book)

print(ans)