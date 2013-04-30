.class public Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.super Ljava/lang/Object;
.source "AlignmentUtil.java"


# instance fields
.field viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V
    .locals 0
    .parameter "viewLayout"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 22
    return-void
.end method


# virtual methods
.method public setHorizontalAlignment(I)V
    .locals 3
    .parameter "alignment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setHorizontalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 43
    :goto_0
    return-void

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVerticalAlignment(I)V
    .locals 3
    .parameter "alignment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setVerticalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 64
    :goto_0
    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
