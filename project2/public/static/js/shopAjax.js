   totle();
        adddel();
        //总计函数
        function totle(){
            var sum = 0 ;

            $('.xiaoji').each(function(){
                sum +=parseInt($(this).text());
            });
            $('#total').text(sum);
        }