@extends('layouts.main')
@section('content')
<div class="row justify-content-center">
    <div class="col-lg-5">
        <main class="form-register">
            <h1 class="h3 mb-5 mt-4 fw-normal text-center fw-bold fs-2">Register</h1>
            <form action="register" method="POST">
            @csrf

            <div class="form-floating mb-3">
                <input type="text" name="name" class="form-control
                @error('name') is-invalid @enderror" id="name"
                placeholder="Name" required value="{{ old('name') }}">

                <label for="name"> Name </label>

                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror

            </div>

            <div class="form-floating mb-3">
                <input type="text" name="username" class="form-control
                @error('username') is-invalid @enderror" id="username"
                placeholder="Username" required value="{{ old('username') }}">

                <label for="username"> Username </label>

                @error('username')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror

            </div>

            <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control
                @error('email') is-invalid @enderror" id="email"
                placeholder="Name@example.com" required value="{{ old('email') }}">

                <label for="email"> Email </label>

                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror

            </div>

            <div class="form-floating mb-3">
                <input type="password" name= "password" class="form-control
                @error('password') is-invalid @enderror" id="password"
                placeholder="Password" required>

                <label for="password">Password</label>

                @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror

            </div>

            <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>

            </form>
            <div class="text-center">
                <p class="mt-4 mb-1 text-muted">Have an account already?</p>
                <a href="/login">Login here </a>
            </div>
        </main>
    </div>
</div>

@endsection
