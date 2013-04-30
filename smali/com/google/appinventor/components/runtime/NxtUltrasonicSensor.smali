.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtUltrasonicSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "4"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v0, "NxtUltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    .line 91
    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    .line 92
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    .line 93
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureUltrasonicSensor(Ljava/lang/String;)V
    .locals 5
    .parameter "functionName"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 107
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 108
    .local v0, data:[B
    aput-byte v3, v0, v4

    .line 109
    const/4 v1, 0x1

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    .line 110
    aput-byte v3, v0, v3

    .line 111
    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 112
    return-void
.end method

.method private getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 9
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
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 143
    new-array v1, v5, [B

    .line 144
    .local v1, data:[B
    aput-byte v5, v1, v8

    .line 145
    const/16 v5, 0x42

    aput-byte v5, v1, v7

    .line 146
    iget v5, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v5, v1, v7}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 149
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 150
    iget v5, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, countAvailableBytes:I
    if-lez v0, :cond_0

    .line 153
    iget v5, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;I)[B

    move-result-object v3

    .line 154
    .local v3, returnPackage:[B
    if-eqz v3, :cond_1

    .line 155
    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 156
    .local v4, value:I
    if-ltz v4, :cond_1

    const/16 v5, 0xfe

    if-gt v4, v5, :cond_1

    .line 157
    new-instance v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    .line 165
    .end local v0           #countAvailableBytes:I
    .end local v3           #returnPackage:[B
    .end local v4           #value:I
    :goto_1
    return-object v5

    .line 149
    .restart local v0       #countAvailableBytes:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0           #countAvailableBytes:I
    :cond_1
    new-instance v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v6, 0x0

    invoke-direct {v5, v8, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_1
.end method

.method private isHandlerNeeded()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

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
        description = "Distance has gone above the range."
    .end annotation

    .prologue
    .line 322
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 323
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
    .line 306
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 308
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    .line 310
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 311
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 315
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 316
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    .prologue
    .line 248
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 249
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
    .line 232
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 234
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    .line 236
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 237
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 238
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 241
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 242
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .parameter "bottomOfRange"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 187
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    .line 188
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 189
    return-void
.end method

.method public GetDistance()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 127
    const-string v0, "GetDistance"

    .line 128
    .local v0, functionName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 138
    .end local p0
    :goto_0
    return v2

    .line 132
    .restart local p0
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 133
    .local v1, sensorValue:Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;,"Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v2, :cond_1

    .line 134
    iget-object p0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .restart local p0
    :cond_1
    move v2, v3

    .line 138
    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .parameter "topOfRange"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    .line 211
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 212
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    .prologue
    .line 285
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
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
    .line 269
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 271
    .local v1, handlerWasNeeded:Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    .line 273
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 274
    .local v0, handlerIsNeeded:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 275
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 278
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 279
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 101
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;III)V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->configureUltrasonicSensor(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 335
    return-void
.end method
