.class Lcom/google/appinventor/components/runtime/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$myConsumerKey:Ljava/lang/String;

.field final synthetic val$myConsumerSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 239
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    #calls: Lcom/google/appinventor/components/runtime/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Twitter;->access$000(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/Twitter$1$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :goto_0
    return-void

    .line 251
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v4

    const-string v5, "appinventor://twitter"

    invoke-interface {v4, v5}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    .line 253
    .local v3, newRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-virtual {v3}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, authURL:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #setter for: Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$302(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v1, browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$400(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/Twitter;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$400(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$600(Lcom/google/appinventor/components/runtime/Twitter;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v0           #authURL:Ljava/lang/String;
    .end local v1           #browserIntent:Landroid/content/Intent;
    .end local v3           #newRequestToken:Ltwitter4j/auth/RequestToken;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 263
    .local v2, e:Ltwitter4j/TwitterException;
    const-string v4, "Twitter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 265
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v6, "Authorize"

    const/16 v7, 0x12f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    goto/16 :goto_0
.end method
