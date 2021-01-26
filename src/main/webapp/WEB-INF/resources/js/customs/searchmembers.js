'use strict';
// Class definition

var KTDatatableHtmlTableDemo = function() {
  // Private functions

  // demo initializer
  var demo = function() {

    var datatable = $('#kt_datatable').KTDatatable({
      data: {
        saveState: {cookie: false},
      },
      search: {
        input: $('#kt_datatable_search_query'),
        key: 'generalSearch',
      },
      layout: {
        class: 'datatable-bordered',
      },
      columns: [
        {
          field: 'SrNo',
          type: 'number',
        },
        {
          field: 'Full Name',
          type: 'string',
        },
        {
          field: 'Birth Date',
          type: 'string',
        },
        {
          field: 'Email Address',
          type: 'string',
        },
        {
          field: 'Pin Code',
          type: 'number',
        },

        {
          field: 'Address',
          type: 'string',
        },
        {
          field: 'View',
          type: 'string',
        },
        {
          field: 'Edit',
          type: 'string',
        },
        {
          field: 'Status',
          type: 'string'
        }
      ],
    });

    $('#kt_datatable_search_status').on('change', function() {
      datatable.search($(this).val().toLowerCase(), 'Status');
    });

    $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();

  };

  return {
    // Public functions
    init: function() {
      // init dmeo
      demo();
    },
  };
}();

jQuery(document).ready(function() {
  KTDatatableHtmlTableDemo.init();
});
