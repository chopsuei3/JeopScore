.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Canvas.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;,
        Lcom/google/appinventor/components/runtime/Canvas$CanvasView;,
        Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:F = 2.0f

.field private static final DEFAULT_PAINT_COLOR:I = -0x1000000

.field private static final FLING_INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Canvas"


# instance fields
.field private backgroundColor:I

.field private backgroundImagePath:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private drawn:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

.field private final paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private final sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private textAlignment:I

.field private final view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 641
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    .line 644
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 645
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 647
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 651
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    .line 652
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    .line 654
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 656
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    .line 657
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    .line 658
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 659
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Canvas;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private changePaint(Landroid/graphics/Paint;I)V
    .locals 1
    .parameter "paint"
    .parameter "argb"

    .prologue
    .line 905
    if-nez p2, :cond_0

    .line 907
    const/high16 v0, -0x100

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 913
    :goto_0
    return-void

    .line 908
    :cond_0
    const v0, 0xffffff

    if-ne p2, v0, :cond_1

    .line 909
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 911
    :cond_1
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method private saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "file"
    .parameter "format"
    .parameter "method"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1280
    const/4 v3, 0x0

    .line 1281
    .local v3, success:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1283
    .local v2, fos:Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #calls: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1300(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v0, v4

    .line 1285
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    const/16 v4, 0x64

    :try_start_1
    invoke-virtual {v0, p2, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 1289
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1291
    if-eqz v3, :cond_1

    .line 1292
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1304
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 1283
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1289
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1297
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1298
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x2c3

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1304
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v4, ""

    goto :goto_1

    .line 1294
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x3e9

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1300
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1301
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x2c4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .prologue
    .line 827
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundColor(I)V

    .line 844
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImage(Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #calls: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$700(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    .line 1099
    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "prevX"
    .parameter "prevY"
    .parameter "currentX"
    .parameter "currentY"
    .parameter "draggedSprite"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1084
    const-string v0, "Dragged"

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1086
    return-void
.end method

.method public DrawCircle(IIF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "r"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1125
    return-void
.end method

.method public DrawLine(IIII)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1139
    return-void
.end method

.method public DrawPoint(II)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1111
    return-void
.end method

.method public DrawText(Ljava/lang/String;II)V
    .locals 4
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1155
    return-void
.end method

.method public DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 1
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "angle"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #calls: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$900(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V

    .line 1171
    return-void
.end method

.method public Flung(FFFFFFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "speed"
    .parameter "heading"
    .parameter "xvel"
    .parameter "yvel"
    .parameter "flungSprite"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1061
    const-string v0, "Flung"

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1062
    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 927
    return-void
.end method

.method public GetBackgroundPixelColor(II)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #calls: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I
    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v0

    return v0
.end method

.method public GetPixelColor(II)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #calls: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I
    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v0

    return v0
.end method

.method public LineWidth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public LineWidth(F)V
    .locals 1
    .parameter "width"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 950
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .prologue
    .line 885
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 900
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    .line 901
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->changePaint(Landroid/graphics/Paint;I)V

    .line 902
    return-void
.end method

.method public Save()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1228
    :try_start_0
    const-string v2, "png"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getPictureFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1229
    .local v1, file:Ljava/io/File;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v3, "Save"

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1237
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 1230
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1231
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Save"

    const/16 v4, 0x2c4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1237
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 1233
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1234
    .local v0, e:Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Save"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1252
    const-string v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".jpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1265
    .local v2, format:Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1266
    .local v1, file:Ljava/io/File;
    const-string v3, "SaveAs"

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1274
    .end local v1           #file:Ljava/io/File;
    .end local v2           #format:Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    return-object v3

    .line 1254
    :cond_1
    const-string v3, ".png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1255
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2       #format:Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 1256
    .end local v2           #format:Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1258
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2       #format:Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 1260
    .end local v2           #format:Landroid/graphics/Bitmap$CompressFormat;
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    const/16 v5, 0x2c2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1262
    const-string v3, ""

    goto :goto_1

    .line 1267
    .restart local v2       #format:Landroid/graphics/Bitmap$CompressFormat;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1268
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    const/16 v5, 0x2c4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1274
    .end local v0           #e:Ljava/io/IOException;
    :goto_2
    const-string v3, ""

    goto :goto_1

    .line 1270
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1271
    .local v0, e:Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public SetBackgroundPixelColor(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "color"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1200
    .local v0, pixelPaint:Landroid/graphics/Paint;
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1202
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1203
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 965
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .parameter "alignment"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 982
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    .line 983
    packed-switch p1, :pswitch_data_0

    .line 994
    :goto_0
    return-void

    .line 985
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 988
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 991
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public TouchDown(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1024
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

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1025
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1037
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

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1038
    return-void
.end method

.method public Touched(FFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "touchedSprite"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1011
    const-string v0, "Touched"

    const/4 v1, 0x3

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

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1012
    return-void
.end method

.method addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 5
    .parameter "sprite"

    .prologue
    .line 694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 703
    :goto_1
    return-void

    .line 694
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 723
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 724
    return-void
.end method

.method protected findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .parameter "movedSprite"

    .prologue
    .line 783
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 784
    .local v1, sprite:Lcom/google/appinventor/components/runtime/Sprite;
    if-eq v1, p1, :cond_0

    .line 786
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 788
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 791
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 792
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 803
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 810
    .end local v1           #sprite:Lcom/google/appinventor/components/runtime/Sprite;
    :cond_3
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return v0
.end method

.method registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 761
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 762
    return-void
.end method

.method removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 712
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .parameter "component"
    .parameter "height"

    .prologue
    .line 748
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildHeight() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .parameter "component"
    .parameter "width"

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildWidth() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
