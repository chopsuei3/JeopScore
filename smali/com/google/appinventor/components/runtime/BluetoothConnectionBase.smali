.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BluetoothConnectionBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private delimiter:B

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .parameter "container"
    .parameter "logTag"

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 2
    .parameter "form"
    .parameter "logTag"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 69
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3
    .parameter "outputStream"
    .parameter "inputStream"

    .prologue
    const/4 v2, 0x0

    .line 78
    move-object v0, v2

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 79
    const-string v1, "Not Null"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 81
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 82
    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 104
    .local v1, listener:Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    .line 106
    .end local v1           #listener:Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 3

    .prologue
    .line 109
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 110
    .local v1, listener:Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    .line 112
    .end local v1           #listener:Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 813
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 532
    const-string v1, "BytesAvailableToReceive"

    .line 533
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    const/16 v2, 0x203

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    move v2, v5

    .line 544
    :goto_0
    return v2

    .line 540
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 541
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 542
    .local v0, e:Ljava/io/IOException;
    const/16 v2, 0x205

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    move v2, v5

    .line 544
    goto :goto_0
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 5
    .parameter "encoding"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 256
    :try_start_0
    const-string v1, "check"

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 257
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 259
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "CharacterEncoding"

    const/16 v2, 0x207

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 300
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 7
    .parameter "number"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 281
    const-string v1, "DelimiterByte"

    .line 282
    .local v1, functionName:Ljava/lang/String;
    move v2, p1

    .line 283
    .local v2, n:I
    int-to-byte v0, v2

    .line 284
    .local v0, b:B
    shr-int/lit8 v2, v2, 0x8

    .line 285
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 286
    const/16 v3, 0x1ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    goto :goto_0
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 186
    :cond_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 187
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 188
    return-void

    .line 181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while disconnecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public HighByteFirst(Z)V
    .locals 1
    .parameter "highByteFirst"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 245
    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 246
    return-void

    .line 245
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 579
    const-string v1, "ReceiveSigned1ByteNumber"

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 580
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 584
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v2

    goto :goto_0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 607
    const-string v1, "ReceiveSigned2ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 608
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 615
    :goto_0
    return v1

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 613
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 615
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 643
    const-string v1, "ReceiveSigned4ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 644
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 645
    const-wide/16 v1, 0x0

    .line 654
    :goto_0
    return-wide v1

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 649
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_0

    .line 654
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 5
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    const-string v4, "ReceiveSignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 700
    .local v0, bytes:[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 702
    aget-byte v3, v0, v1

    .line 703
    .local v3, n:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v3           #n:I
    :cond_0
    return-object v2
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 6
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .prologue
    .line 559
    const-string v2, "ReceiveText"

    invoke-virtual {p0, v2, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 561
    .local v0, bytes:[B
    if-gez p1, :cond_0

    .line 563
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 569
    :goto_0
    return-object v2

    .line 565
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 568
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    const-string v1, "ReceiveUnsigned1ByteNumber"

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 594
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 598
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    const-string v1, "ReceiveUnsigned2ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 626
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 633
    :goto_0
    return v1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 631
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 633
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 667
    const-string v1, "ReceiveUnsigned4ByteNumber"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 668
    .local v0, bytes:[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 669
    const-wide/16 v1, 0x0

    .line 678
    :goto_0
    return-wide v1

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 673
    aget-byte v1, v0, v11

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v8

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    goto :goto_0

    .line 678
    :cond_1
    aget-byte v1, v0, v8

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v11

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 5
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    const-string v4, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 723
    .local v0, bytes:[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 725
    aget-byte v4, v0, v1

    and-int/lit16 v3, v4, 0xff

    .line 726
    .local v3, n:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v3           #n:I
    :cond_0
    return-object v2
.end method

.method public Secure(Z)V
    .locals 0
    .parameter "secure"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    .line 220
    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 7
    .parameter "number"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    const-string v2, "Send1ByteNumber"

    .line 339
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 345
    .local v3, n:I
    int-to-byte v0, v3

    .line 346
    .local v0, b:B
    shr-int/lit8 v3, v3, 0x8

    .line 347
    if-eqz v3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 348
    const/16 v4, 0x1ff

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 353
    .end local v0           #b:B
    .end local v3           #n:I
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 341
    .local v1, e:Ljava/lang/NumberFormatException;
    const/16 v4, 0x1fe

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #b:B
    .restart local v3       #n:I
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 9
    .parameter "number"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    const-string v2, "Send2ByteNumber"

    .line 370
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 376
    .local v3, n:I
    new-array v0, v8, [B

    .line 377
    .local v0, bytes:[B
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    .line 378
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 379
    shr-int/lit8 v3, v3, 0x8

    .line 380
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 386
    :goto_0
    shr-int/lit8 v3, v3, 0x8

    .line 387
    if-eqz v3, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 388
    const/16 v4, 0x200

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 393
    .end local v0           #bytes:[B
    .end local v3           #n:I
    :goto_1
    return-void

    .line 371
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 372
    .local v1, e:Ljava/lang/NumberFormatException;
    const/16 v4, 0x1fe

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 382
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #bytes:[B
    .restart local v3       #n:I
    :cond_0
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 383
    shr-int/lit8 v3, v3, 0x8

    .line 384
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .parameter "number"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    const-wide/16 v8, 0xff

    .line 407
    const-string v2, "Send4ByteNumber"

    .line 410
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 416
    .local v3, n:J
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 417
    .local v0, bytes:[B
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_0

    .line 418
    const/4 v5, 0x3

    and-long v6, v3, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 419
    shr-long/2addr v3, v10

    .line 420
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v13

    .line 421
    shr-long/2addr v3, v10

    .line 422
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v12

    .line 423
    shr-long/2addr v3, v10

    .line 424
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 434
    :goto_0
    shr-long/2addr v3, v10

    .line 435
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 436
    const/16 v5, 0x200

    new-array v6, v13, [Ljava/lang/Object;

    aput-object p1, v6, v11

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 441
    .end local v0           #bytes:[B
    .end local v3           #n:J
    :goto_1
    return-void

    .line 411
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 412
    .local v1, e:Ljava/lang/NumberFormatException;
    const/16 v5, 0x1fe

    new-array v6, v12, [Ljava/lang/Object;

    aput-object p1, v6, v11

    invoke-virtual {p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 426
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #bytes:[B
    .restart local v3       #n:J
    :cond_0
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 427
    shr-long/2addr v3, v10

    .line 428
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v12

    .line 429
    shr-long/2addr v3, v10

    .line 430
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v13

    .line 431
    shr-long/2addr v3, v10

    .line 432
    const/4 v5, 0x3

    and-long v6, v3, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 12
    .parameter "list"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 455
    const-string v4, "SendBytes"

    .line 456
    .local v4, functionName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 457
    .local v0, array:[Ljava/lang/Object;
    array-length v8, v0

    new-array v1, v8, [B

    .line 458
    .local v1, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v0

    if-ge v5, v8, :cond_1

    .line 461
    aget-object v3, v0, v5

    .line 462
    .local v3, element:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    .local v7, s:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 471
    .local v6, n:I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 472
    shr-int/lit8 v6, v6, 0x8

    .line 473
    if-eqz v6, :cond_0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 474
    const/16 v8, 0x202

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v4, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 480
    .end local v3           #element:Ljava/lang/Object;
    .end local v6           #n:I
    .end local v7           #s:Ljava/lang/String;
    :goto_1
    return-void

    .line 466
    .restart local v3       #element:Ljava/lang/Object;
    .restart local v7       #s:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 467
    .local v2, e:Ljava/lang/NumberFormatException;
    const/16 v8, 0x201

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v4, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 458
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #n:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v3           #element:Ljava/lang/Object;
    .end local v6           #n:I
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 5
    .parameter "text"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    .local v0, bytes:[B
    :goto_0
    const-string v2, "SendText"

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 318
    return-void

    .line 313
    .end local v0           #bytes:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 314
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #bytes:[B
    goto :goto_0
.end method

.method addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "functionName"
    .parameter "errorNumber"
    .parameter "messageArgs"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 807
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 800
    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 12
    .parameter "functionName"
    .parameter "numberOfBytes"

    .prologue
    const/16 v11, 0x205

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 743
    const/16 v6, 0x203

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 745
    new-array v6, v8, [B

    .line 792
    :goto_0
    return-object v6

    .line 748
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 750
    .local v0, buffer:Ljava/io/ByteArrayOutputStream;
    if-ltz p2, :cond_3

    .line 752
    new-array v1, p2, [B

    .line 753
    .local v1, bytes:[B
    const/4 v4, 0x0

    .line 754
    .local v4, totalBytesRead:I
    :goto_1
    if-ge v4, p2, :cond_1

    .line 756
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-virtual {v6, v1, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 757
    .local v3, numBytesRead:I
    if-ne v3, v9, :cond_2

    .line 758
    const/16 v6, 0x206

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v3           #numBytesRead:I
    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 792
    .end local v1           #bytes:[B
    .end local v4           #totalBytesRead:I
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 762
    .restart local v1       #bytes:[B
    .restart local v3       #numBytesRead:I
    .restart local v4       #totalBytesRead:I
    :cond_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 763
    .end local v3           #numBytesRead:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 764
    .local v2, e:Ljava/io/IOException;
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, p1, v11, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 774
    .end local v1           #bytes:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #totalBytesRead:I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 775
    .local v5, value:I
    if-ne v5, v9, :cond_4

    .line 776
    const/16 v6, 0x206

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 784
    .end local v5           #value:I
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 785
    .restart local v2       #e:Ljava/io/IOException;
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, p1, v11, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 780
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #value:I
    :cond_4
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 781
    iget-byte v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v6, :cond_3

    goto :goto_3
.end method

.method removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 2
    .parameter "bluetoothSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 166
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 168
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    .line 169
    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 5
    .parameter "functionName"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const/16 v1, 0x203

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 502
    :goto_0
    return-void

    .line 496
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 497
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 499
    .local v0, e:Ljava/io/IOException;
    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 5
    .parameter "functionName"
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    const/16 v1, 0x203

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 519
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 521
    .local v0, e:Ljava/io/IOException;
    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
