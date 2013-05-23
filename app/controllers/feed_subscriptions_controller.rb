class FeedSubscriptionsController < ApplicationController
  # GET /feed_subscriptions
  # GET /feed_subscriptions.json
  def index
    @feed_subscriptions = FeedSubscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feed_subscriptions }
    end
  end

  # GET /feed_subscriptions/1
  # GET /feed_subscriptions/1.json
  def show
    @feed_subscription = FeedSubscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed_subscription }
    end
  end

  # GET /feed_subscriptions/new
  # GET /feed_subscriptions/new.json
  def new
    @feed_subscription = FeedSubscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feed_subscription }
    end
  end

  # GET /feed_subscriptions/1/edit
  def edit
    @feed_subscription = FeedSubscription.find(params[:id])
  end

  # POST /feed_subscriptions
  # POST /feed_subscriptions.json
  def create
    @feed_subscription = FeedSubscription.create_from_button(params[:user_id], params[:feed_id])
    x = Feed.find(params[:feed_id])
    respond_to do |format|
        format.html { redirect_to "/feeds/#{x.id}" }
        format.json { render json: @feed_subscription, status: :created, location: @feed_subscription }
    end
  end

  # PUT /feed_subscriptions/1
  # PUT /feed_subscriptions/1.json
  def update
    @feed_subscription = FeedSubscription.find(params[:id])

    respond_to do |format|
      if @feed_subscription.update_attributes(params[:feed_subscription])
        format.html { redirect_to @feed_subscription, notice: 'Feed subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_subscriptions/1
  # DELETE /feed_subscriptions/1.json
  def destroy
    @feed_subscription = FeedSubscription.find(params[:id])
    @feed_subscription.destroy

    respond_to do |format|
      format.html { redirect_to feed_subscriptions_url }
      format.json { head :no_content }
    end
  end
end