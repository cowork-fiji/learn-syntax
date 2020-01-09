defmodule Learning.Tax do
  def persional_tax(salary, taxrate) do
    result = persional_tax_cal(salary, taxrate)

    sentence =
      "my salary was #{result}" <>
        "my salary was #{result}"

    %{text: sentence, tax: taxrate, salary: salary, total_tax: result}
  end

  def persional_tax_cal(salary, taxrate) do
    result = salary * taxrate + 100
  end

  def vat_tax(price, taxrate) do
    price / taxrate
  end

  def plastic_bag_tax(cost_of_bag, price, number_of_bags, tax) do
    vat = vat_tax(price, tax)
    bags_cost = cost_of_bag * number_of_bags
    %{cost_of_bag: bags_cost, vat: vat, price: price, taxrate: tax}
  end
end
