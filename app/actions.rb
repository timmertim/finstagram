def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes/60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    @post_fred = {
        username: "Fred Flintsone",
        avatar_url: "https://i1.rgstatic.net/ii/profile.image/AS%3A272238188429316%401441918050228_l/Fred_Flintstone.png",
        photo_url: "http://www.simplymarvellouscakes.com/wp-content/uploads/2014/02/Geology-cake-540x394.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Fred Flintsone",
            text: "Mmmmm...cake! You like geology now!"    
        }]
    }
    
    @post_gneiss = {
        username: "Gneiss Glass",
        avatar_url: "http://thenorthwoodsofwisconsin.com/images/icons/bear.png",
        photo_url: "https://s-media-cache-ak0.pinimg.com/564x/63/3c/7d/633c7da8946543516c574cbdc161ad6d.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Gneiss Glass",
            text: "Mmmmm...cake! You like geology now!"    
        }]
    }
    
    @post_shirley = {
        username: "Shirley Surfer",
        avatar_url: "http://thenorthwoodsofwisconsin.com/images/icons/bear.png",
        photo_url: "http://68.media.tumblr.com/tumblr_lenx0iIIgG1qbh26io1_1280.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Shirley Surfer",
            text: "Mmmmm...cake! You like geology now!"    
        }]
    }
    
    # [@post_fred, @post_gneiss, @post_shirley].to_s

    @posts = [@post_fred, @post_gneiss, @post_shirley]

    erb(:index)

end