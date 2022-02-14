@extends('dashboard.layouts.main')

@section('content')

    <div class="d-flex justify-content-between flex-wrap
        flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">My Posts</h1>
    </div>

    @if (session()->has('success'))
        <div class="alert alert-info" role="alert">
        {{ session('success') }}
      </div>
    @endif

        <div class="table-responsive col-lg-8">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Title</th>
                  <th scope="col">Category</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                  @foreach ($posts as $post)
                  <tr>
                    <td> {{ $loop->iteration }}</td>
                    <td>{{ $post->title }}</td>
                    <td>{{ $post->category->name }}</td>
                    <td>
                        <a href="/dashboard/posts/{{ $post->slug }}" class="badge bg-secondary">
                            <span data-feather="eye"></span>
                        </a> |

                        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-warning">
                            <span data-feather="edit-2"></span>
                        </a> |

                        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                            @csrf
                            @method('delete')
                                <button class="badge bg-danger border-0"
                                onclick="return confirm(' Are you sure to delete this post?')">
                                    <span data-feather="trash-2"></span>
                                </button>
                        </form>
                    </td>
                  </tr>
                  @endforeach
                </tbody>

            </table>
          </div>


@endsection
