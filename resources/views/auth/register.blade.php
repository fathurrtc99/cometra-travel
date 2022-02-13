@extends('layouts.app-form')
@section('title')
    Create Account
@endsection
@section('content')
<main class="section d-flex bg-white">
    <div class="background-form">
        <img src="{{ url('frontend/images/bg-form.png')}}" alt="" class="background-form sticky">
    </div>
        <div class="section-form">
            <div class="form-login pl-2">
                <h1>{{ __('START YOUR') }}<br> {{ __('JOURNEY')}}</h1>
                <h4 class="text-muted text-center">{{ __('Create New Account')}}</h4>
              <div class="card card-lgn border-light bg-white">
                <div class="card-body card-body-form card-form">
                    <form action="{{ route('register') }}" method="POST" class="form-page" style="max-width:100%;margin:auto">
                        @csrf
                      <div class="input-container">
                        <i class="fa fa-user icon"></i>
                        <input id="name" class="input-field  @error('name') is-invalid @enderror" type="text" placeholder="Your Name" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                      </div>
                      <div class="input-container">
                        <i class="fa fa-at icon"></i>
                        <input class="input-field @error('email') is-invalid @enderror" type="email" placeholder="Your Email" name="email" value="{{ old('email') }}" required autocomplete="email">
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                      </div>
                      <div class="input-container">
                        <i class="fa fa-users icon"></i>
                        <input id="username" class="input-field @error('username') is-invalid @enderror" type="username" placeholder="Username" name="username" value="{{ old('username') }}" required autocomplete="username">
                        @error('username')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                      </div>
                      <div class="input-container password-field">
                        <i class="fa fa-key icon"></i>
                        <input id="fakePassword" class="input-field @error('password') is-invalid @enderror" type="password" placeholder="Password" name="password" required autocomplete="new-password">
                        <i class="fa fa-eye icon-pswrd" id="toggler"></i>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                      </div>
                      <div class="input-container password-field">
                        <i class="fa fa-key icon"></i>
                        <input id="password-confirm fakePassword" class="input-field @error('password') is-invalid @enderror" name="password_confirmation" type="password" placeholder="Confirm Password" name="password_confirmation" required autocomplete="new-password">
                        <i class="fa fa-eye icon-pswrd" id="toggler"></i>
                      </div>
                      <span>
                          <h4 class="text-muted text-md-right m-0 p-0"> {{ __('*Password have min.8 character')}}</h4>
                      </span>
                      <label>
                            <input class="fw-bold mt-2 "  type="checkbox" checked="checked" name="remember">
                            {{ __('I Agree with Terms and Privacy') }}
                      </label>
                      <button type="submit" class="btn btn-block btn-register">{{ __('Register')}}</button>
                    </form>
                    <div class="forgot-text text-center">
                      <h3>{{ __('Already A Member?') }} <a href="{{ route('login')}}">{{ __(' Sign In') }}</a></h3>
                    </div>
                </div>
              </div>
            </div>
        </div>
   </main>
@endsection
@push('addon-script')
@endpush
