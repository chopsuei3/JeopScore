.class public Lcom/bugsense/trace/BugSense;
.super Ljava/lang/Object;


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/BugSense;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSense;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/BugSense;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSense;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static showUpgradeNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tickerText"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->locTicker:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->locTicker:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_1

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->locTicker:Ljava/lang/String;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ic_launcher"

    const-string v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "icon"

    const-string v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v5, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x10

    iput v1, v6, Landroid/app/Notification;->flags:I

    const-string v1, "contentTitle"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->locTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->locTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->locTitle:Ljava/lang/String;

    :cond_2
    const-string v3, "contentText"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bugsense/trace/BugSenseHandler;->locText:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/bugsense/trace/BugSenseHandler;->locText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_3

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->locText:Ljava/lang/String;

    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v7, "url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    const/high16 v5, 0x1000

    invoke-static {p0, v2, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, p0, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error starting fix notification"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_0
.end method
