@if ($paginator->hasPages())
<nav class="paginate-custom mt-5">
    <ul class="pagination">
        @if ($paginator->onFirstPage())
        <li class="page-item disabled">
            <span class="page-link">&laquo;</span>
        </li>
        @else
        <li class="page-item">
            <a class="page-link" href="{{$paginator->previousPageUrl()}}">&laquo;</a>
        </li>
        @endif
        @foreach ($elements as $element)
        @if (is_string($element))
        <li class="page-item disabled">
            <span class="page-link">{{ $element }}</span>
        </li>
        @endif

        @if (is_array($element))
        @foreach ($element as $page => $url)
        @if ($page == $paginator->currentPage())
        <li class="page-item active">
            <span class="page-link">
                {{ $page }}
                <span class="sr-only">(current)</span>
            </span>
        </li>
        @else
        <li class="page-item">
            <a class="page-link" href="{{ $url }}">{{ $page }}</a>
        </li>
        @endif
        @endforeach
        @endif
        @endforeach

        @if ($paginator->hasMorePages())
        <li class="page-item">
            <a class="page-link" href="{{$paginator->nextPageUrl()}}">&raquo;</a>
        </li>
        @else
        <li class="page-item disabled">
            <a class="page-link" href="#">&raquo;</a>
        </li>
        @endif
    </ul>
</nav>
@endif