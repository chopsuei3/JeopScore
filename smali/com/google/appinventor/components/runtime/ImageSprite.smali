.class public Lcom/google/appinventor/components/runtime/ImageSprite;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "ImageSprite.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>.</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite\'s <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite\'s unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> "
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private cachedRotationHeading:D

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private heightHint:I

.field private mat:Landroid/graphics/Matrix;

.field private picturePath:Ljava/lang/String;

.field private rotatedBitmap:Landroid/graphics/Bitmap;

.field private rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private rotates:Z

.field private rotationCached:Z

.field private scaledBitmap:Landroid/graphics/Bitmap;

.field private unrotatedBitmap:Landroid/graphics/Bitmap;

.field private widthHint:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 57
    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotationCached:Z

    .line 82
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 192
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    goto :goto_0
.end method

.method public Height(I)V
    .locals 0
    .parameter "height"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 202
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 204
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The picture that determines the sprite\'s appearence"
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    .line 183
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 184
    return-void

    :cond_0
    move-object v1, p1

    .line 169
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "ImageSprite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 181
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_1
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public Rotates(Z)V
    .locals 0
    .parameter "rotates"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 249
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 250
    return-void
.end method

.method public Rotates()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the sprite image rotates to match the sprite\'s heading. If false, the sprite image does not rotate when the sprite changes heading. The sprite rotates around its centerpoint."
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 0
    .parameter "width"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 219
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 220
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 221
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->visible:Z

    if-eqz v0, :cond_0

    .line 86
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v9, v2

    .line 87
    .local v9, xinit:I
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v10, v2

    .line 88
    .local v10, yinit:I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v8

    .line 89
    .local v8, w:I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v7

    .line 92
    .local v7, h:I
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    add-int v1, v9, v8

    add-int v2, v10, v7

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    .end local v7           #h:I
    .end local v8           #w:I
    .end local v9           #xinit:I
    .end local v10           #yinit:I
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v7       #h:I
    .restart local v8       #w:I
    .restart local v9       #xinit:I
    .restart local v10       #yinit:I
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotationCached:Z

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->cachedRotationHeading:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    div-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v7, v0, :cond_5

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v8, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->scaledBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->mat:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->cachedRotationHeading:D

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    div-int/lit8 v1, v8, 0x2

    add-int/2addr v1, v9

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v10

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v9

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v10

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotatedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->unrotatedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->scaledBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
