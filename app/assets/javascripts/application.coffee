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
#= require autocomplete_zipcode
#= require bootstrap-datepicker
#= require_tree

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

$('.datepicker').datepicker();


$('input.datepicker').data({behaviour: "datepicker"}).datepicker();


initSwitchery = () ->
  elem = document.querySelector('.js-switch');
  if elem
    init = new Switchery(elem, {
      color: "#12CA9E"
    });

sendForm = () ->
  $('#submitBtn').click () ->
    $('.simple_form').submit();

maskInputs = () ->
  options = {placeholder: ' ', autoclear: false}
  $('.cpf').mask('999.999.999-99', options);
  $('.cnpj').mask('99.999.999/9999-99', options)
  $('.phone').mask('(99) 9999-9999?9', options);
  $('.zipcode').mask('99999-999', options);
  $('.hour').mask('99:99', options);
  $('.date').mask('99/99/9999', options);
  # $('.weight').maskMoney({
  #   suffix: ' kg'
  #   allowZero: false
  #   thousands: ''
  #   decimal: '.'
  #   precision: 1
  #   suffixStay: true
  # });
  # $('.height').maskMoney({
  #   suffix: ' m'
  #   allowZero: false
  #   thousands: ''
  #   decimal: ','
  #   precision: 2
  #   suffixStay: true
  # })
  $('.website').blur () ->
    current_input = $(this);
    value = $(this).val();
    unless value.includes('http')
      value = 'http://' + value
      current_input.val(value);

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
  initSwitchery();
  sendForm();
  maskInputs();
  handleCocoon();
  handleUpload();
  toggleModal();

$(document).on("turbolinks:load", initFunctions);
