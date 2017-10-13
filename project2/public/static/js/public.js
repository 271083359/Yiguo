$('.mobile').on({'mouseover':function(){
    $('.mobile').addClass('current');
},'mouseout':function(){
    $('.mobile').removeClass('current')}
})
$('.myyiguo').on({'mouseover':function(){
    $('.myyiguo').addClass('current');
},'mouseout':function(){
    $('.myyiguo').removeClass('current')}
})

  // var i;

$('.item').hover(function(){

   var i = $(this).eq(0).index()+2;
   $('.item').eq(i).addClass('current').siblings('.item').removeClass('current');
})
