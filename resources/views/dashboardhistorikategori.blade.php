<html>

<body>
    <form action = "{{ url('/proseseditcobaknampil',$item->id) }}" method = "post">
        <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
        <table>

            <tr>
               
                <td><input type="text" hidden name='id' value={{ $item->id }} /></td>
            </tr>
            <tr>
                <td>kategori_bencana</td>
                <td><input type="text" name='Kategori_Bencana' placeholder={{ $item->Kategori_Bencana }} /></td>
            </tr>
            <tr>
                <td colspan = '2'>
                <input type = 'submit' value = "Input Data"/></td>
            </tr>
        </table>
    </form>
</body>
</html>