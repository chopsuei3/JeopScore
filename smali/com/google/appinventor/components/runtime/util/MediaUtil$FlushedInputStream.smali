.class Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const-wide/16 v2, 0x0

    .line 317
    .local v2, totalBytesSkipped:J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 319
    .local v0, bytesSkipped:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->read()I

    move-result v4

    if-gez v4, :cond_1

    .line 328
    .end local v0           #bytesSkipped:J
    :cond_0
    return-wide v2

    .line 323
    .restart local v0       #bytesSkipped:J
    :cond_1
    const-wide/16 v0, 0x1

    .line 326
    :cond_2
    add-long/2addr v2, v0

    .line 327
    goto :goto_0
.end method
