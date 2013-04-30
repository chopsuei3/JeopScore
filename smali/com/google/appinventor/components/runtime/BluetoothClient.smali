.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "BluetoothClient.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetooth.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.BLUETOOTH"
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private acceptableDeviceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 51
    const-string v0, "BluetoothClient"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    .line 52
    return-void
.end method

.method private connect(Ljava/lang/Object;Ljava/util/UUID;)V
    .locals 4
    .parameter "bluetoothDevice"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 287
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createInsecureRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, bluetoothSocket:Ljava/lang/Object;
    :goto_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->connectToBluetoothSocket(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Ljava/lang/Object;)V

    .line 295
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to Bluetooth device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 290
    .end local v0           #bluetoothSocket:Ljava/lang/Object;
    :cond_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #bluetoothSocket:Ljava/lang/Object;
    goto :goto_0
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "functionName"
    .parameter "address"
    .parameter "uuidString"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 222
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 224
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f5

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 279
    :goto_0
    return v5

    .line 229
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 232
    goto :goto_0

    .line 237
    :cond_1
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, firstSpace:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 239
    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 242
    :cond_2
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f7

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 245
    goto :goto_0

    .line 248
    :cond_3
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, bluetoothDevice:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 250
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f8

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 252
    goto :goto_0

    .line 255
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 256
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f9

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 258
    goto :goto_0

    .line 263
    :cond_5
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 270
    .local v4, uuid:Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 273
    :try_start_1
    invoke-direct {p0, v1, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/Object;Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 274
    goto :goto_0

    .line 264
    .end local v4           #uuid:Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1fa

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v8

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 267
    goto :goto_0

    .line 275
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #uuid:Ljava/util/UUID;
    :catch_1
    move-exception v2

    .line 276
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 277
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1fb

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v5, v8

    .line 279
    goto :goto_0
.end method

.method private isDeviceClassAcceptable(Ljava/lang/Object;)Z
    .locals 4
    .parameter "bluetoothDevice"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 182
    :goto_0
    return v2

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, bluetoothClass:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 178
    const/4 v2, 0x0

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getDeviceClass(Ljava/lang/Object;)I

    move-result v1

    .line 182
    .local v1, deviceClass:I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
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
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, addressesAndNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 150
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBondedDevices(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 152
    .local v3, bluetoothDevice:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, address:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #bluetoothDevice:Ljava/lang/Object;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public Connect(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 194
    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "address"
    .parameter "uuid"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 207
    const-string v0, "ConnectWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    const-string v3, "IsDevicePaired"

    .line 102
    .local v3, functionName:Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 104
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v4, v7

    .line 129
    :goto_0
    return v4

    .line 109
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f6

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v4, v7

    .line 112
    goto :goto_0

    .line 117
    :cond_1
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, firstSpace:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 119
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_2
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 123
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f7

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v4, v7

    .line 125
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, bluetoothDevice:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .locals 2
    .parameter "component"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, acceptableDeviceClasses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 57
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 65
    if-eqz p2, :cond_0

    move v0, v1

    .line 66
    goto :goto_1

    .line 69
    :cond_3
    if-nez p2, :cond_4

    move v0, v1

    .line 70
    goto :goto_1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 73
    goto :goto_1

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 76
    goto :goto_1
.end method

.method detachComponent(Lcom/google/appinventor/components/runtime/Component;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 90
    :cond_0
    return-void
.end method
