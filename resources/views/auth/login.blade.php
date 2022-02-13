@extends('layouts.app-form')
@section('title')
    Cometra-Login
@endsection
@section('content')
<main class="section d-flex bg-white">
    <div class="background-form">
        <img src="{{ url('frontend/images/bg-form.png')}}" alt="" class="background-form">
    </div>
        <div class="section-form">
            <div class="form-login text-center">
                <h1>{{ __('Sign In To Cometra') }}</h1>
                <h3>{{ __('Welcome Back')}}</h3>
                <h4 class="text-muted">{{ __('Please login to your account')}}</h4>
              <div class="card card-lgn border-light bg-white">
                <div class="card-body card-form">
                    <form method="post" action="{{ route('login')}}" class="form-page" style="max-width:600px;margin:auto">
                      @csrf
                      <div class="input-container">
                        <i class="fa fa-user icon"></i>
                        <input class="input-field @error('email') is-invalid @enderror" type="text" placeholder="Your email" name="email" value="{{ old('email')}}" required autocomplete="email" autofocus>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                      </div>
                      <div class="input-container password-field">
                        <i class="fa fa-key icon"></i>
                        <input id="fakePassword" class="input-field @error('password') is-invalid @enderror" type="password" placeholder="Password" name="password" required autocomplete="current-password">
                        <i class="fa fa-eye icon-pswrd" id="toggler"></i>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                         @enderror
                      </div>
                      <label>
                            <input class="fw-bold mt-2"  type="checkbox" checked="checked" name="remember" {{ old('remember') ? 'checked' : '' }}>
                            {{ __('Remember Me') }}
                      </label>
                      <button type="submit" class="btn btn-block btn-lgn">{{ __('Sign In')}}</button>
                    </form>

                    <div class="forgot-text text-center">
                  @if (Route::has('password.request'))
                      <h3>{{ __('Dont have an account? ') }}<a href="{{ route('register')}}">{{ __('Register')}}</a></h3>
                      <h3>{{__('or')}}</h3>
                      <h3><a href="{{ route('password.request') }}">{{ __('Forgot Password?') }}</a></h3>
                  @endif
                    </div>
                </div>
              </div>
            </div>
        </div>
   </main>
@endsection
@push('addon-script')
@endpush
