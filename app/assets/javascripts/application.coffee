#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .

$(document).on 'turbolinks:load', ->
  $("a[href^='http://']").attr("target","_blank");
  $("a[href^='https://']").attr("target","_blank");
