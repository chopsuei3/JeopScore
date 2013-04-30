.class public Lcom/google/appinventor/components/runtime/GameClient;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Provides a way for applications to communicate with online game servers"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH"
.end annotation


# static fields
.field private static final COMMAND_ARGUMENTS_KEY:Ljava/lang/String; = "args"

.field private static final COMMAND_TYPE_KEY:Ljava/lang/String; = "command"

.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final ERROR_RESPONSE_KEY:Ljava/lang/String; = "e"

.field private static final GAME_ID_KEY:Ljava/lang/String; = "gid"

.field private static final GET_INSTANCE_LISTS_COMMAND:Ljava/lang/String; = "getinstancelists"

.field private static final GET_MESSAGES_COMMAND:Ljava/lang/String; = "messages"

.field private static final INSTANCE_ID_KEY:Ljava/lang/String; = "iid"

.field private static final INSTANCE_PUBLIC_KEY:Ljava/lang/String; = "makepublic"

.field private static final INVITED_LIST_KEY:Ljava/lang/String; = "invited"

.field private static final INVITEE_KEY:Ljava/lang/String; = "inv"

.field private static final INVITE_COMMAND:Ljava/lang/String; = "invite"

.field private static final JOINED_LIST_KEY:Ljava/lang/String; = "joined"

.field private static final JOIN_INSTANCE_COMMAND:Ljava/lang/String; = "joininstance"

.field private static final LEADER_KEY:Ljava/lang/String; = "leader"

.field private static final LEAVE_INSTANCE_COMMAND:Ljava/lang/String; = "leaveinstance"

.field private static final LOG_TAG:Ljava/lang/String; = "GameClient"

.field private static final MESSAGES_LIST_KEY:Ljava/lang/String; = "messages"

.field private static final MESSAGE_CONTENT_KEY:Ljava/lang/String; = "contents"

.field private static final MESSAGE_RECIPIENTS_KEY:Ljava/lang/String; = "mrec"

.field private static final MESSAGE_SENDER_KEY:Ljava/lang/String; = "msender"

.field private static final MESSAGE_TIME_KEY:Ljava/lang/String; = "mtime"

.field private static final NEW_INSTANCE_COMMAND:Ljava/lang/String; = "newinstance"

.field private static final NEW_MESSAGE_COMMAND:Ljava/lang/String; = "newmessage"

.field private static final PLAYERS_LIST_KEY:Ljava/lang/String; = "players"

.field private static final PLAYER_ID_KEY:Ljava/lang/String; = "pid"

.field private static final PUBLIC_LIST_KEY:Ljava/lang/String; = "public"

.field private static final SERVER_COMMAND:Ljava/lang/String; = "servercommand"

.field private static final SERVER_RETURN_VALUE_KEY:Ljava/lang/String; = "response"

.field private static final SET_LEADER_COMMAND:Ljava/lang/String; = "setleader"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private gameId:Ljava/lang/String;

.field private instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

.field private invitedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 147
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    .line 152
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->activityContext:Landroid/app/Activity;

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/google/appinventor/components/runtime/util/GameInstance;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 157
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 158
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 160
    const-string v0, "http://appinvgameserver.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postGetInstanceLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetLeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postGetMessages(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postInvite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postLeaveInstance()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient;->postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetInstance(Ljava/lang/String;)V

    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .parameter "commandName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1127
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1128
    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
    .locals 6
    .parameter "commandName"
    .parameter
    .parameter
    .parameter "allowInstanceIdChange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$32;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GameClient$32;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V

    .line 1179
    .local v0, thisCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->ServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1181
    return-void
.end method

.method private postGetInstanceLists()V
    .locals 7

    .prologue
    .line 627
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$15;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$15;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 637
    .local v0, readMessagesCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "getinstancelists"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 643
    return-void
.end method

.method private postGetMessages(Ljava/lang/String;I)V
    .locals 7
    .parameter "requestedType"
    .parameter "count"

    .prologue
    .line 711
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$17;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$17;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    .line 743
    .local v0, myCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const-string v1, "You must join an instance before attempting to fetch messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 748
    :cond_0
    const-string v1, "messages"

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postInvite(Ljava/lang/String;)V
    .locals 7
    .parameter "inviteeEmail"

    .prologue
    .line 780
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$19;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$19;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 801
    .local v0, inviteCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    const-string v1, "You must have joined an instance before you can invite new players."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_0
    const-string v1, "invite"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "inv"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postLeaveInstance()V
    .locals 7

    .prologue
    .line 839
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$21;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$21;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 850
    .local v0, setInstanceCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "leaveinstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 856
    return-void
.end method

.method private postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "requestedInstanceId"
    .parameter "makePublic"

    .prologue
    const/4 v7, 0x1

    .line 887
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$23;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$23;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 898
    .local v0, makeNewGameCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "newinstance"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "makepublic"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 905
    return-void
.end method

.method private postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .parameter "type"
    .parameter "recipients"
    .parameter "contents"

    .prologue
    .line 934
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$25;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$25;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 943
    .local v0, myCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    const-string v1, "You must have joined an instance before you can send messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 958
    :goto_0
    return-void

    .line 948
    :cond_0
    const-string v1, "newmessage"

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mrec"

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "contents"

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .parameter "command"
    .parameter "arguments"

    .prologue
    .line 982
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$27;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1000
    .local v0, myCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "GameClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with args "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v1, "servercommand"

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "command"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "args"

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1009
    return-void
.end method

.method private postSetInstance(Ljava/lang/String;)V
    .locals 8
    .parameter "instanceId"

    .prologue
    const/4 v7, 0x1

    .line 1037
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$29;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$29;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1047
    .local v0, setInstanceCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "joininstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1053
    return-void
.end method

