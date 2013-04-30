.class final Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventClosure"
.end annotation


# instance fields
.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "componentId"
    .parameter "eventName"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 49
    :goto_0
    return v2

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    move-object v1, v0

    .line 42
    .local v1, that:Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 46
    goto :goto_0

    :cond_4
    move v2, v5

    .line 49
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
