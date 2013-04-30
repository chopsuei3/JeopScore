.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_HEADING:I = 0x0

.field private static final DEFAULT_INTERVAL:I = 0x64

.field private static final DEFAULT_SPEED:F = 0.0f

.field private static final DEFAULT_VISIBLE:Z = true

.field private static final DEFAULT_Z:D = 1.0

.field private static final LOG_TAG:Ljava/lang/String; = "Sprite"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field private final registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F

.field private final timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected userHeading:D

.field protected visible:Z

.field protected xLeft:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 5
    .parameter "container"
    .parameter "handler"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 64
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 100
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 103
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sprite constructor called with container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Canvas;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 107
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 110
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 113
    new-instance v1, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-direct {v1, p0, v3, v4, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 116
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 121
    const-wide/high16 v1, 0x3ff0

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 123
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 124
    return-void
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 12
    .parameter "sprite1"
    .parameter "sprite2"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0

    const/4 v8, 0x1

    .line 840
    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 841
    .local v0, rect1:Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1, v8}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 842
    .local v1, rect2:Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v11

    .line 857
    :goto_0
    return v6

    .line 850
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, x:D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_3

    .line 851
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, y:D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    .line 852
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 853
    goto :goto_0

    .line 851
    :cond_1
    add-double/2addr v4, v9

    goto :goto_2

    .line 850
    :cond_2
    add-double/2addr v2, v9

    goto :goto_1

    .end local v4           #y:D
    :cond_3
    move v6, v11

    .line 857
    goto :goto_0
.end method

.method private final overEastEdge(I)Z
    .locals 4
    .parameter "canvasWidth"

    .prologue
    .line 755
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overNorthEdge()Z
    .locals 4

    .prologue
    .line 759
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overSouthEdge(I)Z
    .locals 4
    .parameter "canvasHeight"

    .prologue
    .line 763
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overWestEdge()Z
    .locals 4

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Bounce(I)V
    .locals 14
    .parameter "edge"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Makes this sprite bounce, as if off a wall.  For normal bouncing, the edge argument should be the one returned by EdgeReached.</p>"
    .end annotation

    .prologue
    const-wide v12, 0x4076800000000000L

    const-wide/16 v10, 0x0

    const-wide v8, 0x4070e00000000000L

    const-wide v6, 0x4056800000000000L

    const-wide v4, 0x4066800000000000L

    .line 533
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 536
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    rem-double v0, v2, v12

    .line 539
    .local v0, normalizedAngle:D
    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    .line 540
    add-double/2addr v0, v12

    .line 545
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_2

    cmpl-double v2, v0, v8

    if-gtz v2, :cond_2

    :cond_1
    const/4 v2, -0x3

    if-ne p1, v2, :cond_4

    cmpl-double v2, v0, v6

    if-lez v2, :cond_4

    cmpg-double v2, v0, v8

    if-gez v2, :cond_4

    .line 549
    :cond_2
    sub-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 563
    :cond_3
    :goto_0
    return-void

    .line 550
    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    cmpl-double v2, v0, v10

    if-lez v2, :cond_5

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_6

    :cond_5
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    .line 553
    :cond_6
    sub-double v2, v12, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 554
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v10

    if-lez v2, :cond_8

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_b

    :cond_8
    const/4 v2, -0x4

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v6

    if-lez v2, :cond_9

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_b

    :cond_9
    const/4 v2, -0x2

    if-ne p1, v2, :cond_a

    cmpl-double v2, v0, v4

    if-lez v2, :cond_a

    cmpg-double v2, v0, v8

    if-ltz v2, :cond_b

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 561
    :cond_b
    add-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .parameter "other"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "CollidedWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .parameter "other"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dragged(FFFFFF)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "prevX"
    .parameter "prevY"
    .parameter "currentX"
    .parameter "currentY"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 412
    const-string v0, "Dragged"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public EdgeReached(I)V
    .locals 4
    .parameter "edge"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 422
    if-eqz p1, :cond_0

    const/4 v0, -0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Sprite.EdgeReached()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    const-string v0, "EdgeReached"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 170
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Controls whether the sprite moves when its speed is non-zero."
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "speed"
    .parameter "heading"
    .parameter "xvel"
    .parameter "yvel"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 481
    const-string v0, "Flung"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "<p>Returns the sprite\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen.</p>"
    .end annotation

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 2
    .parameter "userHeading"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 187
    neg-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 188
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 189
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 190
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 193
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 142
    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>The interval in milliseconds at which the sprite\'s position is updated.  For example, if the interval is 50 and the speed is 10, then the sprite will move 10 pixels every 50 milliseconds.</p>"
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .parameter "interval"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 233
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 591
    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Moves the sprite so that its left top corner is at the specfied x and y coordinates.</p>"
    .end annotation

    .prologue
    .line 603
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 604
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 605
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 606
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .parameter "other"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a pair of sprites are no longer colliding."
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed but not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 449
    const-string v0, "NoLongerCollidingWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public PointInDirection(DD)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Turns the sprite to point towards the point with coordinates as (x, y).</p>"
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    sub-double v0, p3, v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 640
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .parameter "target"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Turns the sprite to point towards a designated target sprite. The new heading will be parallel to the line joining the centerpoints of the two sprites.</p>"
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 623
    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "<p>The speed at which the sprite moves.  The sprite moves this many pixels every interval.</p>"
    .end annotation

    .prologue
    .line 260
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .parameter "speed"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 247
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 248
    return-void
