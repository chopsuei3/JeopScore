.class Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;
.super Landroid/os/AsyncTask;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSendMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11
    .parameter "arg0"

    .prologue
    .line 839
    const-string v9, ""

    .line 840
    .local v9, response:Ljava/lang/String;
    const-string v0, "Texting Component"

    const-string v1, "Async sending message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->access$200(Lcom/google/appinventor/components/runtime/Texting;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    const-string v0, "Texting Component"

    const-string v1, "Sending via GV"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v8, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v8}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 849
    .local v8, oauthHelper:Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "grandcentral"

    invoke-virtual {v8, v0, v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, authToken:Ljava/lang/String;
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->access$400(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {v1, v2, v6}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    #setter for: Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->access$402(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->access$400(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->access$400(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    #calls: Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->sendGvSms()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->access$500(Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)Ljava/lang/String;

    move-result-object v9

    .line 857
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent SMS, response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #authToken:Ljava/lang/String;
    .end local v8           #oauthHelper:Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    :goto_0
    move-object v0, v9

    .line 888
    :goto_1
    return-object v0

    .line 859
    .restart local v6       #authToken:Ljava/lang/String;
    .restart local v8       #oauthHelper:Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    :cond_1
    const-string v0, "IO Error: unable to create GvHelper"

    goto :goto_1

    .line 862
    .end local v6           #authToken:Ljava/lang/String;
    .end local v8           #oauthHelper:Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    :cond_2
    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 867
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v10, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;

    invoke-direct {v10, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage$1;-><init>(Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;)V

    .line 882
    .local v10, sendReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->access$700(Lcom/google/appinventor/components/runtime/Texting;)Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Texting;->access$000(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    #getter for: Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Texting;->access$100(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .end local v10           #sendReceiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 886
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 832
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 893
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 894
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Message sent"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    const-string v0, "IO Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$300()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
