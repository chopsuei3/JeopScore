.class public Lcom/google/appinventor/components/runtime/ListPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ListPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of texts for the user to choose among. The texts can be specified through the Designer or Blocks Editor by setting the <code>ElementsFromString</code> property to their string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor.</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field static final LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

.field static final LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

.field private static final LIST_ACTIVITY_CLASS:Ljava/lang/String;

.field static final LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

.field static final LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;


# instance fields
.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private selection:Ljava/lang/String;

.field private selectionIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/google/appinventor/components/runtime/ListPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".selection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".anim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 62
    return-void
.end method


# virtual methods
.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .parameter "itemList"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, objects:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 150
    aget-object v2, v1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 151
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Items passed to ListPicker must be Strings"

    const-string v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 155
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .parameter "itemstring"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>The selected item.  When directly changed by the programmer, the SelectionIndex property is also changed to the first item in the ListPicker with the given value.  If the value does not appear, SelectionIndex will be set to 0.</p>"
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 97
    :goto_1
    return-void

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    goto :goto_1
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListPicker, SelectionIndex will be set to 0, and Selection will be set to the empty text.</p>"
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 3
    .parameter "index"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 120
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getOpenAnimType()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, openAnim:Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    return-object v0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 218
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 203
    sget-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 208
    :goto_0
    sget-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 209
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPicker;->AfterPicking()V

    .line 211
    :cond_0
    return-void

    .line 206
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    goto :goto_0
.end method
