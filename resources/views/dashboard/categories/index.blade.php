@extends('dashboard.layouts.main')

@section('content')

    <div class="d-flex justify-content-between flex-wrap
        flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Post Categories</h1>
    </div>

    @if (session()->has('success'))
        <div class="alert alert-info" role="alert">
        {{ session('success') }}
      </div>
    @endif

        <div class="table-responsive col-lg-6">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Category name</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                  @foreach ($categories as $category)
                  <tr>
                    <td> {{ $loop->iteration }}</td>
                    <td>{{ $category->name }}</td>
                    <td>
                        <a href="#" class="badge bg-secondary" disabled readonly>
                            <span data-feather="eye"></span>

                        {{-- /dashboard/categories/{{ $category->slug }} --}}
                        </a> |

                        <a href="#" class="badge bg-warning" disabled readonly>
                            <span data-feather="edit-2"></span>
                        {{-- /dashboard/categories/{{ $category->slug }}/edit --}}
                        </a> |

                        <form action="#" method="post" class="d-inline">
                            @csrf
                            @method('delete')
                                <button class="badge bg-danger border-0" disabled readonly
                                onclick="return confirm(' Are you sure to delete this post?')">
                                    <span data-feather="trash-2"></span>
                            {{-- /dashboard/categories/{{ $category->slug }} --}}
                                </button>
                        </form>
                    </td>
                  </tr>
                  @endforeach
                </tbody>

            </table>
          </div>


@endsection
