.class public Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x21c7

.field public static final TAG:Ljava/lang/String; = "SmsBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .parameter "intent"

    .prologue
    .line 141
    const-string v4, ""

    .line 145
    .local v4, msg:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.TEXT"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .end local p0
    :cond_0
    return-object v4

    .line 151
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pdus"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 152
    .local v6, pdus:[Ljava/lang/Object;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 153
    .local v5, pdu:Ljava/lang/Object;
    check-cast v5, [B

    .end local v5           #pdu:Ljava/lang/Object;
    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v7

    .line 154
    .local v7, smsMsg:Landroid/telephony/gsm/SmsMessage;
    invoke-virtual {v7}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .parameter "intent"

    .prologue
    .line 114
    const-string v6, ""

    .line 118
    .local v6, phone:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.PHONE_NUMBER"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .end local p0
    :cond_0
    return-object v6

    .line 125
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pdus"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 126
    .local v5, pdus:[Ljava/lang/Object;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 127
    .local v4, pdu:Ljava/lang/Object;
    check-cast v4, [B

    .end local v4           #pdu:Ljava/lang/Object;
    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v7

    .line 128
    .local v7, smsMsg:Landroid/telephony/gsm/SmsMessage;
    invoke-virtual {v7}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isRepl(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, packageName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Screen1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, classname:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, appClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 210
    .local v4, superClass:Ljava/lang/Class;
    const-class v5, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const/4 v5, 0x1

    .line 216
    .end local v0           #appClass:Ljava/lang/Class;
    .end local v1           #classname:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #superClass:Ljava/lang/Class;
    :goto_0
    return v5

    .restart local v0       #appClass:Ljava/lang/Class;
    .restart local v1       #classname:Ljava/lang/String;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #superClass:Ljava/lang/Class;
    :cond_0
    move v5, v7

    .line 213
    goto :goto_0

    .line 214
    .end local v0           #appClass:Ljava/lang/Class;
    .end local v1           #classname:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #superClass:Ljava/lang/Class;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 215
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v5, v7

    .line 216
    goto :goto_0
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "phone"
    .parameter "msg"

    .prologue
    .line 167
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendingNotification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, packageName:Ljava/lang/String;
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x0

    .line 177
    .local v3, newIntent:Landroid/content/Intent;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Screen1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, classname:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v3           #newIntent:Landroid/content/Intent;
    .local v4, newIntent:Landroid/content/Intent;
    :try_start_1
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v8, 0x3000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 189
    .local v5, nm:Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080090

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 190
    .local v6, note:Landroid/app/Notification;
    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 191
    iget v8, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Notification;->defaults:I

    .line 193
    const/4 v8, 0x0

    const/high16 v9, 0x800

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/PendingIntent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sms from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v8, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->getCachedMsgCount()I

    move-result v8

    iput v8, v6, Landroid/app/Notification;->number:I

    .line 196
    const/4 v8, 0x0

    const/16 v9, 0x21c7

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 197
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification sent, classname: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 202
    .end local v0           #activity:Landroid/app/PendingIntent;
    .end local v1           #classname:Ljava/lang/String;
    .end local v4           #newIntent:Landroid/content/Intent;
    .end local v5           #nm:Landroid/app/NotificationManager;
    .end local v6           #note:Landroid/app/Notification;
    .restart local v3       #newIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 200
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .end local v3           #newIntent:Landroid/content/Intent;
    .restart local v1       #classname:Ljava/lang/String;
    .restart local v4       #newIntent:Landroid/content/Intent;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v3, v4

    .end local v4           #newIntent:Landroid/content/Intent;
    .restart local v3       #newIntent:Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    const-string v3, "SmsBroadcastReceiver"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, phone:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, msg:Ljava/lang/String;
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->isReceivingEnabled(Landroid/content/Context;)I

    move-result v2

    .line 79
    .local v2, receivingEnabled:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 80
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Receiving is not enabled, ignoring message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->isRepl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, and either receivingEnabled is FOREGROUND or we are the repl."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p1, v1, v0}, Lcom/google/appinventor/components/runtime/Texting;->handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App in Foreground, delivering message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_3
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, but receivingEnabled == 2, sending notification."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
