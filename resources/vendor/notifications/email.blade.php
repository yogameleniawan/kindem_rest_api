@if (Route::is('password.email'))
@component('mail::message')
<style>
    a[href] {
        color: red;
    }
</style>
<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <img src="https://drive.google.com/uc?export=view&id=1zsi2gvydQE6QDo03lOHRFJ6OLCq7X8b_"
                                        class="logo" alt="Yoedu Logo" style="width: 180px;height: 50px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <h1 style="font-size: 30px;color:black">Reset Password</h1>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<p>
    Hi {{Session::get('username')}}! We got a request to reset your account password. Use the link below to reset your password.
</p>

@isset($actionText)
<span class="break-all">[{{ $displayableActionUrl }}]({{ $actionUrl }})</span>
@endisset
<br><br>
{{-- Action Button --}}
<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation" style="margin-top:20px">
    <tr>
    <td align="center">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td>
        <a href="{{ $displayableActionUrl }}" style="color: white; background-color: #e5352b; padding: 20px 50px 20px 50px; border-radius:10px;text-decoration: none;font-size:16px" target="_blank" rel="noopener"><b>Reset Password</b></a>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
</table>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565">Question? Email us at <a
                                            style="color: red;text-decoration:none">admin@yoedu.id</a></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565;"><i>This is an automatically generated
                                            email – please do not reply to it</i></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<hr>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <h1 style="font-size: 30px;color:black">Atur Ulang Password</h1>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<p>Hai {{Session::get('username')}}! Kami telah menerima pengajuan untuk mengatur ulang password akun Anda. Gunakan tautan di bawah ini untuk mengatur ulang password akun Anda.
</p>

@isset($actionText)
<span class="break-all">[{{ $displayableActionUrl }}]({{ $actionUrl }})</span>
@endisset
<br><br>
{{-- Action Button --}}
<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation" style="margin-top:20px">
    <tr>
    <td align="center">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td>
        <a href="{{ $displayableActionUrl }}" style="color: white; background-color: #e5352b; padding: 20px 50px 20px 50px; border-radius:10px;text-decoration: none;font-size:16px" target="_blank" rel="noopener"><b>Reset Password</b></a>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
</table>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565">Question? Email us at <a
                                            style="color: red;text-decoration:none">admin@yoedu.id</a></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565;"><i>Ini adalah email yang dibuat secara otomatis – harap jangan membalasnya</i></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

@endcomponent
@else
@component('mail::message')
<style>
    a[href] {
        color: red;
    }
</style>
<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <img src="https://drive.google.com/uc?export=view&id=1zsi2gvydQE6QDo03lOHRFJ6OLCq7X8b_"
                                        class="logo" alt="Yoedu Logo" style="width: 180px;height: 50px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <h1 style="font-size: 30px;color:black">Verify Your Email</h1>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<p>Hi {{Session::get('username')}}! Use the link below to verify your email and start applying our scholarship programs.
</p>

@isset($actionText)
<span class="break-all">[{{ $displayableActionUrl }}]({{ $actionUrl }})</span>
@endisset
<br><br>
{{-- Action Button --}}
@isset($actionText)
<?php
    switch ($level) {
        case 'success':
        case 'error':
            $color = $level;
            break;
        default:
            $color = 'primary';
    }
?>
@component('mail::button', ['url' => $actionUrl, 'color' => $color])
{{ $actionText }}
@endcomponent
@endisset

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565">Question? Email us at <a
                                            style="color: red;text-decoration:none">admin@yoedu.id</a></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565;"><i>This is an automatically generated
                                            email – please do not reply to it</i></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<hr>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td>
                                    <h1 style="font-size: 30px;color:black">Verifikasi Email Anda</h1>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<p>Hai {{Session::get('username')}}! Gunakan tautan di bawah ini untuk memverifikasi email Anda dan mulai mendaftar program beasiswa kami.
</p>

@isset($actionText)
<span class="break-all">[{{ $displayableActionUrl }}]({{ $actionUrl }})</span>
@endisset
<br><br>
{{-- Action Button --}}
<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation" style="margin-top:20px">
    <tr>
    <td align="center">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
    <td>
        <a href="{{ $displayableActionUrl }}" style="color: white; background-color: #e5352b; padding: 20px 50px 20px 50px; border-radius:10px;text-decoration: none;font-size:16px" target="_blank" rel="noopener"><b>Verifikasi Email</b></a>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
</table>

<table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" role="presentation">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565">Question? Email us at <a
                                            style="color: red;text-decoration:none">admin@yoedu.id</a></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td align="center">
                                    <p style="font-size: 14px;color:#666565;"><i>Ini adalah email yang dibuat secara otomatis – harap jangan membalasnya</i></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

@endcomponent

@endif
