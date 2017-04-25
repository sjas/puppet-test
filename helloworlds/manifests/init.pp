# test stuff for playing with puppet data types

class helloworlds {

  $eins = 'teststring'
  notice ($eins)

  $zwei = { qwer => 'asdfqwer' }
  notice ($zwei)
  $drei = { 1 => { '1k' => '1v', '2k' => '2v'}}
  notice ($drei)
  $vier = deep_merge ($zwei, $drei)
  notice ($vier)

}
