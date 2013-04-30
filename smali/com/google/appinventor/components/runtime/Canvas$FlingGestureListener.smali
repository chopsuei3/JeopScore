.class Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 21
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1310
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1311
    .local v19, x:F
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1314
    .local v20, y:F
    const/high16 v4, 0x447a

    div-float v16, p3, v4

    .line 1315
    .local v16, vx:F
    const/high16 v4, 0x447a

    div-float v17, p4, v4

    .line 1317
    .local v17, vy:F
    mul-float v4, v16, v16

    mul-float v5, v17, v17

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v15, v4

    .line 1318
    .local v15, speed:F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide v4, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v12, v4

    .line 1320
    .local v12, heading:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v18

    .line 1321
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v13

    .line 1325
    .local v13, height:I
    new-instance v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    const/4 v4, 0x0

    move/from16 v0, v19

    float-to-int v0, v0

    move v5, v0

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v3, v4

    const/4 v5, 0x0

    move/from16 v0, v20

    float-to-int v0, v0

    move v6, v0

    const/16 v7, 0xc

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x1

    sub-int v7, v18, v7

    move/from16 v0, v19

    float-to-int v0, v0

    move v8, v0

    add-int/lit8 v8, v8, 0xc

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    sub-int v9, v13, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move v10, v0

    add-int/lit8 v10, v10, 0xc

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    invoke-direct/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 1331
    .local v2, rect:Lcom/google/appinventor/components/runtime/util/BoundingBox;
    const/4 v11, 0x0

    .line 1333
    .local v11, spriteHandledFling:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1334
    .local v3, sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v4, v19

    move/from16 v5, v20

    move v6, v15

    move v7, v12

    move/from16 v8, v16

    move/from16 v9, v17

    .line 1336
    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/Sprite;->Flung(FFFFFF)V

    .line 1337
    const/4 v11, 0x1

    goto :goto_0

    .line 1340
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move/from16 v5, v19

    move/from16 v6, v20

    move v7, v15

    move v8, v12

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v4 .. v11}, Lcom/google/appinventor/components/runtime/Canvas;->Flung(FFFFFFZ)V

    .line 1341
    const/4 v4, 0x1

    return v4
.end method
