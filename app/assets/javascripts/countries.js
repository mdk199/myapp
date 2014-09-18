
var options = {
    'processing': true,
    'serverSide': false,
    'serverMethod': 'GET'
  };

$(document).ready(function(){
  options.ajax = $('#countries_list').data('url');
  $('#countries_list').dataTable(options);
});
