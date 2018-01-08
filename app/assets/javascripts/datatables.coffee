emptyTable = "<div class='dataTables_empty custom-box-painel custom-message-empty text-center'>NÃ£o foi encontrada nenhuma IFU com o cÃ³digo â€œ<strong data-caption='filter'></strong>â€</div>"

datatablesI18n = {
  sEmptyTable: "Nenhum registro encontrado",
  sInfo: "Mostrando de _START_ até _END_ de _TOTAL_ registros",
  sInfoEmpty: "Mostrando 0 até 0 de 0 registros",
  sInfoFiltered: "(Filtrados de _MAX_ registros)",
  sInfoPostFix: "",
  sInfoThousands: ".",
  sLengthMenu: "_MENU_ resultados por página",
  sLoadingRecords: "Carregando...",
  sProcessing: "Processando...",
  sZeroRecords: emptyTable,
  sSearch: "",
  oPaginate: {
    sNext: "Próximo",
    sPrevious: "Anterior",
    sFirst: "Primeiro",
    sLast: "Último"
  },
  oAria: {
    sSortAscending: "Ordenar colunas de forma ascendente",
    sSortDescending: "Ordenar colunas de forma descendente"
  }
};

checkDtLength = () ->
  if $(".dt td").length > 1
    return "simple_numbers"
  else
    return false

ready = () ->
  table = $(".dt").dataTable({
    sPaginationType: checkDtLength() || "simple_numbers"
    bJQueryUI: true
    paging: true
    bProcessing: true
    bServerSide: true
    lengthChange: $(".dt").data("lengthChange") || false
    sAjaxSource: $(".dt").data("source")
    aaSorting: [[$(".dt").data("sorting") || 0, 'asc']]
    bFilter: $(".dt").data("filter") || false
    aoColumnDefs: [{
      bSortable: false
      aTargets: ["datatable-nosort"]
    }]
    language: datatablesI18n
    fnServerParams: ( aoData )->
      if dtData?
        for key in Object.keys(dtData)
          aoData.push({ name: key, value: dtData[key] })
  });

  $('.dt').on 'draw.dt', (e, settings)->
    # datatables' row click
    $('table tbody tr').on 'click', ->
      window.location.href = $('a', this).attr('href')

  $('#search').keyup () ->
    $(".dt").DataTable().search(this.value).draw();

  $('.dt').on 'draw.dt', (e, settings)->
    $(".dataTables_filter").addClass('hidden');
    $('[data-caption]').html($("#search").val());
    if $(".dt td").length == 1
      $(".table").addClass('hidden');
      $(".dataTables_paginate").addClass("hidden");
      $("#emptyTable").removeClass('hidden');
    else
      $(".table").removeClass('hidden');
      $(".dataTables_paginate").removeClass("hidden");
      $("#emptyTable").addClass('hidden');

initFunctions = () ->
  ready();
  $("div.dataTables_filter input").addClass($(".dt").data("filterClass"));

$(document).on("turbolinks:load page:update", initFunctions)

$(document).on "turbolinks:before-cache", ->
  $('.dt').DataTable().destroy()
