.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 188
    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 172
    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 56
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 57
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 58
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 66
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 73
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 60
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 63
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 71
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 148
    move-object v0, v1

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v0

    .line 149
    .local v2, tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 157
    iput p1, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 164
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 151
    .restart local v2       #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 162
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 102
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 103
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 104
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 114
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 122
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 106
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 107
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 110
    :pswitch_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 120
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 30
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 31
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 32
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 42
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 50
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 34
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 35
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 38
    :pswitch_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 39
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 48
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 127
    move-object v0, v1

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v0

    .line 128
    .local v2, tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 136
    iput p1, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 143
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 130
    .restart local v2       #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 133
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 141
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 80
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 81
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 89
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 83
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 86
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 94
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 183
    return-void
.end method
