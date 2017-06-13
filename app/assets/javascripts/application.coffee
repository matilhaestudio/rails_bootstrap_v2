#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require bootstrap-sprockets
#= require bootstrap
#= require noty
#= require switchery
#= require nprogress
#= require nprogress-turbolinks
#= require cocoon
#= require datatables.net
#= require datatables.net-bs
#= require jquery.maskedinput
#= require cloudinary
#= require underscore


Noty = {
  new: (message, type = 'notification') ->
    noty({
      open: {height: 'toggle'},
      close: {height: 'toggle'},
      easing: 'swing',
      speed: 500,
      text: message,
      type: type
    });
}

$ = jQuery;
$.noty.defaults.timeout = 5000;

datatablesI18n = {
  "sEmptyTable": "Nenhum registro encontrado",
  "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
  "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
  "sInfoFiltered": "(Filtrados de _MAX_ registros)",
  "sInfoPostFix": "",
  "sInfoThousands": ".",
  "sLengthMenu": "_MENU_ resultados por página",
  "sLoadingRecords": "Carregando...",
  "sProcessing": "Processando...",
  "sZeroRecords": "Nenhum registro encontrado",
  "sSearch": "Pesquisar",
  "oPaginate": {
    "sNext": "Próximo",
    "sPrevious": "Anterior",
    "sFirst": "Primeiro",
    "sLast": "Último"
  },
  "oAria": {
    "sSortAscending": ": Ordenar colunas de forma ascendente",
    "sSortDescending": ": Ordenar colunas de forma descendente"
  }
};

ready = () ->
  $(".dt").dataTable({
    "sPaginationType": "full_numbers"
    "bJQueryUI": true
    "bProcessing": true
    "bServerSide": true
    "lengthChange": true
    "sAjaxSource": $(".dt").data("source")
    "aaSorting": [[0, 'desc']]
    "aoColumnDefs": [{
      "bSortable": false
      "aTargets": ["datatable-nosort"]
    }]
    "language": datatablesI18n
  })

  $('.dt').on 'draw.dt', (e, settings)->
    # datatables' row click
    $('table tbody tr td').on 'click', ->
      window.location.href = $('a', this).attr('href')

  $('#allocation-caregivers-datatable').dataTable({
    "sPaginationType": "full_numbers"
    "bJQueryUI": true
    "bProcessing": true
    "bServerSide": true
    "sAjaxSource": $("#allocation-caregivers-datatable").data("source")
    "aoColumnDefs": [{
      "bSortable": false
    }]
    "language": datatablesI18n
    "deferLoading": 1
    "fnServerData": ( sSource, aoData, fnCallback, oSettings )->
      allocationId = $('input[name="allocation[id]"]').val()
      aoData.push { name: 'id', value: allocationId } if allocationId.length > 0

      aoData = _.union(aoData, $('form').serializeArray())

      oSettings.jqXHR = $.ajax({
        "dataType": 'json',
        "url": sSource,
        "data": aoData,
        "contentType": "application/json",
        "success": ( data, textStatus, jqXHR )->
          $('.has-error').removeClass('has-error')
          $('span.help-block').remove()

          unless data.errors
            fnCallback(data, textStatus, jqXHR)
          else
            for column, msg of data.errors
              unless column == 'new_child'
                if column == 'weekdays'
                  container = $('.content.week')
                else
                  container = $("input[name*='[#{column}]']").parent()
                container.addClass('has-error')
                container.append "<span class='help-block'>#{msg}</span>"

            fnCallback({ length: 0, aaData: [], iTotalRecords: 0, iTotalDisplayRecords: 0, suitable: 0 }, textStatus, jqXHR)
      })
  })

  $('.modal[start-open="true"]').modal('show')

initSwitchery = () ->
  elem = document.querySelector('.js-switch');
  if elem
    init = new Switchery(elem, {
      color: "#12CA9E"
    });

sendForm = () ->
  $('#submitBtn').click () ->
    $('.simple_form').submit();

# maskInputs = () ->
#   options = {placeholder: ' ', autoclear: false}
#   $('.cpf').mask('999.999.999-99', options);
#   $('.cnpj').mask('99.999.999/9999-99', options)
#   $('.phone').mask('(99) 9999-9999?9', options);
#   $('.zipcode').mask('99999-999', options);
#   $('.hour').mask('99:99', options);
#   $('.date').mask('99/99/9999', options);
#   $('.weight').maskMoney({
#     suffix: ' kg'
#     allowZero: false
#     thousands: ''
#     decimal: '.'
#     precision: 1
#     suffixStay: true
#   });
#   $('.height').maskMoney({
#     suffix: ' m'
#     allowZero: false
#     thousands: ''
#     decimal: ','
#     precision: 2
#     suffixStay: true
#   })
#   $('.website').blur () ->
#     current_input = $(this);
#     value = $(this).val();
#     unless value.includes('http')
#       value = 'http://' + value
#       current_input.val(value);

disableInputs = (name) ->
  $('#' + name).click (e) ->
    e.stopPropagation();

    setTimeout () ->
      $('.' + name + ' label').removeClass('selected');
    , 100

    $('.' + name + ' input').attr('disabled', this.checked);
    $('.' + name + ' input').attr('checked', false);

disableInputsOnInit = (name) ->
  field = $('#' + name);
  if field.is(':checked')
    $('.' + name + ' input').attr('disabled', true);
    $('.' + name + ' input').attr('checked', false);

disableInputHandling = () ->
  disableInputsOnInit('special_conditions')
  disableInputsOnInit('special_tasks')
  disableInputsOnInit('routine_tasks')
  disableInputsOnInit('housework')

  disableInputs('special_conditions');
  disableInputs('special_tasks');
  disableInputs('routine_tasks');
  disableInputs('housework');

handleCocoon = () ->
  $('#curriculum_experiences').on 'cocoon:before-remove', (e, item) ->
    $(this).data('remove-timeout', 1000);
    item.fadeOut('slow');
  $('.links').slice(0, -1).remove();

handleUpload = () ->
  $('#upload').on 'change', () ->
    files = $(this)[0].files;
    accepted_formats = [
      'application/docx', 'application/doc', 'application/pdf', 'application/zip',
      'application/rar', 'image/jpg', 'image/png', 'plain/text'
    ];
    max_size = 1e+7; # equivalent to 10mb

    _.each files, (file) ->
      unless _.contains(accepted_formats, file.type)
        resetUploadInput();
        Noty.new('Arquivo inválido. Apenas arquivos com extensão .zip, .rar, .pdf, .png, . jpg, .doc, .docx e .txt são aceitos.', 'alert');
      else if file.size > max_size
        resetUploadInput();
        Noty.new('O arquivo não pode ser maior que 10mb.', 'alert');

resetUploadInput = () ->
  $("#upload").val('');
  $("label[for='upload'] span")[0].innerText = 'Incluir novo Anexo'


toggleModal = () ->
  $('.show-modal').click () ->
    $('.modal').modal('toggle');

initFunctions = () ->
  ready() unless $('input[aria-controls=DataTables_Table_0]').length != 0;
  initSwitchery();
  sendForm();
  #maskInputs();
  disableInputHandling();
  handleCocoon();
  handleUpload();
  toggleModal();

$(document).on("turbolinks:load", initFunctions);
