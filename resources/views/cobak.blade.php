

<html>

<body>
    
    <form action = "{{ url('/create_kategori_bencana') }}" method = "post">
        <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
        <table>
            <tr>
                <td>kategori_bencana</td>
                <td><input type="text" name='kategori_bencana'/></td>
            </tr>
            <tr>
                <td colspan = '2'>
                <input type = 'submit' value = "Input Data"/></td>
            </tr>
        </table>
    </form>

</body>

</html>