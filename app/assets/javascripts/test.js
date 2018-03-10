let user_name = 'redex2000';
fetch(`https://api.github.com/users/${user_name}`)
.then(function(response){
    console.log(response);
    return response.json;
})
.then(function(user_data){
    let img = new Image();
    img.src = user_data.avatar_url;
    document.body.append(img);
});