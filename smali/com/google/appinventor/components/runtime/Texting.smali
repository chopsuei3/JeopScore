.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-11.0.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECEIVE_SMS, android.permission.SEND_SMS, com.google.android.apps.googlevoice.permission.RECEIVE_SMS, com.google.android.apps.googlevoice.permission.SEND_SMS, android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;,
        Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field public static receivingEnabled:I


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/gsm/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7
    .parameter "container"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 188
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 189
    const-string v1, "Texting Component"

    const-string v2, "Texting constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 191
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 192
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    .line 194
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "TextingState"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 196
    const-string v1, "receiving2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 197
    sget v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    if-ne v1, v3, :cond_0

    .line 198
    const-string v1, "receiving"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    sput v6, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 205
    :cond_0
    :goto_0
    const-string v1, "gvenabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 206
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting with receiving Enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GV enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_1
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    .line 213
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 215
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 216
    sput-boolean v4, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 219
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 220
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 221
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 222
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 223
    return-void

    .line 201
    :cond_1
    sput v5, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    goto :goto_0

    .line 208
    :cond_2
    sput v6, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 209
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    goto :goto_1
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "number"
    .parameter "messageText"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 308
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    if-le v0, v4, :cond_0

    .line 309
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "MessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "Texting Component"

    const-string v1, "Dispatch successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Texting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method static synthetic access$300()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Texting;)Landroid/telephony/gsm/SmsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    return-object v0
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "msg"

    .prologue
    .line 570
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, cachedMsg:Ljava/lang/String;
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v3, "textingmsgcache"

    const v4, 0x8000

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 573
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 574
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 575
    sget v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 576
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cached "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    .end local v0           #cachedMsg:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 578
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "Texting Component"

    const-string v4, "File not found error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 580
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 581
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Texting Component"

    const-string v4, "I/O Error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .prologue
    .line 521
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "intent"

    .prologue
    .line 431
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 432
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 434
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 435
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .line 438
    .local v6, pdus:[[B
    array-length v4, v6

    .line 439
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/gsm/SmsMessage;

    .line 440
    .local v3, msgs:[Landroid/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 441
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 442
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_1
    return-object v3
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "receiver"
    .parameter "resultCode"
    .parameter "smsMsg"

    .prologue
    .line 803
    monitor-enter p0

    packed-switch p3, :pswitch_data_0

    .line 825
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 805
    :pswitch_1
    :try_start_0
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received OK, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Message sent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 809
    :pswitch_2
    :try_start_1
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received generic failure, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Generic failure: message not sent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 813
    :pswitch_3
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received no service error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "No Sms service available. Message not sent."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 817
    :pswitch_4
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received null PDU error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Received null PDU error. Message not sent."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 821
    :pswitch_5
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received radio off error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Could not send SMS message: radio off."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 803
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "msg"

    .prologue
    .line 553
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 409
    const-string v2, "TextingState"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 410
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "receiving2"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 411
    .local v1, retval:I
    if-ne v1, v4, :cond_1

    .line 412
    const-string v2, "receiving"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const/4 v2, 0x2

    .line 417
    :goto_0
    return v2

    :cond_0
    move v2, v5

    .line 415
    goto :goto_0

    :cond_1
    move v2, v1

    .line 417
    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 513
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .locals 7

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, messagelist:[Ljava/lang/String;
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v2

    .line 455
    monitor-exit v4

    .line 456
    if-nez v2, :cond_1

    .line 472
    :cond_0
    return-void

    .line 455
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 458
    :cond_1
    const-string v4, "Texting Component"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cached messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 461
    aget-object v3, v2, v1

    .line 462
    .local v3, phoneAndMessage:Ljava/lang/String;
    const-string v4, "Texting Component"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, delim:I
    sget v4, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 468
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 480
    const-string v7, "Texting Component"

    const-string v8, "Retrieving cached messages"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, ""

    .line 483
    .local v1, cache:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v8, "textingmsgcache"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 484
    .local v4, fis:Ljava/io/FileInputStream;
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 485
    .local v0, bytes:[B
    if-nez v4, :cond_0

    .line 486
    const-string v7, "Texting Component"

    const-string v8, "Null file stream returned from openFileInput"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 505
    .end local v0           #bytes:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v7

    .line 489
    .restart local v0       #bytes:[B
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 490
    .local v6, n:I
    const-string v7, "Texting Component"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "textingmsgcache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 492
    .end local v1           #cache:Ljava/lang/String;
    .local v2, cache:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 493
    sget-object v7, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v8, "textingmsgcache"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 494
    const/4 v7, 0x0

    sput v7, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 495
    const-string v7, "Texting Component"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retrieved cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 504
    const-string v7, "\u0001"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, messagelist:[Ljava/lang/String;
    move-object v1, v2

    .end local v2           #cache:Ljava/lang/String;
    .restart local v1       #cache:Ljava/lang/String;
    move-object v7, v5

    .line 505
    goto :goto_0

    .line 496
    .end local v0           #bytes:[B
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #messagelist:[Ljava/lang/String;
    .end local v6           #n:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 497
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v7, "Texting Component"

    const-string v8, "No Cache file found -- this is not (usually) an error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 498
    goto :goto_0

    .line 499
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 500
    .local v3, e:Ljava/io/IOException;
    :goto_2
    const-string v7, "Texting Component"

    const-string v8, "I/O Error reading from cache file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v10

    .line 502
    goto :goto_0

    .line 499
    .end local v1           #cache:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    .restart local v2       #cache:Ljava/lang/String;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #n:I
    :catch_2
    move-exception v7

    move-object v3, v7

    move-object v1, v2

    .end local v2           #cache:Ljava/lang/String;
    .restart local v1       #cache:Ljava/lang/String;
    goto :goto_2

    .line 496
    .end local v1           #cache:Ljava/lang/String;
    .restart local v2       #cache:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v3, v7

    move-object v1, v2

    .end local v2           #cache:Ljava/lang/String;
    .restart local v1       #cache:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 5
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 349
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 350
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "gvenabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 355
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "Sorry, your phone\'s system does not support this option."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public GoogleVoiceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public ReceivingEnabled()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .prologue
    .line 380
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 8
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 393
    if-lt p1, v5, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Texting"

    const/16 v4, 0x6a5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_1
    sput p1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 401
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    invoke-virtual {v2, v3, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 402
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "receiving2"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v2, "receiving"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public SendMessage()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 293
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public onInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 232
    const-string v1, "Texting Component"

    const-string v2, "onInitialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 234
    sput-boolean v3, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 235
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 236
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 237
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 238
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 545
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 529
    const-string v1, "Texting Component"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 531
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 533
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 534
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 536
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 909
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 910
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 911
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "receiving2"

    sget v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 912
    const-string v2, "gvenabled"

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 913
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 914
    return-void
.end method
