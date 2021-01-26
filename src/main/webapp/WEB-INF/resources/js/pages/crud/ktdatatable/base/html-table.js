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
          field: 'Marquee Title',
          type: 'string',
        },
        {
          field: 'Marquee Image',
          type: 'image',
        },
        {
          field: 'Marquee Description',
          type: 'string',
        },
        {
          field: 'Marquee Start Timing',
          type: 'YYYY-MM-DD',
        },

        {
          field: 'Marquee End Timing',
          type: 'YYYY-MM-DD',
        },
        {
          field: 'View',
          type: 'number',
        },
        {
          field: 'Edit',
          type: 'number',
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
