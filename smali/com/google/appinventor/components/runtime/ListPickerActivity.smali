.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Landroid/app/ListActivity;
.source "ListPickerActivity.java"


# instance fields
.field private closeAnim:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, items:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, myIntent:Landroid/content/Intent;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 39
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 46
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 54
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 56
    .local v0, handled:Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    move v1, v0

    .line 59
    .end local v0           #handled:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, resultIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, selected:Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 70
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 73
    return-void
.end method
