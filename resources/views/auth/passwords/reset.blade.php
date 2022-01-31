@extends('layouts.app-form')

@section('content')

 <main class="section d-flex bg-white">
    <div class="background-form">
        <img src="{{ url('frontend/images/bg-form.png')}}" alt="" class="background-form">
    </div>

        <div class="section-form">
            <div class="form-login text-center">
                <h1>{{ __('Create New Password')}}</h1>
                <h3>{{ __('Your new password must
                  be different from previous
                  used passwords.')}}</h3>
               <div class="card border-light bg-white mt-4">
                <div class="card-body card-body-form card-form">

                    <form action="{{ route('password.update')}}" method="POST" class="form-page" style="max-width:600px;margin:auto">
                      @csrf

                      <input type="hidden" name="token" value="{{ $token }}">

                      <div class="input-container">
                        <i class="fa fa-user icon"></i>
                        <input id="email" class="input-field @error('email') is-invalid @enderror"  type="text" placeholder="Your email" name="email" value="{{ $email ?? old('email')}}"" required autocomplete="email" autofocus>

                        @error('email')
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                          </span>
                        @enderror
                      </div>

                      <div class="input-container">
                        <i class="fa fa-key icon"></i>
                        <input id="password" class="input-field @error('password') is-invalid @enderror" type="password" placeholder="Password" name="password" required autocomplete="new-password">

                        @error('password')
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                          </span>
                          @enderror
                      </div>

                      <div class="input-container">
                        <i class="fa fa-key icon"></i>
                        <input id="password-confirm" class="input-field" type="password" placeholder="Password" name="password_confirmation" required autocomplete="new-password">
                      </div>

                      <button type="submit" class="btn btn-block btn-lgn">{{ __('Reset Password')}}</button>

                    </form>

                </div>
              </div>

            </div>
        </div>


   </main>


@endsection
