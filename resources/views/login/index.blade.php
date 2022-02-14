@extends('layouts.main')
@section('content')
<div class="row justify-content-center">
     <!----- ALERT ------>
     @if (session()->has('success'))

     <div class="alert alert-primary alert-dismissible fade show" role="alert">
         {{ session('success') }}
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
       </div>

     @endif
     @if (session()->has('loginError'))

     <div class="alert alert-danger alert-dismissible fade show" role="alert">
         {{ session('loginError') }}
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
       </div>

     @endif

     <!------------------>

    <div class="col-lg-5">

        <main class="form-signin">
            <h1 class="h3 mb-5 fw-normal text-center mt-4 fw-bold fs-2">
                Log In</h1>

            <form action="/login" method="POST">
                    @csrf
                <div class="form-floating mb-3 ">
                    <input type="email" name="email"
                    class="form-control  @error('email') is-invalid @enderror"
                    id="email" placeholder="name@example.com"
                    autofocus required value="{{ old('email') }}">
                    <label for="email">Email address</label>

                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror

                </div>

                <div class="form-floating mb-3">
                    <input type="password" name="password"
                    class="form-control"
                    id="password" placeholder="Password"
                    required>

                    <label for="password">Password</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">
                    Sign in</button>

            </form>
            <div class="text-center">
                <p class="mt-4 mb-1 text-muted"> Don't have any Account?</p>
                <a href="/register"> Register here </a>
            </div>
        </main>
    </div>
</div>

@endsection