.method private postSetLeader(Ljava/lang/String;)V
    .locals 7
    .parameter "newLeader"

    .prologue
    .line 1078
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$31;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$31;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1087
    .local v0, setLeaderCallback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;,"Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const-string v1, "You must join an instance before attempting to set a leader."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1092
    :cond_0
    const-string v1, "setleader"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "leader"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private processInstanceLists(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "instanceLists"

    .prologue
    .line 647
    :try_start_0
    const-string v6, "joined"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 650
    const-string v6, "public"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 653
    const-string v6, "invited"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 656
    .local v5, receivedInstancesInvited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InvitedInstances()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 657
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 658
    .local v4, oldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 660
    .local v3, newInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 662
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 663
    .local v2, instanceInvited:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Invited(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #instanceInvited:Ljava/lang/String;
    .end local v3           #newInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #oldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #receivedInstancesInvited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 668
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "GameClient"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    const-string v6, "Instance lists failed to parse."

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 671
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private updateInstanceInfo(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "responseObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1184
    const/4 v2, 0x0

    .line 1185
    .local v2, newLeader:Z
    const-string v6, "leader"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, leader:Ljava/lang/String;
    const-string v6, "players"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 1189
    .local v5, receivedPlayers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1190
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v6, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setLeader(Ljava/lang/String;)V

    .line 1191
    const/4 v2, 0x1

    .line 1194
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-result-object v4

    .line 1195
    .local v4, playersDelta:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    sget-object v6, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    if-eq v4, v6, :cond_2

    .line 1196
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersRemoved()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1197
    .local v3, player:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerLeft(Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    .end local v3           #player:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersAdded()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1200
    .restart local v3       #player:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerJoined(Ljava/lang/String;)V

    goto :goto_1

    .line 1204
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #player:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 1205
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/GameClient;->NewLeader(Ljava/lang/String;)V

    .line 1207
    :cond_3
    return-void
.end method


# virtual methods
.method public FunctionCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "functionName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a function call completed."
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$1;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game name for this application. The same game ID can have one or more game instances."
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public GetInstanceLists()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId."
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$14;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$14;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 624
    return-void
.end method

.method public GetMessages(Ljava/lang/String;I)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves messages of the specified type."
    .end annotation

    .prologue
    .line 706
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$16;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method public GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "type"
    .parameter "sender"
    .parameter
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new message has been received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, contents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$2;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that something has occurred which the player should know about."
    .end annotation

    .prologue
    .line 583
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$12;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    return-void
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 385
    const-string v0, "GameClient"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Game Id must not be empty."

    const-string v2, "GameClient Configuration Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    return-void
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game."
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstanceIdChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "instanceId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance."
    .end annotation

    .prologue
    .line 420
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance id changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$3;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public Invite(Ljava/lang/String;)V
    .locals 1
    .parameter "playerEmail"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Invites a player to this game instance."
    .end annotation

    .prologue
    .line 775
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$18;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$18;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 777
    return-void
.end method

.method public Invited(Ljava/lang/String;)V
    .locals 3
    .parameter "instanceId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a user has been invited to this game instance."
    .end annotation

    .prologue
    .line 437
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player invited to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$4;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public InvitedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

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
    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    return-object v0
.end method

.method public JoinedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

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
    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    return-object v0
.end method

.method public Leader()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game\'s leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server."
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getLeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeaveInstance()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Leaves the current instance."
    .end annotation

    .prologue
    .line 831
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$20;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$20;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method

.method public MakeNewInstance(Ljava/lang/String;Z)V
    .locals 1
    .parameter "instanceId"
    .parameter "makePublic"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the server to create a new instance of this game."
    .end annotation

    .prologue
    .line 882
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$22;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method

.method public NewInstanceMade(Ljava/lang/String;)V
    .locals 2
    .parameter "instanceId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new instance was successfully created after calling MakeNewInstance."
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$6;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method public NewLeader(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that this game has a new leader as specified through SetLeader"
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$5;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public PlayerJoined(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new player has joined this game instance."
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$7;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method public PlayerLeft(Ljava/lang/String;)V
    .locals 2
    .parameter "playerId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a player has left this game instance."
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$8;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    return-void
.end method

.method public Players()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server."
    .end annotation

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
    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PublicInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. "
    .end annotation

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
    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    return-object v0
.end method

.method public SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .parameter "type"
    .parameter "recipients"
    .parameter "contents"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list."
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$24;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public ServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .parameter "command"
    .parameter "arguments"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends the specified command to the game server."
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$26;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 979
    return-void
.end method

.method public ServerCommandFailure(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .parameter "command"
    .parameter "arguments"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command failed."
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$9;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    return-void
.end method

.method public ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "command"
    .parameter
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command returned successfully."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server command returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$10;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://appinvgameserver.appspot.com"
        editorType = "string"
    .end annotation

    .prologue
    .line 319
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public ServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the game server."
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetInstance(Ljava/lang/String;)V
    .locals 1
    .parameter "instanceId"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets InstanceId and joins the specified instance."
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$28;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$28;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1034
    return-void
.end method

.method public SetLeader(Ljava/lang/String;)V
    .locals 1
    .parameter "playerEmail"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader."
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$30;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$30;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this property will change in the future so that is set automatically, and users will not be able to change it."
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "User email address is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public UserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddressSet(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public UserEmailAddressSet(Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user email address has been set."
    .end annotation

    .prologue
    .line 564
    const-string v0, "GameClient"

    const-string v1, "Email address set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$11;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the web server."
    .end annotation

    .prologue
    .line 602
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebServiceError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$13;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1110
    const-string v0, "GameClient"

    const-string v1, "Activity Resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1119
    const-string v0, "GameClient"

    const-string v1, "Activity Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void
.end method
