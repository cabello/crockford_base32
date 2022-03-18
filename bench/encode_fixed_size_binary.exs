Benchee.run(
  %{
    "common encode small string" => fn -> CrockfordBase32.encode("b") end,
    "fix size to encode small string" => fn -> A.encode("b") end
  }
)

data = <<System.system_time(:millisecond)::unsigned-size(48), :crypto.strong_rand_bytes(10)::binary>>

Benchee.run(
  %{
    "common encode 128 bits string" => fn -> CrockfordBase32.encode(data) end,
    "fix size to encode 128 bits string" => fn -> BitsData128.encode(data) end
  }
)