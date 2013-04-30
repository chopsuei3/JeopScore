.class public Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;
.super Ljava/lang/Object;
.source "ExternalTextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# static fields
.field private static final TTS_INTENT:Ljava/lang/String; = "com.google.tts.makeBagel"


# instance fields
.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 0
    .parameter "container"
    .parameter "callback"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 37
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 38
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 67
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 68
    .local v0, isSuccess:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onSuccess()V

    .line 73
    :goto_1
    return-void

    .line 67
    .end local v0           #isSuccess:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 71
    .restart local v0       #isSuccess:Z
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    goto :goto_1
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3
    .parameter "message"
    .parameter "loc"

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.tts.makeBagel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "language"

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "country"

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
