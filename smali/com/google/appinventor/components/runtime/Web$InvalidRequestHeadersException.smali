.class Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
.super Ljava/lang/Exception;
.source "Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidRequestHeadersException"
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    .line 85
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    .line 86
    return-void
.end method
