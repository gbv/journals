
$(document).ready(function() {

  // replace placeholder USERNAME with user name
  var userID = $("#currentUser strong").html();
  var newHrefShort = 'http://journals.gbv.de/mir/servlets/solr/select?q=createdby:' + userID + '&fq=objectType:mods';
  $("a[href='http://journals.gbv.de/mir/servlets/solr/select?q=createdby:USERNAME']").attr('href', newHrefShort);
  var newHrefTest = 'http://journals-test.gbv.de/mir/servlets/solr/select?q=createdby:' + userID + '&fq=objectType:mods';
  $("a[href='http://journals-test.gbv.de/mir/servlets/solr/select?q=createdby:USERNAME']").attr('href', newHrefTest);


  // spam protection for mails
  $('span.madress').each(function(i) {
      var text = $(this).text();
      var address = text.replace(" [at] ", "@");
      $(this).after('<a href="mailto:'+address+'">'+ address +'</a>')
      $(this).remove();
  });

});