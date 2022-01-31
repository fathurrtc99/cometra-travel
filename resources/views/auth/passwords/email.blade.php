@extends('layouts.app-form')

@section('content')

<main class="section d-flex bg-white">
    <div class="background-form">
        <img src="{{ url('frontend/images/bg-form.png')}}" alt="" class="background-form">
    </div>

        <div class="section-form">
            <div class="form-login text-center">
                <h1>{{ __('Forgot Password')}}</h1>
                <h3>{{ __('Enter your email to
                  reset your password') }}</h3>
              <div class="card card-lgn border-light bg-white pt-4">
                <div class="card-body card-form">
                  @if (session('status'))
                    <div class="alert alert-success" role="alert">
                      {{ session('status')}}
                    </div>
                  @endif

                    <form action="{{ route('password.email') }}" class="form-page" method="POST" style="max-width:600px;margin:auto">
                        @csrf
                      <div class="input-container">
                        <i class="fa fa-envelope icon"></i>
                        <input id="email" class="input-field @error('email') is-invalid @enderror" type="email" placeholder="Your Email" name="email" value="{{ old('email')}}" required autocomplete="email" autofocus>

                        @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror

                      </div>

                      <button type="submit" class="btn btn-block btn-lgn">{{ __('Send email') }}</button>


                    </form>


                </div>

                <h4>{{ __('We have send link a password
                  recover to your email, Please check your email') }}</h4>
              </div>

            </div>
        </div>


   </main>




@endsection
