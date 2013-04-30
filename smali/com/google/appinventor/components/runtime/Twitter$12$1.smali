.class Lcom/google/appinventor/components/runtime/Twitter$12$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$12;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 813
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 814
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->tweets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Tweet;

    .line 815
    .local v1, tweet:Ltwitter4j/Tweet;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ltwitter4j/Tweet;->getFromUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ltwitter4j/Tweet;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    .end local v1           #tweet:Ltwitter4j/Tweet;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Twitter;->SearchSuccessful(Ljava/util/List;)V

    .line 818
    return-void
.end method
