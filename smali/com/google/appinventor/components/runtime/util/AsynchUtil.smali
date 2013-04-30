.class public Lcom/google/appinventor/components/runtime/util/AsynchUtil;
.super Ljava/lang/Object;
.source "AsynchUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "androidUIHandler"
    .parameter "call"
    .parameter "callback"

    .prologue
    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 48
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    return-void
.end method
