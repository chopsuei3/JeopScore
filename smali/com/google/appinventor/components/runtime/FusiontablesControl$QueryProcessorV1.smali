.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;
.super Landroid/os/AsyncTask;
.source "FusiontablesControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProcessorV1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryProcessorV1"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 628
    const-string v0, "QueryProcessorV1"

    const-string v1, "Creating AsyncFusiontablesQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->activity:Landroid/app/Activity;

    .line 630
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->dialog:Landroid/app/ProgressDialog;

    .line 631
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 618
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 644
    const-string v4, "QueryProcessorV1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting doInBackground "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    aget-object v2, p1, v7

    .line 646
    .local v2, query:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v5, ""

    #setter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$402(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    new-instance v1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 650
    .local v1, oauthHelper:Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "create table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #calls: Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$600(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/appinventor/components/runtime/FusiontablesControl;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$700(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$402(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    .line 676
    :goto_0
    return-object v4

    .line 663
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v4, v2, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    .line 666
    .local v3, response:Lcom/google/api/client/http/HttpResponse;
    if-eqz v3, :cond_1

    .line 667
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$402(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 668
    const-string v4, "QueryProcessorV1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 670
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$402(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    const-string v4, "QueryProcessorV1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    #getter for: Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 676
    .end local v3           #response:Lcom/google/api/client/http/HttpResponse;
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 618
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 685
    const-string v0, "fusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-nez p1, :cond_0

    .line 687
    const-string p1, "Error"

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Fusiontables..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 637
    return-void
.end method
