.class public Lcom/google/appinventor/components/runtime/util/WebServiceUtil;
.super Ljava/lang/Object;
.source "WebServiceUtil.java"


# static fields
.field private static final INSTANCE:Lcom/google/appinventor/components/runtime/util/WebServiceUtil; = null

.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceUtil"

.field private static httpClient:Lorg/apache/http/client/HttpClient;

.field private static httpClientSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->INSTANCE:Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClientSynchronizer:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;
    .locals 8

    .prologue
    .line 62
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClientSynchronizer:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    sget-object v4, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_0

    .line 64
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 65
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 66
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 67
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 68
    .local v1, params:Lorg/apache/http/params/BasicHttpParams;
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    const/16 v4, 0x14

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 73
    .local v0, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 75
    .end local v0           #manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v1           #params:Lorg/apache/http/params/BasicHttpParams;
    .end local v2           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v3, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->INSTANCE:Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    return-object v3

    .line 75
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 7
    .parameter "serviceURL"
    .parameter "commandName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    const-string v4, "WebServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Posting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with arguments "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    :cond_0
    const-string v4, "No service url to post command to."

    invoke-interface {p4, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 153
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    if-nez p3, :cond_2

    .line 156
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .restart local p3       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 161
    .local v3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 162
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, httpResponseString:Ljava/lang/String;
    invoke-interface {p4, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    .end local v2           #httpResponseString:Ljava/lang/String;
    .end local v3           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 166
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "WebServiceUtil"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const-string v4, "Failed to encode params for web service call."

    invoke-interface {p4, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 169
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v4, "WebServiceUtil"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const-string v4, "Communication with the web service encountered a protocol exception."

    invoke-interface {p4, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 172
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WebServiceUtil"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const-string v4, "Communication with the web service timed out."

    invoke-interface {p4, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postCommandReturningArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .parameter "serviceURL"
    .parameter "commandName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONArray;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$1;

    invoke-direct {v0, p0, p4}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebServiceUtil;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 104
    .local v0, thisCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 105
    return-void
.end method

.method public postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .parameter "serviceURL"
    .parameter "commandName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;

    invoke-direct {v0, p0, p4}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebServiceUtil;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 132
    .local v0, thisCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 133
    return-void
.end method
