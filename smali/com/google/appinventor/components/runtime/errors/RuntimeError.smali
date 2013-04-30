.class public abstract Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.super Ljava/lang/RuntimeException;
.source "RuntimeError.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static convertToRuntimeError(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/errors/RuntimeError;
    .locals 1
    .parameter "throwable"

    .prologue
    .line 40
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    .end local p0
    move-object v0, p0

    .line 52
    :goto_0
    return-object v0

    .line 45
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;-><init>()V

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>()V

    goto :goto_0

    .line 51
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    .line 52
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;-><init>()V

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
