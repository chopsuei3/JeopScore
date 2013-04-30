.class Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
.super Ljava/lang/Object;
.source "CsvUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CsvParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

.field private final buf:[C

.field private cellLength:I

.field private delimitedCellLength:I

.field private final in:Ljava/io/Reader;

.field private lastException:Ljava/lang/Exception;

.field private limit:I

.field private opened:Z

.field private pos:I

.field private previouslyRead:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "\"\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    const/16 v0, 0x2800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    .line 129
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 137
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    .line 149
    return-void
.end method

.method private checkedIndex(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 298
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    goto :goto_0
.end method

.method private compact(I)I
    .locals 6
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 211
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 212
    .local v0, oldPos:I
    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 213
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int v1, v2, v0

    .line 214
    .local v1, toMove:I
    if-lez v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    .line 218
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 219
    sub-int v2, p1, v0

    return v2
.end method

.method private fill()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 226
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int v2, v3, v4

    .line 227
    .local v2, toFill:I
    :goto_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 230
    .local v1, n:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1           #n:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 237
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 238
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #n:I
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    sub-int/2addr v2, v1

    goto :goto_0

    .line 241
    .end local v1           #n:I
    :cond_1
    return-void
.end method

.method private findDelimOrEnd(I)Z
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 266
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v1, :cond_2

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 283
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 285
    const/4 v1, 0x0

    .line 289
    :goto_1
    return v1

    .line 275
    :sswitch_0
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 276
    .local v0, j:I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v1

    :goto_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 277
    goto :goto_1

    :cond_1
    move v1, v0

    .line 276
    goto :goto_2

    .line 280
    .end local v0           #j:I
    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 281
    goto :goto_1

    .line 266
    :sswitch_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 288
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 289
    goto :goto_1

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_2
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private findUnescapedEndQuote(I)Z
    .locals 2
    .parameter "i"

    .prologue
    const/16 v1, 0x22

    .line 248
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_3

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    if-ne v0, v1, :cond_2

    .line 250
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result p1

    .line 251
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_2

    .line 252
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 253
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findDelimOrEnd(I)Z

    move-result v0

    .line 258
    :goto_1
    return v0

    .line 248
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 257
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error. unclosed quoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 258
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findUnquotedCellEnd(I)Z
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 302
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v1, :cond_2

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 302
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 306
    :sswitch_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 307
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 322
    :goto_1
    return v1

    .line 312
    :sswitch_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 313
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 314
    .local v0, j:I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v1

    :goto_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 315
    goto :goto_1

    :cond_1
    move v1, v0

    .line 314
    goto :goto_2

    .line 317
    .end local v0           #j:I
    :sswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Syntax Error: quote in unquoted cell"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 318
    const/4 v1, 0x0

    goto :goto_1

    .line 321
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v1, v3

    .line 322
    goto :goto_1

    .line 303
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private indexAfterCompactionAndFilling(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    if-lez v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->compact(I)I

    move-result p1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 203
    return p1
.end method

.method private lookingAtCell()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnescapedEndQuote(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnquotedCellEnd(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCharPosition()J
    .locals 4

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 166
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 170
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    .line 177
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v8

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_4

    move v3, v8

    .line 183
    .local v3, trailingComma:Z
    :goto_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 184
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 185
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v4, v5, :cond_5

    :cond_1
    move v1, v8

    .line 186
    .local v1, haveMoreData:Z
    :goto_2
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    :cond_2
    return-object v2

    .line 179
    .end local v1           #haveMoreData:Z
    .end local v3           #trailingComma:Z
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-direct {v0, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 180
    .local v0, cell:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #cell:Ljava/lang/String;
    :cond_4
    move v3, v9

    .line 182
    goto :goto_1

    .restart local v3       #trailingComma:Z
    :cond_5
    move v1, v9

    .line 185
    goto :goto_2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)V
    .locals 6
    .parameter "charPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    const/4 v3, 0x0

    long-to-int v4, p1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 154
    .local v0, n:I
    if-gez v0, :cond_1

    .line 160
    .end local v0           #n:I
    :cond_0
    return-void

    .line 157
    .restart local v0       #n:I
    :cond_1
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 158
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 159
    goto :goto_0
.end method

.method public throwAnyProblem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    throw v0

    .line 333
    :cond_0
    return-void
.end method