.end method

.method public TouchDown(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 507
    const-string v0, "TouchDown"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 494
    const-string v0, "TouchUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public Touched(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 461
    const-string v0, "Touched"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .parameter "visible"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 287
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 288
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>True if the sprite is visible.</p>"
    .end annotation

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "<p>The horizontal coordinate of the left edge of the sprite, increasing as the sprite moves to the right.</p>"
    .end annotation

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    return-wide v0
.end method

.method public X(D)V
    .locals 0
    .parameter "x"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 303
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 304
    return-void
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "<p>The vertical coordinate of the top of the sprite, increasing as the sprite moves down.</p>"
    .end annotation

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    return-wide v0
.end method

.method public Y(D)V
    .locals 0
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 311
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 313
    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "<p>How the sprite should be layered relative to other sprits, with higher-numbered layers in front of lower-numbered layers.</p>"
    .end annotation

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 1
    .parameter "layer"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 335
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 337
    return-void
.end method

.method public alarm()V
    .locals 2

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 911
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 913
    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4
    .parameter "qx"
    .parameter "qy"

    .prologue
    .line 895
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 13
    .parameter "border"

    .prologue
    const-wide/high16 v11, 0x3ff0

    .line 825
    new-instance v0, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v1

    int-to-double v3, p1

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v3

    int-to-double v5, p1

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v5, v7

    sub-double/2addr v5, v11

    int-to-double v7, p1

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v7, v9

    sub-double/2addr v7, v11

    int-to-double v9, p1

    add-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge(II)I

    move-result v0

    goto :goto_0
.end method

.method protected hitEdge(II)I
    .locals 6
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v3

    .line 771
    .local v3, west:Z
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    .line 772
    .local v1, north:Z
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v0

    .line 773
    .local v0, east:Z
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v2

    .line 776
    .local v2, south:Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 777
    const/4 v4, 0x0

    .line 810
    :goto_0
    return v4

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 786
    if-eqz v3, :cond_3

    .line 787
    if-eqz v1, :cond_1

    .line 788
    const/4 v4, -0x4

    goto :goto_0

    .line 789
    :cond_1
    if-eqz v2, :cond_2

    .line 790
    const/4 v4, -0x2

    goto :goto_0

    .line 792
    :cond_2
    const/4 v4, -0x3

    goto :goto_0

    .line 796
    :cond_3
    if-eqz v0, :cond_6

    .line 797
    if-eqz v1, :cond_4

    .line 798
    const/4 v4, 0x2

    goto :goto_0

    .line 799
    :cond_4
    if-eqz v2, :cond_5

    .line 800
    const/4 v4, 0x4

    goto :goto_0

    .line 802
    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    .line 806
    :cond_6
    if-eqz v1, :cond_7

    .line 807
    const/4 v4, 0x1

    goto :goto_0

    .line 809
    :cond_7
    if-eqz v2, :cond_8

    .line 810
    const/4 v4, -0x1

    goto :goto_0

    .line 813
    :cond_8
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/AssertionFailure;

    const-string v5, "Unreachable code hit in Sprite.hitEdge()"

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/AssertionFailure;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10
    .parameter "rect"

    .prologue
    const-wide/high16 v8, 0x3ff0

    const/4 v7, 0x0

    .line 868
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 869
    .local v0, rect1:Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 883
    :goto_0
    return v5

    .line 876
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v1

    .local v1, x:D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v5

    cmpg-double v5, v1, v5

    if-gez v5, :cond_3

    .line 877
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v3

    .local v3, y:D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v5

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    .line 878
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 879
    const/4 v5, 0x1

    goto :goto_0

    .line 877
    :cond_1
    add-double/2addr v3, v8

    goto :goto_2

    .line 876
    :cond_2
    add-double/2addr v1, v8

    goto :goto_1

    .end local v3           #y:D
    :cond_3
    move v5, v7

    .line 883
    goto :goto_0
.end method

.method protected final moveIntoBounds(II)V
    .locals 5
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 692
    const/4 v0, 0x0

    .line 698
    .local v0, moved:Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 702
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 703
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 704
    const/4 v0, 0x1

    .line 716
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 720
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 721
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 722
    const/4 v0, 0x1

    .line 733
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 736
    :cond_2
    return-void

    .line 706
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 707
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 708
    const/4 v0, 0x1

    goto :goto_0

    .line 709
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    sub-int v1, p1, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    :cond_5
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 725
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 726
    const/4 v0, 0x1

    goto :goto_1

    .line 727
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    sub-int v1, p2, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 729
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 935
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 927
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "sprite"
    .parameter "eventName"
    .parameter "args"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method protected registerChange()V
    .locals 2

    .prologue
    .line 655
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge()I

    move-result v0

    .line 661
    .local v0, edge:I
    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReached(I)V

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0
.end method

.method protected updateCoordinates()V
    .locals 6

    .prologue
    .line 743
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 744
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 745
    return-void
.end method
