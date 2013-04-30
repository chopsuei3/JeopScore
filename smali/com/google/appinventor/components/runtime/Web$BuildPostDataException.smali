.class Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;
.super Ljava/lang/Exception;
.source "Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuildPostDataException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "errorNumber"
    .parameter "index"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->errorNumber:I

    .line 108
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->index:I

    .line 109
    return-void
.end method
