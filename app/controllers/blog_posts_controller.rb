class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    id = params[:id]
    @blog_post = BlogPost.find(id)
  end

  def new

  end

  def create
    title = params[:title]
    content = params[:content]
    blog_post = BlogPost.create(title: title, content: content)

    redirect_to("/blog_posts/#{blog_post.id}")
  end

  def edit
    id = params[:id]
    @blog_post = BlogPost.find(id)

  end

  def update
    blog_post = BlogPost.find(params[:id])
    blog_post.update(
                    title: params[:title],
                    content: params[:content]
                    )
    redirect_to("/blog_posts/#{blog_post.id}")
  end

  def destroy
     blog_post = BlogPost.find(params[:id])
     blog_post.destroy

     redirect_to("/blog_posts")

  end
end
