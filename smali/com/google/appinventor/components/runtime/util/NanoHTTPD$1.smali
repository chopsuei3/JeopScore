.class Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$000(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    return-void
.end method
