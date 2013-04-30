.class final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasView"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private completeCache:Landroid/graphics/Bitmap;

.field private scaledBackgroundBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 346
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 347
    const/16 v0, 0x20

    const/16 v1, 0x30

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 350
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 351
    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V

    return-void
.end method

.method private buildCache()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 359
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->destroyDrawingCache()V

    .line 361
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 364
    .local v1, cache:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v3

    .line 366
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v2

    .line 367
    .local v2, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    .line 372
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_0
    return-object v1
.end method

.method private clearDrawingLayer()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 529
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 530
    return-void
.end method

.method private drawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 4
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "angle"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 550
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    neg-float v1, p4

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 552
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 554
    return-void
.end method

.method private getBackgroundPixelColor(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const v6, 0xffffff

    .line 559
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    move v2, v6

    .line 594
    :goto_0
    return v2

    .line 567
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 568
    .local v0, color:I
    if-eqz v0, :cond_2

    move v2, v0

    .line 569
    goto :goto_0

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 575
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 581
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    move v2, v0

    .line 582
    goto :goto_0

    .line 586
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 587
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v6

    .line 589
    goto :goto_0

    .line 590
    .end local v0           #color:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 592
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Canvas"

    const-string v3, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 594
    goto :goto_0
.end method

.method private getPixelColor(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const v7, 0xffffff

    .line 600
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p2, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt p2, v4, :cond_1

    :cond_0
    move v4, v7

    .line 634
    :goto_0
    return v4

    .line 606
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, anySpritesVisible:Z
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 610
    .local v3, sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    const/4 v0, 0x1

    .line 615
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_3
    if-nez v0, :cond_4

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v4

    goto :goto_0

    .line 624
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    .line 629
    .end local v0           #anySpritesVisible:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 630
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 632
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Canvas"

    const-string v5, "Returning COLOR_NONE (exception) from getPixelColor."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 634
    goto :goto_0
.end method

.method private getSize(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "preferredSize"

    .prologue
    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 463
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 465
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 467
    move v0, v2

    .line 477
    .local v0, result:I
    :cond_0
    :goto_0
    return v0

    .line 470
    .end local v0           #result:I
    :cond_1
    move v0, p2

    .line 471
    .restart local v0       #result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 473
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas0"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 377
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    .line 380
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 384
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 388
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 389
    .local v1, sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 391
    .end local v1           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v3, 0x1

    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$102(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    .line 392
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 447
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 451
    .local v2, preferredWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 456
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, preferredHeight:I
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v3

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    .line 458
    return-void

    .line 453
    .end local v1           #preferredHeight:I
    .end local v2           #preferredWidth:I
    :cond_0
    const/16 v2, 0x20

    .line 454
    .restart local v2       #preferredWidth:I
    const/16 v1, 0x30

    .restart local v1       #preferredHeight:I
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 396
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 397
    .local v3, oldBitmapWidth:I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 398
    .local v2, oldBitmapHeight:I
    if-ne p1, v3, :cond_0

    if-eq p2, v2, :cond_1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 411
    .local v1, oldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 412
    .local v4, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 418
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 439
    :goto_0
    iput-object v10, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 441
    .end local v1           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 423
    .restart local v1       #oldBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 427
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 430
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 431
    .local v5, src:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-direct {v0, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 432
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v1, v5, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$200(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    .line 489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$300(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->access$502(Lcom/google/appinventor/components/runtime/Canvas;I)I

    .line 540
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 541
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 545
    return-void
.end method

.method setBackgroundImage(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 502
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_2

    const-string v2, ""

    :goto_0
    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$402(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 504
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 506
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    invoke-super {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 524
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 525
    return-void

    :cond_2
    move-object v2, p1

    .line 502
    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "Canvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
