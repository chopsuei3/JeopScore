.class Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;
.super Landroid/content/BroadcastReceiver;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;->getResultCode()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Texting;->access$100(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Texting;->access$600(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    monitor-exit p0

    return-void

    .line 873
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 874
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in onReceive for msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
