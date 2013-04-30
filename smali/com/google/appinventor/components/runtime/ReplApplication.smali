.class public Lcom/google/appinventor/components/runtime/ReplApplication;
.super Landroid/app/Application;
.source "ReplApplication.java"


# static fields
.field private static theInstance:Lcom/google/appinventor/components/runtime/ReplApplication;


# instance fields
.field private active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->theInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    return-void
.end method

.method public static reportError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 51
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->theInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->theInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->sendBugSenseException(Ljava/lang/Exception;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    invoke-static {}, Lcom/google/appinventor/common/version/GitBuildId;->getBugsenseApiKey()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, apikey:Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->setupBugSense(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplApplication;->theInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    .line 44
    const-string v1, "ReplApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bugsense Active APIKEY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v1, "ReplApplication"

    const-string v2, "Bugsense NOT ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
