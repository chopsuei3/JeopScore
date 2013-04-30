.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "GitBuildId.java"


# static fields
.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "February 4 2013"

.field public static final BUGSENSE_API_KEY:Ljava/lang/String; = "195de24b"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "d9d6f13d2c69108050f56d2ab5b61a7cadb1e774"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "v133"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getBugsenseApiKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "195de24b"

    const-string v1, "${bugsense.apikey}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "195de24b"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "February 4 2013"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "d9d6f13d2c69108050f56d2ab5b61a7cadb1e774"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "v133"

    .line 32
    .local v0, version:Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    const-string v1, "none"

    .line 35
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
