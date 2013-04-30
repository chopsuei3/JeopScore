.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "TextBoxBase.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private fontTypeface:I

.field private hint:Ljava/lang/String;

.field private italic:Z

.field private textAlignment:I

.field private textColor:I

.field protected final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 4
    .parameter "container"
    .parameter "textview"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 69
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 84
    const/16 v0, 0xa0

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    .line 96
    iput v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 98
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    .line 99
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 100
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 101
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
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
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 229
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .parameter "bold"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 260
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .parameter "italic"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 290
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;)F

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
    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 315
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .parameter "typeface"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 349
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 351
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 115
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the input box to provide a hint as to what the user should enter.  This can only be seen if the <code>Text</code> property is empty."
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 379
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 124
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the input box, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .prologue
    .line 152
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .parameter "alignment"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 169
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 171
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .prologue
    .line 420
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 433
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    goto :goto_0
.end method
