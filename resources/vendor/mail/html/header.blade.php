<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'Kindem')
<p></p>
{{-- <img src="https://kindem.my.id/landing/img/kindem-logo.png" class="logo" alt="Kindem Logo"> --}}
@else
{{ $slot }}
@endif
</a>
</td>
</tr>
