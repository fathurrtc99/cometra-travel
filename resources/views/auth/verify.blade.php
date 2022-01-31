@extends('layouts.app-form')

@section('content')

<main class="section d-flex bg-white">
    <div class="background-form">
        <img src="{{ url('frontend/images/bg-form.png')}}" alt="" class="background-form">
    </div>

        <div class="section-form">
            <div class="form-login text-center">
                <h1>{{ __('Verify Your Email Address')}}</h1>
                    <img src="{{ url("frontend/images/ic-verifmail.png")}}" alt="">

                            @if (session('resent'))
                                <div class="alert alert-success" role="alert">
                                    <h3>{{ __('A fresh verification link has been sent to your email address.') }}</h3>
                                </div>
                            @endif

                            <form method="POST" class="form-page text-center" action="{{ route('verification.resend') }}">
                                @csrf

                                <h4>
                                    {{ __('Before proceeding, please check your email for a verification link.') }}
                                    {{ __('If you did not receive the email, Click this button') }}
                                </h4>


                                <button type="submit" class="btn btn-block btn-register btn-link">{{ __('request another') }}</button>.
                            </form>

            </div>
        </div>

   </main>

@endsection
