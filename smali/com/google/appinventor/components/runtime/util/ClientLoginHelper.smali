.class public Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;
.super Ljava/lang/Object;
.source "ClientLoginHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "GoogleLogin auth="

.field private static final LOG_TAG:Ljava/lang/String; = "ClientLoginHelper"


# instance fields
.field private accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private authToken:Ljava/lang/String;

.field private client:Lorg/apache/http/client/HttpClient;

.field private initialized:Z

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter "activity"
    .parameter "service"
    .parameter "prompt"
    .parameter "client"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 59
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->service:Ljava/lang/String;

    .line 60
    if-nez p4, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    .line 62
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-direct {v0, p1, p2, p3, p2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    .line 64
    return-void

    :cond_0
    move-object v0, p4

    .line 60
    goto :goto_0
.end method

.method private static addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .locals 3
    .parameter "request"
    .parameter "token"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v0, "ClientLoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding auth token token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLogin auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    if-nez v0, :cond_1

    .line 72
    const-string v0, "ClientLoginHelper"

    const-string v1, "initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t initialize login helper from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 79
    :cond_1
    return-void
.end method

.method private isUiThread()Z
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static removeGoogleAuthHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    .line 128
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 129
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GoogleLogin auth="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const-string v4, "ClientLoginHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing header:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {p0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 128
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1           #header:Lorg/apache/http/Header;
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialize()V

    .line 94
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 96
    .local v0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 97
    const-string v1, "ClientLoginHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->removeGoogleAuthHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 101
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 102
    const-string v1, "ClientLoginHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public forgetAccountName()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->forgetAccountName()V

    .line 118
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->findAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 143
    .local v1, account:Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->service:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 146
    .local v8, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v0, "ClientLoginHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have account, auth token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 150
    .local v9, result:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 151
    .end local v9           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 152
    .local v7, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 159
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    .end local v8           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    const-string v2, "Can\'t get valid authentication token"

    invoke-direct {v0, v2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    .restart local v8       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 154
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 156
    .local v7, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v7}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0
.end method
