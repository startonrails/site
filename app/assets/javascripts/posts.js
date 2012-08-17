function active(id, path){
  $.ajax({
    url: '/posts' + path,
    type: 'put',
    data: {id: id},
    dataType: 'script'
  });
}
