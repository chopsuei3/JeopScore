.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;
.source "InternalTextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile isTtsInitialized:Z

.field private nextUtteranceId:I

.field private tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 1
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    .line 37
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 39
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private initializeTts()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 96
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 91
    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .parameter "message"
    .parameter "loc"

    .prologue
    .line 57
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 59
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    .line 76
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 82
    .end local v0           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    goto :goto_0
.end method
