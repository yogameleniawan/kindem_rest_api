@component('mail::layout')
{{-- Header --}}
@slot('header')
@component('mail::header', ['url' => config('app.url')])
{{ config('app.name') }}
@endcomponent
@endslot

{{-- Body --}}
{{ $slot }}

{{-- Subcopy --}}
@isset($subcopy)
@slot('subcopy')
@component('mail::subcopy')
{{ $subcopy }}
@endcomponent
@endslot
@endisset

{{-- Footer --}}
@slot('footer')


            <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tr>
                                <td style="padding-bottom:10px;padding-left:10px;padding-right:10px;padding-top:30px;text-align:center;">
                                    <table class="social-table" width="144px" border="0" cellpadding="0" cellspacing="0" role="presentation" align="center" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tbody><tr>
                                            <td style="padding:0 2px 0 2px;"><a href="https://www.wa.me/6287880101167" target="_blank"><img src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/whatsapp@2x.png" width="32" height="32" alt="WhatsApp" title="WhatsApp" style="display: block; height: auto; border: 0;"></a></td>
                                            <td style="padding:0 2px 0 2px;"><a href="https://www.facebook.com/yoedu.id" target="_blank"><img src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/facebook@2x.png" width="32" height="32" alt="Facebook" title="facebook" style="display: block; height: auto; border: 0;"></a></td>
                                            <td style="padding:0 2px 0 2px;"><a href="https://www.instagram.com/yoedu.id" target="_blank"><img src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/instagram@2x.png" width="32" height="32" alt="Instagram" title="instagram" style="display: block; height: auto; border: 0;"></a></td>
                                            <td style="padding:0 2px 0 2px;"><a href="https://www.youtube.com/channel/UCZgieK29HUfnM1PsAcfp2nQ" target="_blank"><img src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/youtube@2x.png" width="32" height="32" alt="YouTube" title="YouTube" style="display: block; height: auto; border: 0;"></a></td>
                                        </tr>
                                    </tbody></table>
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
                                    <a href="http://www.yoedu.id/" style="font-size: 14px;color:red;">Website</a> | <a href="http://www.scholarship.yoedu.id/" style="font-size: 14px;color:red;">Cari Beasiswa</a> | <a href="http://www.apply.yoedu.id/" style="font-size: 14px;color:red;">Online Application System</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

@component('mail::footer')
Copyright © {{ date('Y') }} Yoedu Study Network
@endcomponent
@endslot
@endcomponent
