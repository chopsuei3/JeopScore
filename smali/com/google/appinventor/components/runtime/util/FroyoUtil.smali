.class public Lcom/google/appinventor/components/runtime/util/FroyoUtil;
.super Ljava/lang/Object;
.source "FroyoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getRotation(Landroid/view/Display;)I
    .locals 1
    .parameter "display"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method
