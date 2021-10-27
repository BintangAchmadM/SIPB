<html>

<body>
    
    <table id="datatablesSimple">
        <thead>
            <tr>
            <th>No</th>
            <th>Kategori_Bencana</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
         @foreach($a as $item)
        <tr>
            <td>{{ $item->id }}</td>
            <td>{{ $item->Kategori_Bencana }}</td>
           
            
           
            <td>
              <a href="{{ url('/editcobaknampil',$item->id) }}"><button type="submit" class="btn btn-info btn-sm")>edit</button>
              </a>
            </td>

            @csrf
            @method('Delete')
            <td>
                <a href="{{ url('/destroy_kb',$item->id) }}"><button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Delete</button></a>
            </td> 
        </tr>
            @endforeach
        </tbody>
    </table>
    
</body>
</html>