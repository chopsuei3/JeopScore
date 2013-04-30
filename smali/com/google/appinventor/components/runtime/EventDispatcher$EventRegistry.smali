.class final Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventRegistry"
.end annotation


# instance fields
.field private final dispatchDelegate:Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

.field private final eventClosuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 1
    .parameter "dispatchDelegate"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->dispatchDelegate:Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->eventClosuresMap:Ljava/util/HashMap;

    return-object v0
.end method
