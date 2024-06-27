@extends('layout')

@section('main_title', 'Feedback')

@section('main_content')
    @include('feedback.toast')

    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783" />
                </svg>
                <span class="fs-4">Guest Book</span>
            </a>

            <ul class="nav nav-pills">
                <li><button onclick="openFeedbackForm()" type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#feedbackModal">Send feedback</button></li>
            </ul>
        </header>
    </div>

    <!-- Feedback Modal -->
    <div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="feedbackModalLabel">Send Feedback</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    @include('feedback.form')
                </div>
            </div>
        </div>
    </div>

    <div class="table-responsive">
        <table id="feedbackTable" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Feedback</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <!-- Данные загружаются через DataTables -->
            </tbody>
        </table>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            var table = $('#feedbackTable').DataTable({
                "ajax": {
                    "url": "{{ route('feedbacks.get') }}",
                    "dataSrc": "feedbacks"
                },
                "columns": [
                    { "data": "username", "width": "15%" },
                    { "data": "email", "width": "15%" },
                    { "data": "feedback", "orderable": false, "width": "55%" },
                    { "data": "created_at", "width": "15%" }
                ],
                "order": [[3, "desc"]],
                "lengthMenu": [ [5, 10, 25, 50, -1], [5, 10, 25, 50, "All"] ],
                "responsive": true
            });

            $('#feedbackForm').on('submit', function(event) {
                event.preventDefault();

                $('.invalid-feedback').text('');

                $.ajax({
                    url: $(this).attr('action'),
                    method: $(this).attr('method'),
                    data: $(this).serialize(),
                    success: function(response) {
                        $('.invalid-feedback').text('');
                        var successToast = new bootstrap.Toast(document.getElementById('successToast'));
                        successToast.show();

                        $('#feedbackForm')[0].reset();

                        $('#reload').click();

                        table.ajax.reload(null, false);
                    },
                    error: function(response) {
                        $('.invalid-feedback').text('');
                        var errors = response.responseJSON.errors;
                        for (var field in errors) {
                            var errorMessage = errors[field][0];
                            $('#' + field + 'Error').text(errorMessage);
                        }

                        $('#reload').click();
                    }
                });
            });

            $('#reload').click(function() {
                $.ajax({
                    type: 'GET',
                    url: 'reload-captcha',
                    success: function(data) {
                        $(".captcha span").html(data.captcha);
                    }
                });
            });

            $(window).resize(function() {
                table.columns.adjust().responsive.recalc();
            });
        });
    </script>
@endsection
