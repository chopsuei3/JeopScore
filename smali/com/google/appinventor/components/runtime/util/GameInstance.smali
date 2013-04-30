.class public Lcom/google/appinventor/components/runtime/util/GameInstance;
.super Ljava/lang/Object;
.source "GameInstance.java"


# instance fields
.field private instanceId:Ljava/lang/String;

.field private leader:Ljava/lang/String;

.field private messageTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "instanceId"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->instanceId:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 126
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    return-object v0
.end method

.method public putMessageTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "time"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public setLeader(Ljava/lang/String;)V
    .locals 0
    .parameter "leader"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/PlayerListDelta;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, newPlayersList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    .line 99
    :goto_0
    return-object v2

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 88
    .local v1, removed:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v0, added:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 92
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 96
    sget-object v2, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    goto :goto_0

    .line 99
    :cond_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    invoke-direct {v2, v1, v0}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
