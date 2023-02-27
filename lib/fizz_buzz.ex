defmodule FizzBuzz do
	def build(string_list) do
	  string_list
	  |> File.read()
	  |> handle_file_read()
	end

	def handle_file_read({:ok, result}) do
		result
		|> String.split(",")
		|> Enum.map(&convert_evaluate_numbers/1)
	#   list = String.split(result, ",")
	#   Enum.map(list, fn number -> String.to_integer(number) end) # Forma chamando uma função anônima
	#   Enum.map(list, &String.to_integer/1) # Forma usando o operador & sem fn anônima
	end

	def handle_file_read({:error, reason}), do: "O erro foi: #{reason}"

	def convert_evaluate_numbers(numbers) do
		number = String.to_integer(numbers)
		evaluate_numbers(number)
	end

	def evaluate_numbers(number)  when rem(number, 3) == 0 and rem(number, 5) == 0, do: "Lucas" #aqui era para ser um numero divisivel por 3 e 5
	def evaluate_numbers(number)  when rem(number, 3) == 0, do: "lu" #"aqui era para ser um numero divisivel por 3"
	def evaluate_numbers(number)  when rem(number, 5) == 0, do: "cas" #"aqui era para ser um numero divisivel por 5"
	def evaluate_numbers(number), do: number
  end
