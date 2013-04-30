.class public abstract Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "AndroidViewComponent.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private row:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x3

    .line 40
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 29
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 30
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 32
    iput v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 33
    iput v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 42
    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .parameter "column"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 165
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 166
    return-void
.end method

.method public CopyHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .parameter "sourceComponent"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 145
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 146
    return-void
.end method

.method public CopyWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .parameter "sourceComponent"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 108
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 109
    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .parameter "height"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 131
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 132
    return-void
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .parameter "row"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 185
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 186
    return-void
.end method

.method public Visible(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "visibility"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 1
    .parameter "width"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 94
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 95
    return-void
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method
