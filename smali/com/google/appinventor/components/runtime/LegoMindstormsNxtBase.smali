.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LegoMindstormsNxtBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_MESSAGES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 92
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .parameter "container"
    .parameter "logTag"

    .prologue
    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 84
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 7
    .parameter "functionName"
    .parameter "status"

    .prologue
    const/16 v6, 0x194

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 319
    if-gez p2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 325
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, errorMessage:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, p0, p1, v6, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, p1, v6, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private receiveReturnPackage(Ljava/lang/String;)[B
    .locals 7
    .parameter "functionName"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 275
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3, p1, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 276
    .local v0, header:[B
    array-length v3, v0

    if-ne v3, v4, :cond_0

    .line 277
    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v1

    .line 278
    .local v1, length:I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v2

    .line 279
    .local v2, returnPackage:[B
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    move-object v3, v2

    .line 286
    .end local v1           #length:I
    .end local v2           #returnPackage:[B
    :goto_0
    return-object v3

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x193

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 286
    new-array v3, v6, [B

    goto :goto_0
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 2
    .parameter "bluetoothClient"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    .line 125
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 133
    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .parameter "bluetoothConnection"

    .prologue
    .line 521
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .parameter "bluetoothConnection"

    .prologue
    .line 526
    return-void
.end method

.method protected final checkBluetooth(Ljava/lang/String;)Z
    .locals 4
    .parameter "functionName"

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x191

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v3

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x192

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v3

    .line 257
    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 3
    .parameter "motorPortLetter"

    .prologue
    .line 462
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    .line 464
    :cond_1
    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-ne p1, v0, :cond_3

    .line 465
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 466
    :cond_3
    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    .line 467
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 469
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .parameter "motorPortLetter"

    .prologue
    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 3
    .parameter "sensorPortLetter"

    .prologue
    .line 480
    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    .line 482
    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    .line 485
    const/4 v0, 0x2

    goto :goto_0

    .line 486
    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    .line 487
    const/4 v0, 0x3

    goto :goto_0

    .line 489
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .parameter "sensorPortLetter"

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-byte v0, p2, p3

    .line 339
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 342
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 343
    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 362
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 363
    shr-int/lit8 p1, p1, 0x8

    .line 364
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 365
    shr-int/lit8 p1, p1, 0x8

    .line 366
    add-int/lit8 v0, p3, 0x2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 367
    shr-int/lit8 p1, p1, 0x8

    .line 368
    add-int/lit8 v0, p3, 0x3

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 369
    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 350
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 351
    shr-int/lit8 p1, p1, 0x8

    .line 352
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 353
    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 7
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"
    .parameter "maxCount"

    .prologue
    const/4 v6, 0x0

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p4, :cond_0

    .line 384
    invoke-virtual {p1, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_0
    :try_start_0
    const-string v3, "ISO-8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 393
    .local v2, valueBytes:[B
    :goto_0
    array-length v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 394
    .local v1, lengthToCopy:I
    invoke-static {v2, v6, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    return-void

    .line 389
    .end local v1           #lengthToCopy:I
    .end local v2           #valueBytes:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 390
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2       #valueBytes:[B
    goto :goto_0
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 346
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 347
    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 6
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    .line 372
    and-long v0, p1, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 373
    shr-long/2addr p1, v5

    .line 374
    add-int/lit8 v0, p4, 0x1

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 375
    shr-long/2addr p1, v5

    .line 376
    add-int/lit8 v0, p4, 0x2

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 377
    shr-long/2addr p1, v5

    .line 378
    add-int/lit8 v0, p4, 0x3

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 379
    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 356
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 357
    shr-int/lit8 p1, p1, 0x8

    .line 358
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 359
    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 2
    .parameter "functionName"
    .parameter "returnPackage"
    .parameter "command"

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result v0

    .line 291
    .local v0, status:I
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    .line 294
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->handleError(Ljava/lang/String;I)V

    .line 295
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 398
    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 168
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 169
    const/4 v2, 0x7

    aput-byte v2, v0, v4

    .line 170
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 172
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 180
    :goto_0
    return-object v2

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 16)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 402
    aget-byte v0, p1, p2

    return v0
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 420
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 410
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 6
    .parameter "functionName"
    .parameter "returnPackage"
    .parameter "command"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 301
    aget-byte v0, p2, v3

    if-eq v0, v5, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 0: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x02)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    aget-byte v0, p2, v4

    if-eq v0, p3, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 1: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p3, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    invoke-virtual {p0, p2, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= 3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, length:I
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 437
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 438
    sub-int v1, v0, p2

    .line 442
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 447
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-object v1

    .line 448
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 449
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 406
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 7
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const-wide/16 v5, 0xff

    .line 427
    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 415
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 6
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 192
    new-array v0, v4, [B

    .line 193
    .local v0, command:[B
    aput-byte v5, v0, v5

    .line 194
    const/16 v2, 0xe

    aput-byte v2, v0, v3

    .line 195
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 197
    .local v1, returnPackage:[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 199
    invoke-virtual {p0, v1, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 205
    :goto_0
    return v2

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v5

    .line 205
    goto :goto_0
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 225
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 226
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 227
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 229
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    array-length v2, v1

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 237
    :goto_0
    return-object v2

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 20)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 6
    .parameter "functionName"
    .parameter "port"
    .parameter "data"
    .parameter "rxDataLength"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    array-length v2, p3

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "length must be <= 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_0
    array-length v2, p3

    add-int/lit8 v2, v2, 0x5

    new-array v0, v2, [B

    .line 213
    .local v0, command:[B
    aput-byte v4, v0, v4

    .line 214
    const/16 v2, 0xf

    aput-byte v2, v0, v5

    .line 215
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 216
    array-length v2, p3

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 217
    const/4 v2, 0x4

    invoke-virtual {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 218
    const/4 v2, 0x5

    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 220
    .local v1, returnPackage:[B
    aget-byte v2, v0, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 221
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 537
    :cond_0
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 3
    .parameter "functionName"
    .parameter "port"

    .prologue
    .line 184
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 185
    .local v0, command:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 186
    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 187
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 189
    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 3
    .parameter "power"

    .prologue
    .line 493
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 p1, -0x64

    .line 497
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 p1, 0x64

    .line 501
    :cond_1
    return p1
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 3
    .parameter "turnRatio"

    .prologue
    .line 505
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/16 p1, -0x64

    .line 509
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 p1, 0x64

    .line 513
    :cond_1
    return p1
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 3
    .parameter "functionName"
    .parameter "command"

    .prologue
    .line 268
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 269
    .local v0, header:[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 270
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 271
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 272
    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 1
    .parameter "functionName"
    .parameter "command"

    .prologue
    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 264
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->receiveReturnPackage(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 4
    .parameter "functionName"
    .parameter "port"
    .parameter "sensorType"
    .parameter "sensorMode"

    .prologue
    const/4 v3, 0x5

    .line 157
    new-array v0, v3, [B

    .line 158
    .local v0, command:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 159
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 160
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 161
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 162
    const/4 v1, 0x4

    invoke-virtual {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 164
    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 4
    .parameter "functionName"
    .parameter "port"
    .parameter "power"
    .parameter "mode"
    .parameter "regulationMode"
    .parameter "turnRatio"
    .parameter "runState"
    .parameter "tachoLimit"

    .prologue
    const/4 v3, 0x4

    .line 137
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result p3

    .line 138
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 139
    .local v0, command:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 140
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 141
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 142
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 143
    invoke-virtual {p0, p4, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 144
    const/4 v1, 0x5

    invoke-virtual {p0, p5, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 145
    const/4 v1, 0x6

    invoke-virtual {p0, p6, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 146
    const/4 v1, 0x7

    invoke-virtual {p0, p7, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 152
    const/16 v1, 0x8

    invoke-virtual {p0, p8, p9, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 154
    return-void
.end method
