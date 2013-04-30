.class public final Lcom/google/appinventor/components/runtime/util/TimerInternal;
.super Ljava/lang/Object;
.source "TimerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lcom/google/appinventor/components/runtime/AlarmHandler;

.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V
    .locals 1
    .parameter "component"
    .parameter "enabled"
    .parameter "interval"

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V
    .locals 2
    .parameter "component"
    .parameter "enabled"
    .parameter "interval"
    .parameter "handler"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    .line 59
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 60
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 61
    if-eqz p2, :cond_0

    .line 62
    int-to-long v0, p3

    invoke-virtual {p4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 110
    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    return v0
.end method

.method public Interval()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    return v0
.end method

.method public Interval(I)V
    .locals 3
    .parameter "interval"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 82
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/AlarmHandler;->alarm()V

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_0
    return-void
.end method
