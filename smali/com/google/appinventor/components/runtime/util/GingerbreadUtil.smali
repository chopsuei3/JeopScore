.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "GingerbreadUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 4
    .parameter "cookieHandler"

    .prologue
    .line 36
    instance-of v3, p0, Ljava/net/CookieManager;

    if-eqz v3, :cond_0

    .line 37
    move-object v0, p0

    check-cast v0, Ljava/net/CookieManager;

    move-object v1, v0

    .line 38
    .local v1, cookieManager:Ljava/net/CookieManager;
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v2

    .line 39
    .local v2, cookieStore:Ljava/net/CookieStore;
    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v2}, Ljava/net/CookieStore;->removeAll()Z

    .line 41
    const/4 v3, 0x1

    .line 44
    .end local v1           #cookieManager:Ljava/net/CookieManager;
    .end local v2           #cookieStore:Ljava/net/CookieStore;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method
