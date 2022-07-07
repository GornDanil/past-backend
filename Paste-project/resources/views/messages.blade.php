@extends('layouts.app')

@section('title-block') Все Пасты @endsection

@section('content')
   <h1>Все Пасты</h1> 
   @foreach($data as $el)
    <div class="alert alert-info">
        <h3>{{ $el->title }}</h3>
        
        <script>
        </script>
        
        <p><small>{{ $el->created_at }}</small></p>
        <a href="{{ route('contact-data-one', $el->id)}}"><button type="submit" name="button" id="" class="btn btn-warning">Детальнее</button></a>
    </div>
    
    
   @endforeach
   
   <a href="{{$data->previousPageUrl()}}"><button type="submit" name="button" id="" class="btn btn-info">предыдущая страница</button></a>
   <a href="{{$data->nextPageUrl()}}"><button type="submit" name="button" id="" class="btn btn-info">Следующая страница</button></a>
@endsection
 
