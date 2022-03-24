defmodule CrockfordBase32.Encoding do
  defmodule Fixed8 do
    use CrockfordBase32,
      bits_size: 8
  end

  defmodule Fixed128 do
    use CrockfordBase32,
      bits_size: 128
  end

  defmodule Fixed25 do
    use CrockfordBase32,
      bits_size: 25
  end
end
