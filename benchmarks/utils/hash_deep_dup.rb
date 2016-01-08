require 'lotus/utils/hash'

COUNT = 10_000

hash = Lotus::Utils::Hash.new(
  'nil'        => nil,
  'false'      => false,
  'true'       => true,
  'symbol'     => :foo,
  'fixnum'     => 23,
  'bignum'     => 13289301283 ** 2,
  'float'      => 1.0,
  'complex'    => Complex(0.3),
  'bigdecimal' => BigDecimal.new('12.0001'),
  'rational'   => Rational(0.3),
  'string'     => 'foo bar',
  'hash'       => { a: 1, b: 'two', c: :three },
  'u_hash'     => Lotus::Utils::Hash.new({ a: 1, b: 'two', c: :three })
)

COUNT.times do
  hash.deep_dup
end
