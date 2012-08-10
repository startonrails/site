function publish(id){
  $.ajax({
    url: '/posts/publish',
    type: 'put',
    data: {id: id},
    dataType: 'script'
  });
}
