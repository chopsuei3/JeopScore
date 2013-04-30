.class public Lcom/google/appinventor/components/runtime/ReplForm;
.super Lcom/google/appinventor/components/runtime/Form;
.source "ReplForm.java"


# static fields
.field private static final REPL_ASSET_DIR:Ljava/lang/String; = "/sdcard/AppInventor/assets/"

.field public static topform:Lcom/google/appinventor/components/runtime/ReplForm;


# instance fields
.field private IsUSBRepl:Z

.field private assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

.field private formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    .line 51
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplForm;->topform:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 52
    return-void
.end method

.method private checkAssetDir()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/AppInventor/assets/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method protected closeApplicationFromBlocks()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$3;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1
    .parameter "resultIntent"

    .prologue
    .line 111
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$2;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 65
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 66
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 68
    .end local v0           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->destroy()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->stop()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onStop()V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->stopListening(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public setIsUSBrepl()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    .line 132
    return-void
.end method

.method public startHTTPD()V
    .locals 5

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->checkAssetDir()V

    .line 139
    new-instance v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    const/16 v2, 0x1f40

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/AppInventor/assets/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;-><init>(ILjava/io/File;Lcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 140
    const-string v1, "ReplForm"

    const-string v2, "started AppInvHTTPD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "ReplForm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up NanoHTTPD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "nextFormName"
    .parameter "startupValue"

    .prologue
    .line 100
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public startRepl()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "ReplForm"

    const-string v1, "startRepl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 151
    return-void
.end method
