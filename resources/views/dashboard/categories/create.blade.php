@extends('dashboard.layouts.main')

@section('content')

<div class="d-flex justify-content-between flex-wrap
        flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Create new Category</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/categories" method="post" class="mb-5">
        @csrf

        <div class="mb-3">

          <label for="category" class="form-label">Category name</label>

          <input type="text" class="form-control
            @error('category') is-invalid @enderror"
            id="category" autofocus name ='category' value="{{ old('category') }}">
                @error('category')
                    <div class="invalid-feedback">
                    {{ $message }}
                    </div>
                @enderror
        </div>

        <button type="submit" class="btn btn-primary">Create Category!</button>
      </form>
</div>

<script>
    // const title = document.querySelector('#title');
    // const slug = document.querySelector('#slug');

    // title.addEventListener('change', function(){
    //     fetch('/dashboard/posts/checkSlug?title=' + title.value)
    //         .then(response => response.json())
    //         .then(data => slug.value = data.slug)
    // });

    // document.addEventListener('trix-file-accept', function(e){
    //     e.preventDefault();
    // })

    // function previewImage(){
    //     const image = document.querySelector('#image');
    //     const imgPreview = document.querySelector('.img-preview');

    //     imgPreview.style.display = 'block';

    //     const oFReader = new FileReader();
    //     oFReader.readAsDataURL(image.files[0]);

    //     oFReader.onload = function(oFREvent) {
    //         imgPreview.src = oFREvent.target.result;
    //     }
    // }


</script>
@endsection
