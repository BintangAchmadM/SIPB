@extends('dashboardview.layout.main')

@section('container')

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
    <div class='mb-3'>
        <a href="{{ url('/form-create-role') }}">
            <button type="button" class="btn btn-primary">Tambah Role</button>
        </a>
    </div>
    @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
        </div>
    @endif
    @if (session()->has('update'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            {{ session('update') }}
        </div>
    @endif
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-dark">DataTables {{ $title }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Role</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    {{-- <tfoot>
                        <tr>
                            <th>Role</th>
                            <th>Petugas</th>
                        </tr>
                    </tfoot> --}}
                    <tbody>
                        @foreach ($role as $roles)
                        <tr>
                            <th>{{ $roles-> Role }}</th>
                            
                            <th>
                                <div class="d-inline">
                                    <a href="{{ url('/dashboard-table-user-with-role-') }}{{ $roles->id }}" class="btn btn-info">
                                        <i class="bi bi-eye-fill"></i>
                                    </a>
                                    <a href="{{ url('/form-edit-role-') }}{{ $roles->id }}" class="btn btn-warning">
                                        <i class="bi bi-pencil-fill"></i>
                                    </a>
                                </div>
                            </th>
                        </tr> 
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
                    

@endsection