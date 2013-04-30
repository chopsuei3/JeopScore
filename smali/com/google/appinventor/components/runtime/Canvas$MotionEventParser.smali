.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field public static final TAP_THRESHOLD:I = 0x1e

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 154
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    .line 189
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 190
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 193
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 194
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 198
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 200
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v14

    .line 204
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v12

    .line 210
    .local v12, height:I
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v15, v4

    .line 211
    .local v15, x:F
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v16, v0

    .line 215
    .local v16, y:F
    new-instance v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    const/4 v4, 0x0

    float-to-int v5, v15

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v3, v4

    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    const/16 v7, 0xc

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x1

    sub-int v7, v14, v7

    float-to-int v8, v15

    add-int/lit8 v8, v8, 0xc

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    sub-int v9, v12, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move v10, v0

    add-int/lit8 v10, v10, 0xc

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    invoke-direct/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 221
    .local v2, rect:Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 224
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 225
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 226
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 227
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 228
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 229
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 231
    .local v3, sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_1

    .line 236
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    goto :goto_0

    .line 241
    .end local v13           #i$:Ljava/util/Iterator;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    .line 242
    :cond_3
    const-string v4, "Canvas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    move v4, v0

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    sub-float v4, v15, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41f0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v4, v0

    sub-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41f0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 252
    :cond_5
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 253
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 258
    .restart local v3       #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_7
    const/4 v11, 0x0

    .line 267
    .local v11, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 268
    .restart local v3       #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v7, v0

    move v8, v15

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    .line 270
    const/4 v11, 0x1

    goto :goto_3

    .line 275
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v8, v0

    move v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v11}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 276
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 277
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 284
    .end local v11           #handled:Z
    .end local v13           #i$:Ljava/util/Iterator;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    move v4, v0

    if-nez v4, :cond_d

    .line 286
    const/4 v11, 0x0

    .line 287
    .restart local v11       #handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 288
    .restart local v3       #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 291
    const/4 v11, 0x1

    goto :goto_4

    .line 295
    .end local v3           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v6, v0

    invoke-virtual {v4, v5, v6, v11}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    .line 308
    .end local v11           #handled:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 311
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 312
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 313
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 314
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 315
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 298
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 299
    .restart local v3       #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_5

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
