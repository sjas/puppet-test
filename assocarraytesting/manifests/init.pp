# trying to update a associative array via a loop or something

class assocarraytesting {

  $eins = { qwer => 'asdfqwer' }
  notice ($eins)
  $zwei = { 1 => { '1k' => '1v', '2k' => '2v'}}
  notice ($zwei)
  $drei = deep_merge ($zwei, { })
  notice ($drei)

  $vars = [ 'one', 'two', 'three' ]
  $othervars = [ 1,2,3,4 ]
  $externaltempvar = { }

  # its not possible to update a hashtable via loop from within puppet
  # and with ruby things get damn ugly

#  <%= @vars.each do |currentvar| %>
#  merge(@drei, { currentvar"/${}"})
#  delete(@zwei, )
#  <%= end %>

}
