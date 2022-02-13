@extends('layouts.succes')
@section('title')
    Checkout Success!
@endsection

@section('content')
<main>
    <div class="section-success d-flex align-items-center">
      <div class="col text-center">
        <img src="{{ url('/frontend/images/icon-Success.png') }}" alt="">
        <h1>Yeay! Success</h1>
          <p>We've sent you E-mail for trip instruction
            <br> please read it well</p>
              <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-5">
                Home Page
              </a>
      </div>
    </div>
  </main>

@endsection

