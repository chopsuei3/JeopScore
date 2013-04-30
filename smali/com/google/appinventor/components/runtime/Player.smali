.class public final Lcom/google/appinventor/components/runtime/Player;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Player.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that plays audio or video and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).</p><p>For legal sound and video formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>If you will only be playing sound files and vibrating, not using video, this component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    iconName = "images/player.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# instance fields
.field private mp:Landroid/media/MediaPlayer;

.field private playerState:I

.field private sourcePath:Ljava/lang/String;

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 101
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 107
    return-void
.end method

.method private prepare()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 291
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 292
    const-string v1, "Player"

    const-string v2, "Successfully prepared"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, ioe:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    .line 297
    iput v6, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 298
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Source"

    const/16 v3, 0x2be

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private prepareToDie()V
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 344
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 315
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Completed -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "Completed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public IsLooping(Z)V
    .locals 3
    .parameter "looping"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 206
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looping is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    return-void
.end method

.method public IsLooping()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the media is looping"
    .end annotation

    .prologue
    .line 188
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPlaying()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the media is playing"
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 249
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Pause -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-ne v0, v3, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 252
    iput v3, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 255
    :cond_0
    return-void
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The PlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 130
    if-nez p1, :cond_4

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 133
    iget v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 136
    :cond_1
    iput v6, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 139
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 143
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    .line 145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 159
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded source path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    .line 166
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v1, p1

    .line 130
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 152
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Source"

    const/16 v3, 0x2bd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 236
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Start -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-ne v0, v3, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 239
    iput v3, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    .line 242
    :cond_1
    return-void
.end method

.method public Stop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 262
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Stop -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 265
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 269
    :cond_1
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .parameter "milliseconds"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 278
    return-void
.end method

.method public Volume(I)V
    .locals 4
    .parameter "vol"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100"
    .end annotation

    .prologue
    const/high16 v3, 0x42c8

    .line 221
    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 222
    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 223
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v1, "Volume must be set to a number between 0 and 100"

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    int-to-float v1, p1

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 226
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Completed()V

    .line 308
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 331
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 324
    return-void
.end method
