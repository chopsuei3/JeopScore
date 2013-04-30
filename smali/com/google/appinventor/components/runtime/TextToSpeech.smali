.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using TextToSpeech to speak a message"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextToSpeech"

.field private static final iso3CountryToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso3LanguageToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private country:Ljava/lang/String;

.field private iso2Country:Ljava/lang/String;

.field private iso2Language:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private result:Z

.field private final tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    .line 48
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/google/appinventor/components/runtime/TextToSpeech;->initLocaleMaps()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 93
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    .line 94
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    .line 95
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 98
    .local v1, useExternalLibrary:Z
    :goto_0
    const-string v2, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string v4, "external"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TTS library."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    .line 112
    .local v0, callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    invoke-direct {v2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    :goto_2
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    .line 115
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 116
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 119
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 120
    return-void

    .end local v0           #callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .end local v1           #useExternalLibrary:Z
    :cond_0
    move v1, v4

    .line 97
    goto :goto_0

    .line 98
    .restart local v1       #useExternalLibrary:Z
    :cond_1
    const-string v4, "internal"

    goto :goto_1

    .line 112
    .restart local v0       #callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    :cond_2
    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return p1
.end method

.method private static initLocaleMaps()V
    .locals 8

    .prologue
    .line 65
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 66
    .local v6, locales:[Ljava/util/Locale;
    move-object v0, v6

    .local v0, arr$:[Ljava/util/Locale;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 68
    .local v5, locale:Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, iso3Country:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 70
    sget-object v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v2           #iso3Country:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, iso3Language:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 78
    sget-object v7, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v3           #iso3Language:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v5           #locale:Ljava/util/Locale;
    :cond_2
    return-void

    .line 80
    .restart local v5       #locale:Ljava/util/Locale;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 72
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private static iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .parameter "iso3Country"

    .prologue
    .line 208
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 209
    .local v0, mappedLocale:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 211
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mappedLocale:Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    .line 213
    .restart local v0       #mappedLocale:Ljava/util/Locale;
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .parameter "iso3Language"

    .prologue
    .line 160
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 161
    .local v0, mappedLocale:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 163
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mappedLocale:Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    .line 165
    .restart local v0       #mappedLocale:Ljava/util/Locale;
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 4
    .parameter "result"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 254
    const-string v0, "AfterSpeaking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 243
    const-string v0, "BeforeSpeaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .parameter "country"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 201
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    .line 204
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    .line 205
    return-void

    .line 192
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 193
    .restart local v0       #locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 196
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0       #locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .parameter "language"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 153
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    .line 156
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    .line 157
    return-void

    .line 144
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 145
    .restart local v0       #locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 148
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v0       #locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    .line 233
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, loc:Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1, p1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    .line 235
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    .line 265
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    .line 260
    return-void
.end method
