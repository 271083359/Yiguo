$('.mobile').on({'mouseover':function () {

    $('.mobile').addClass('current');

},'mouseleave':function () {
    $('.mobile').removeClass('current');
}})


$('.myyiguo').on({'mouseover':function () {

    $('.myyiguo').addClass('current');

},'mouseleave':function () {
    $('.myyiguo').removeClass('current');
}})


$('.catalogs').on({'mouseover':function () {
    $('#_categry').css('display','block');
},'mouseleave':function () {
    $('#_categry').css('display','none');
}})

$('.logout').on('click',function () {
    var out=2;
    $.ajax({
        url:'logout',
        type:'post',
        data:{
            'out':out

        },success:function (data) {
            var json=JSON.parse(data);
            if (json.code===200){
                // window.location.href='detail'

                window.location.reload();
            }
        }



    })
})