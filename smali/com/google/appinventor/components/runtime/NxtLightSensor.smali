.class public Lcom/google/appinventor/components/runtime/NxtLightSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtLightSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a light sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private generateLight:Z

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "NxtLightSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    .line 92
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->SensorPort(Ljava/lang/String;)V

    .line 93
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BottomOfRange(I)V

    .line 94
    const/16 v0, 0x2ff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->TopOfRange(I)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRangeEventEnabled(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRangeEventEnabled(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRangeEventEnabled(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->GenerateLight(Z)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 6
    .parameter "functionName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:I

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v1

    .line 159
    .local v1, returnPackage:[B
    if-eqz v1, :cond_0

    .line 160
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 161
    .local v2, valid:Z
    if-eqz v2, :cond_0

    .line 162
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getUWORDValueFromBytes([BI)I

    move-result v0

    .line 163
    .local v0, normalizedValue:I
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    .line 168
    .end local v0           #normalizedValue:I
    .end local v2           #valid:Z
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private isHandlerNeeded()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .prologue
    .line 325
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 4
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 311
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    .line 313
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 314
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 315
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 318
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 319
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .prologue
    .line 251
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 4
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 237
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    .line 239
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 240
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 241
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 244
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 245
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 179
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .parameter "bottomOfRange"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    .line 191
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 192
    return-void
.end method

.method public GenerateLight(Z)V
    .locals 1
    .parameter "generateLight"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "GenerateLight"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->initializeSensor(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public GenerateLight()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the light sensor should generate light."
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    return v0
.end method

.method public GetLightLevel()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read."
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 143
    const-string v0, "GetLightLevel"

    .line 144
    .local v0, functionName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 154
    .end local p0
    :goto_0
    return v2

    .line 148
    .restart local p0
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 149
    .local v1, sensorValue:Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;,"Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v2, :cond_1

    .line 150
    iget-object p0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .restart local p0
    :cond_1
    move v2, v3

    .line 154
    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setSensorPort(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .parameter "topOfRange"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 213
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    .line 214
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 215
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .prologue
    .line 288
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 4
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 274
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    .line 276
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 277
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 281
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 282
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 103
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:I

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x80

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setInputMode(Ljava/lang/String;III)V

    .line 106
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 338
    return-void
.end method
