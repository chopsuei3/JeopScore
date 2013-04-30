.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
.super Landroid/widget/VideoView;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizableVideoView"
.end annotation


# instance fields
.field public forcedHeight:I

.field public forcedWidth:I

.field private mFoundMediaPlayer:Ljava/lang/Boolean;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 551
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 552
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 537
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 543
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 549
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 553
    return-void
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 0
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 658
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 659
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 661
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 662
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 663
    return-void
.end method

.method public invalidateMediaPlayer(Z)V
    .locals 1
    .parameter "triggerRedraw"

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 674
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 676
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .parameter "specwidth"
    .parameter "specheight"

    .prologue
    .line 566
    const-string v5, "VideoPlayer..onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AI setting dimensions as:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v5, "VideoPlayer..onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimenions from super>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/16 v4, 0xb0

    .line 574
    .local v4, width:I
    const/16 v1, 0x90

    .line 576
    .local v1, height:I
    iget v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    packed-switch v5, :pswitch_data_0

    .line 610
    iget v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 613
    :cond_0
    :goto_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    packed-switch v5, :pswitch_data_1

    .line 642
    iget v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 647
    :cond_1
    :goto_1
    const-string v5, "VideoPlayer.onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting dimensions to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 651
    invoke-virtual {p0, v4, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 652
    return-void

    .line 578
    :pswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 581
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 582
    goto :goto_0

    .line 585
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 586
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 587
    .local v0, cast:Ljava/lang/ClassCastException;
    const/16 v4, 0xb0

    .line 590
    goto :goto_0

    .line 588
    .end local v0           #cast:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 589
    .local v2, nullParent:Ljava/lang/NullPointerException;
    const/16 v4, 0xb0

    goto :goto_0

    .line 594
    .end local v2           #nullParent:Ljava/lang/NullPointerException;
    :pswitch_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    .line 597
    const-string v5, "VideoPlayer.onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got width from MediaPlayer>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 599
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 600
    .local v3, nullVideoPlayer:Ljava/lang/NullPointerException;
    const-string v5, "VideoPlayer..onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get MediaPlayer for width:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v4, 0xb0

    .line 605
    goto/16 :goto_0

    .line 615
    .end local v3           #nullVideoPlayer:Ljava/lang/NullPointerException;
    :pswitch_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_1

    .line 618
    :sswitch_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 619
    goto/16 :goto_1

    .line 627
    :pswitch_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 629
    :try_start_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 630
    const-string v5, "VideoPlayer.onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got height from MediaPlayer>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 632
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 633
    .restart local v3       #nullVideoPlayer:Ljava/lang/NullPointerException;
    const-string v5, "VideoPlayer..onMeasure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get MediaPlayer for height:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v1, 0x90

    .line 638
    goto/16 :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 613
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 578
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 615
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .parameter "newMediaPlayer"
    .parameter "triggerRedraw"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 681
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 683
    if-eqz p2, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 685
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 687
    :cond_0
    return-void
.end method
