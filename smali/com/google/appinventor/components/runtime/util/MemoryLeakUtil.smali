.class public Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;
.super Ljava/lang/Object;
.source "MemoryLeakUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MemoryLeakUtil"

.field private static final TRACKED_OBJECTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static checkAllTrackedObjects(ZZ)V
    .locals 11
    .parameter "verbose"
    .parameter "stopTrackingCollectedObjects"

    .prologue
    .line 82
    const-string v8, "MemoryLeakUtil"

    const-string v9, "Checking Tracked Objects ----------------------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, countRemaining:I
    const/4 v0, 0x0

    .line 86
    .local v0, countCollected:I
    sget-object v8, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 87
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 91
    .local v6, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 92
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 100
    :cond_1
    :goto_1
    if-eqz p0, :cond_0

    .line 101
    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, tag:Ljava/lang/String;
    const-string v8, "MemoryLeakUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Object with tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_3

    const-string v10, "not "

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "been garbage collected."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v7           #tag:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 102
    .restart local v7       #tag:Ljava/lang/String;
    :cond_3
    const-string v10, ""

    goto :goto_2

    .line 106
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v7           #tag:Ljava/lang/String;
    :cond_4
    const-string v8, "MemoryLeakUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "summary: collected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v8, "MemoryLeakUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "summary: remaining "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v8, "MemoryLeakUtil"

    const-string v9, "-----------------------------------------------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static isTrackedObjectCollected(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "key"
    .parameter "stopTrackingIfCollected"

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 58
    sget-object v3, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 59
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, o:Ljava/lang/Object;
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, tag:Ljava/lang/String;
    const-string v3, "MemoryLeakUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string v5, "not "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "been garbage collected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 65
    sget-object v3, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 62
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 67
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 69
    .end local v0           #o:Ljava/lang/Object;
    .end local v2           #tag:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static trackObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 40
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 43
    .local v0, key:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0

    .line 40
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
