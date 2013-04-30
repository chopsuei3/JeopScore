.class Lcom/google/appinventor/components/runtime/Twitter$11$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$11;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$11;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 751
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 752
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$11;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Status;

    .line 753
    .local v1, message:Ltwitter4j/Status;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v2, status:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-interface {v1}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    .end local v1           #message:Ltwitter4j/Status;
    .end local v2           #status:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$11$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$11;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Twitter;->FriendTimelineReceived(Ljava/util/List;)V

    .line 759
    return-void
.end method
