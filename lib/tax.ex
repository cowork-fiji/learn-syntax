defmodule Learning.Tax do
  def personal_tax(salary, taxr) do
    result = personal_tax_cal(salary, taxr)

    sentence =
      "my salary was #{salary}" <>
        " my tax was #{result}"

    %{text: sentence, tax: taxr, salary: salary, total_tax: result}
  end

  def personal_tax_cal(salary, taxr) do
    result = salary * taxr + 100
  end

  def vat_tax(price, taxr) do
    price / taxr
  end

  def plastic_bag_tax(cost_of_bags, price, number_of_bags, tax) do
    vat = vat_tax(price, tax)
    bags_cost = cost_of_bags * number_of_bags
    %{cost_of_bags: bags_cost, vat: vat, price: price, taxr: tax}
  end
end
