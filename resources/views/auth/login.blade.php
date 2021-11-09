<style>
    .square1 {
        float: right;
        background-color: #007251;
        width: 500px;
        height: 100%;
        padding: 27px;
    }

    .input[type=email],
    input[type=password] {
        width: 100%;
        margin-top: 7px;
        margin-bottom: 7px;
    }

    .btn-login {
        background-color: #fff;
        border: none;
        color: #007251;
        padding: 10px 32px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        margin-top: 40px;
        width: 100%;
    }
</style>

<div class="square1">
    <div style="margin-top: 40px; margin-bottom: 25px;">
        <p style="font-size: 50px; color: #fff; text-align: center;">
            STULISH
        </p>
        <p style="font-size: 25px; color: #ccc; text-align: center;">
            Study English for Kindergarten
        </p>
    </div>

    <p style="font-size: 15px; color: #fff; text-align: left;">
        Login
    </p>

    @if (session('status'))
    <div class="mb-4 font-medium text-sm text-green-600">
        {{ session('status') }}
    </div>
    @endif

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <div>
            <label for="email" value="{{ __('Email') }}"></label>
            <input class="input" id="email" type="email" name="email" :value="old('email')" placeholder="Email" required autofocus />
        </div>

        <div>
            <label for="password" value="{{ __('Password') }}"></label>
            <input class="input" id="password" type="password" name="password" placeholder="Password" required autocomplete="current-password" />
        </div>

        <div style="color:#fff">
            <div style="float: left;">
                <label for="remember_me">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span>{{ __('Remember me') }}</span>
                </label>
            </div>

            <div style="float: right;">
                @if (Route::has('password.request'))
                <a href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
                @endif
            </div>

        </div>
        <div>
            <button class="btn-login">{{ __('Log in') }}</button>
        </div>

    </form>

</div>

<!-- <x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        @if (session('status'))
        <div class="mb-4 font-medium text-sm text-green-600">
            {{ session('status') }}
        </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
                @endif

                <x-jet-button class="ml-4">
                    {{ __('Log in') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout> -->