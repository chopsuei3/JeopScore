.class public Lcom/google/appinventor/components/runtime/util/EclairUtil;
.super Ljava/lang/Object;
.source "EclairUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static overridePendingTransitions(Landroid/app/Activity;II)V
    .locals 0
    .parameter "activity"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 32
    return-void
.end method

.method public static sendBugSenseException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public static setupBugSense(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "api_key"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method
