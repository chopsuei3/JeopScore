.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in Windows Media Video (.wmv) format, 3GPP (.3gp), or MPEG-4 (.mp4).  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p>"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
    }
.end annotation


# instance fields
.field private delayedStart:Z

.field private inFullScreen:Z

.field private mediaReady:Z

.field private sourcePath:Ljava/lang/String;

.field private final videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 110
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 117
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 126
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 127
    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 134
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 136
    const/16 v0, 0xb0

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 138
    const/16 v0, 0x90

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 142
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private prepareToDie()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 357
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 359
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 360
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 362
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "FullScreenKey"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 368
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 294
    const-string v0, "Completed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public FullScreen(Z)V
    .locals 9
    .parameter "value"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    const/16 v5, 0xc3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 445
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 446
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen(true)"

    const/16 v5, 0x517

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eq p1, v3, :cond_0

    .line 452
    if-eqz p1, :cond_3

    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "PositionKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v3, "PlayingKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    .line 459
    const-string v3, "FullScreenKey"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string v3, "SourceKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3, v5, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 463
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "ActionSuccess"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    goto :goto_0

    .line 466
    :cond_2
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 467
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen"

    const/16 v5, 0x515

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #result:Landroid/os/Bundle;
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v2, values:Landroid/os/Bundle;
    const-string v3, "FullScreenKey"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3, v5, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 476
    .restart local v1       #result:Landroid/os/Bundle;
    const-string v3, "ActionSuccess"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 479
    :cond_4
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 480
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen"

    const/16 v5, 0x516

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public FullScreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    return v0
.end method

.method public GetDuration()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    .prologue
    .line 268
    const-string v1, "VideoPlayer"

    const-string v2, "Calling GetDuration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "ActionData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 278
    .end local v0           #result:Landroid/os/Bundle;
    :goto_0
    return v1

    .line 275
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    .end local v0           #result:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getDuration()I

    move-result v1

    goto :goto_0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 406
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .parameter "height"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 422
    return-void
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 241
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    goto :goto_0
.end method

.method public SeekTo(I)V
    .locals 3
    .parameter "ms"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. Note that if the video is paused, the frame shown will not be updated by the seek. "
    .end annotation

    .prologue
    .line 252
    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-gez p1, :cond_0

    .line 254
    const/4 p1, 0x0

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 169
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-nez p1, :cond_3

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    const-string v1, "VideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 192
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const-string v1, "VideoPlayer"

    const-string v2, "loading video succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 173
    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Source"

    const/16 v3, 0x2bd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    .prologue
    .line 211
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->start()V

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    goto :goto_0
.end method

.method public VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 336
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 379
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .parameter "width"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 395
    return-void
.end method

.method public delayedStart()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 230
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 231
    return-void
.end method

.method public fullScreenKilled(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 494
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 495
    const-string v1, "SourceKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, newSource:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->requestLayout()V

    .line 501
    const-string v1, "PositionKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 502
    const-string v1, "PlayingKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 505
    :cond_1
    return-void
.end method

.method public getPassedHeight()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    return v0
.end method

.method public getPassedWidth()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 287
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 350
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 343
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "m"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 311
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 312
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 314
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Source"

    const/16 v2, 0x2bd

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 319
    return v6
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "newMediaPlayer"

    .prologue
    const/4 v1, 0x1

    .line 324
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaPlayer(Landroid/media/MediaPlayer;Z)V

    .line 327
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 330
    :cond_0
    return-void
.end method
