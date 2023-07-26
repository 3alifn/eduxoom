


$(".check-mark").click(function(){
    $('.check-mark-area input:checkbox').not(this).prop('checked', this.checked);
});
