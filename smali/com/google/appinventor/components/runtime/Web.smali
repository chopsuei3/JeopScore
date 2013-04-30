.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Web.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET and POST requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;,
        Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private saveResponse:Z

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    .line 153
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/xml"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 197
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 183
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 184
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 186
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 189
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V

    return-void
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .locals 6
    .parameter "functionName"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 961
    :try_start_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_1

    .line 968
    :goto_0
    return-object v1

    .line 962
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 963
    .local v0, e:Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x455

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 968
    .end local v0           #e:Ljava/net/MalformedURLException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 965
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 966
    .local v0, e:Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"
    .parameter "responseType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 895
    :goto_0
    return-object v2

    .line 887
    :cond_0
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 888
    .local v1, indexOfSemicolon:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 889
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 891
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 892
    .local v0, extension:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 893
    const-string v0, "tmp"

    .line 895
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "jsonText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 621
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonText is not a legal JSON value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .parameter "connection"

    .prologue
    .line 870
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 873
    :goto_0
    return-object v1

    .line 871
    :catch_0
    move-exception v0

    .line 873
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 817
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, encoding:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 819
    const-string v2, "UTF-8"

    .line 821
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 823
    .local v4, reader:Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 824
    .local v1, contentLength:I
    if-eq v1, v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v6

    .line 827
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_0
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 829
    .local v0, buf:[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, read:I
    if-eq v3, v7, :cond_2

    .line 830
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 834
    .end local v0           #buf:[C
    .end local v1           #contentLength:I
    .end local v3           #read:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 824
    .restart local v1       #contentLength:I
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    goto :goto_0

    .line 832
    .restart local v0       #buf:[C
    .restart local v3       #read:I
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 834
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    return-object v6
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2
    .parameter "connection"

    .prologue
    .line 798
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, responseType:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "webProps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 728
    .local v0, connection:Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 729
    .local v2, header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 730
    .local v5, name:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 731
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 736
    .end local v2           #header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 737
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 738
    .local v1, cookie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 739
    .restart local v5       #name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 740
    .restart local v6       #value:Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 745
    .end local v1           #cookie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    .locals 16
    .parameter "webProps"
    .parameter "postData"
    .parameter "postFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)Ljava/net/HttpURLConnection;

    move-result-object v15

    .line 680
    .local v15, connection:Ljava/net/HttpURLConnection;
    if-eqz v15, :cond_1

    .line 682
    if-eqz p2, :cond_2

    .line 683
    :try_start_0
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->writePostData(Ljava/net/HttpURLConnection;[B)V

    .line 689
    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 690
    .local v6, responseCode:I
    invoke-static {v15}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, responseType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    move v3, v0

    if-eqz v3, :cond_3

    .line 694
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v15, v3, v7}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 698
    .local v8, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    move-object v9, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    .end local v8           #path:Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 720
    .end local v6           #responseCode:I
    .end local v7           #responseType:Ljava/lang/String;
    :cond_1
    return-void

    .line 684
    :cond_2
    if-eqz p3, :cond_0

    .line 685
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->writePostFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v3

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3

    .line 705
    .restart local v6       #responseCode:I
    .restart local v7       #responseType:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v15}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v14

    .line 708
    .local v14, responseContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    move-object v3, v0

    new-instance v9, Lcom/google/appinventor/components/runtime/Web$5;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v6

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "encoding"
    .parameter "functionName"

    .prologue
    .line 410
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v5

    .line 411
    .local v5, webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v5, :cond_0

    .line 444
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 17
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 906
    .local v9, requestHeadersMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v14

    if-ge v4, v14, :cond_4

    .line 907
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 909
    .local v5, item:Ljava/lang/Object;
    instance-of v14, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v14, :cond_3

    .line 910
    move-object v0, v5

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v11, v0

    .line 911
    .local v11, sublist:Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 913
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, fieldName:Ljava/lang/String;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 918
    .local v3, fieldValues:Ljava/lang/Object;
    move-object v7, v2

    .line 919
    .local v7, key:Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 924
    .local v13, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    instance-of v14, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v14, :cond_0

    .line 926
    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v0

    .line 927
    .local v8, multipleFieldsValues:Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 928
    invoke-virtual {v8, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    .line 929
    .local v12, value:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 933
    .end local v6           #j:I
    .end local v8           #multipleFieldsValues:Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v12           #value:Ljava/lang/Object;
    :cond_0
    move-object v10, v3

    .line 934
    .local v10, singleFieldValue:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    .end local v10           #singleFieldValue:Ljava/lang/Object;
    :cond_1
    invoke-interface {v9, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 940
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v3           #fieldValues:Ljava/lang/Object;
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v14, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v15, 0x457

    add-int/lit8 v16, v4, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v14

    .line 945
    .end local v11           #sublist:Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_3
    new-instance v14, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v15, 0x456

    add-int/lit8 v16, v4, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v14

    .line 949
    .end local v5           #item:Ljava/lang/Object;
    :cond_4
    return-object v9
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 803
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v1, :cond_0

    .line 805
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 806
    .local v0, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .end local v0           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v1

    goto :goto_0

    .line 807
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "connection"
    .parameter "responseFileName"
    .parameter "responseType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    .line 840
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 842
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 844
    .local v2, in:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 848
    .local v3, out:Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 849
    .local v0, b:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 854
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 862
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 852
    :cond_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 856
    .end local v0           #b:I
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 859
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v4
.end method

.method private static writePostData(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .parameter "connection"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 756
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 757
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 759
    .local v0, out:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 760
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 764
    return-void

    .line 762
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw v1
.end method

.method private writePostFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4
    .parameter "connection"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 777
    .local v1, in:Ljava/io/BufferedInputStream;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 778
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 779
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 782
    .local v2, out:Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 783
    .local v0, b:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 788
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 793
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 795
    return-void

    .line 786
    :cond_0
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 790
    .end local v0           #b:I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 793
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v3
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 4
    .parameter "allowCookies"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "AllowCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method public BuildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 7
    .parameter "list"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->buildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$BuildPostDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    :goto_0
    return-object v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "BuildPostData"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 525
    const-string v1, ""

    goto :goto_0
.end method

.method public ClearCookies()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "ClearCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Get()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 337
    const-string v1, "Get"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    .line 338
    .local v0, webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 343
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "responseCode"
    .parameter "responseType"
    .parameter "fileName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 508
    const-string v0, "GotFile"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "responseCode"
    .parameter "responseType"
    .parameter "responseContent"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 493
    const-string v0, "GotText"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "htmlText"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as &amp;amp;, &amp;lt;, &amp;gt;, &amp;apos;, and &amp;quot; are changed to &amp;, &lt;, &gt;, &#39;, and &quot;. Entities such as &amp;#xhhhh, and &amp;#nnnn are changed to the appropriate characters."
    .end annotation

    .prologue
    .line 645
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 649
    :goto_0
    return-object v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "HtmlTextDecode"

    const/16 v3, 0x452

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 649
    const-string v1, ""

    goto :goto_0
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "jsonText"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 603
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 607
    :goto_0
    return-object v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "JsonTextDecode"

    const/16 v3, 0x451

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 607
    const-string v1, ""

    goto :goto_0
.end method

.method public PostFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 460
    const-string v1, "PostFile"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    .line 461
    .local v0, webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 466
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 372
    const-string v0, "UTF-8"

    const-string v1, "PostText"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "encoding"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 390
    const-string v0, "PostTextWithEncoding"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Web;->postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .parameter "list"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 241
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, e:Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "RequestHeaders"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "responseFileName"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public SaveResponse(Z)V
    .locals 0
    .parameter "saveResponse"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    .line 289
    return-void
.end method

.method public SaveResponse()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 573
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 579
    :goto_0
    return-object v1

    .line 574
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 578
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    const-string v1, ""

    goto :goto_0
.end method

.method public Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 217
    return-void
.end method

.method buildPostData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 11
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 541
    .local v1, delimiter:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 542
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 544
    .local v3, item:Ljava/lang/Object;
    instance-of v8, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_1

    .line 545
    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v6, v0

    .line 546
    .local v6, sublist:Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 548
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, "&"

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v4           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;

    const/16 v9, 0x459

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;-><init>(II)V

    throw v8

    .line 557
    .end local v6           #sublist:Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1
    new-instance v8, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;

    const/16 v9, 0x458

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;-><init>(II)V

    throw v8

    .line 561
    .end local v3           #item:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
