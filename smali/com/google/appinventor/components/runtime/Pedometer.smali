.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that can count steps."
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION"
.end annotation


# static fields
.field private static final DIMENSIONS:I = 0x3

.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final MIN_SATELLITES:I = 0x4

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 4.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x14


# instance fields
.field private calibrateSteps:Z

.field private final context:Landroid/content/Context;

.field private currentLocation:Landroid/location/Location;

.field private distWhenGPSLost:F

.field private elapsedTimestamp:J

.field private firstGpsReading:Z

.field private foundNonStep:Z

.field private foundValley:[Z

.field private gpsAvailable:Z

.field private gpsDistance:F

.field private gpsStepTime:J

.field private intervalPos:I

.field private lastNumSteps:I

.field private lastValley:[F

.field private lastValues:[[F

.field private final locationManager:Landroid/location/LocationManager;

.field private locationWhenGPSLost:Landroid/location/Location;

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private peak:[I

.field private pedometerPaused:Z

.field private prevDiff:[F

.field private prevLocation:Landroid/location/Location;

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private statusMoving:Z

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private useGps:Z

.field private valley:[I

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10
    .parameter "container"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 94
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 65
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 66
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 67
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    .line 68
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    .line 69
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    .line 70
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    .line 71
    const/16 v0, 0x14

    filled-new-array {v0, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    .line 72
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    .line 73
    const v0, 0x3f3ae148

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 74
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 75
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    .line 76
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .line 78
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 79
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    .line 80
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 81
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsStepTime:J

    .line 82
    new-array v0, v9, [Z

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    .line 83
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 84
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 85
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    .line 86
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    .line 87
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 88
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    .line 89
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    .line 90
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    .line 95
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 97
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 98
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 99
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 100
    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 102
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    .line 103
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    .line 105
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v5, v0, v6

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aput v4, v0, v6

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 115
    .local v7, settings:Landroid/content/SharedPreferences;
    const-string v0, "Pedometer.stridelength"

    const v1, 0x3f3ae148

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 116
    const-string v0, "Pedometer.distance"

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 117
    const-string v0, "Pedometer.prevStepCount"

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 118
    const-string v0, "Pedometer.clockTime"

    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 119
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 121
    const-string v0, "Pedometer"

    const-string v1, "Pedometer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 9

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, avg:F
    const/4 v6, 0x0

    .line 433
    .local v6, num:I
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 434
    .local v3, interval:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 435
    add-int/lit8 v6, v6, 0x1

    .line 436
    long-to-float v7, v3

    add-float/2addr v1, v7

    .line 433
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v3           #interval:J
    :cond_1
    int-to-float v7, v6

    div-float/2addr v1, v7

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-wide v3, v0, v2

    .line 441
    .restart local v3       #interval:J
    long-to-float v7, v3

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x437a

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 442
    const/4 v7, 0x0

    .line 445
    .end local v3           #interval:J
    :goto_2
    return v7

    .line 440
    .restart local v3       #interval:J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    .end local v3           #interval:J
    :cond_3
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private getPeak()V
    .locals 5

    .prologue
    .line 453
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v3, v3, 0xa

    rem-int/lit8 v2, v3, 0x14

    .line 454
    .local v2, mid:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 455
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aput v2, v3, v1

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 457
    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private getValley()V
    .locals 5

    .prologue
    .line 469
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v3, v3, 0xa

    rem-int/lit8 v2, v3, 0x14

    .line 470
    .local v2, mid:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 471
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aput v2, v3, v1

    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 473
    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private setGpsAvailable(Z)V
    .locals 1
    .parameter "available"

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    .line 484
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->GPSAvailable()V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    .line 487
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->GPSLost()V

    goto :goto_0
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 1
    .parameter "cal"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->CalibrationFailed()V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    .line 293
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    goto :goto_0
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    return v0
.end method

.method public CalibrationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 256
    const-string v0, "CalibrationFailed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 420
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 422
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 265
    const-string v0, "GPSAvailable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public GPSLost()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 273
    const-string v0, "GPSLost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    return v0
.end method

.method public Pause()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 182
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 185
    :cond_0
    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 158
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 160
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 163
    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 171
    return-void
.end method

.method public Save()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone"
    .end annotation

    .prologue
    .line 193
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pedometer.stridelength"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v2, "Pedometer.distance"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v2, "Pedometer.prevStepCount"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v2, :cond_0

    .line 199
    const-string v2, "Pedometer.clockTime"

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    :goto_0
    const-string v2, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 201
    :cond_0
    const-string v2, "Pedometer.clockTime"

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 4
    .parameter "simpleSteps"
    .parameter "distance"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    .prologue
    .line 219
    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 132
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 138
    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 239
    const-string v0, "StartedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Pause()V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 147
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    .line 148
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    .line 149
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    .line 150
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .parameter "timeout"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 345
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 346
    return-void
.end method

.method public StoppedMoving()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 247
    const-string v0, "StoppedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 1
    .parameter "length"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->CalibrateStrideLength(Z)V

    .line 321
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 322
    return-void
.end method

.method public UseGPS(Z)V
    .locals 6
    .parameter "gps"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 370
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 376
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    .line 377
    return-void

    .line 372
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public UseGPS()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    return v0
.end method

.method public WalkStep(IF)V
    .locals 4
    .parameter "walkSteps"
    .parameter "distance"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected"
    .end annotation

    .prologue
    .line 231
    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 495
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 657
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 658
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .parameter "loc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4120

    .line 592
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-nez v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v1, 0x0

    .line 596
    .local v1, distDelta:F
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    .line 597
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    .line 598
    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    goto :goto_0

    .line 601
    :cond_2
    invoke-direct {p0, v9}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    .line 603
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    if-eqz v3, :cond_4

    .line 604
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 605
    float-to-double v3, v1

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    cmpg-float v3, v1, v7

    if-gez v3, :cond_3

    .line 606
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 607
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    .line 619
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    if-eqz v3, :cond_7

    .line 620
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    if-nez v3, :cond_6

    .line 621
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    .line 622
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    sub-int v2, v3, v4

    .line 623
    .local v2, stepsTaken:I
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    goto :goto_0

    .line 610
    .end local v2           #stepsTaken:I
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    if-eqz v3, :cond_5

    .line 611
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 613
    .local v0, distDarkness:F
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 616
    .end local v0           #distDarkness:F
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsStepTime:J

    .line 617
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    goto :goto_1

    .line 625
    :cond_6
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    .line 626
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    goto :goto_0

    .line 629
    :cond_7
    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    .line 630
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 636
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    .line 637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    .line 641
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    .line 646
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/16 v13, 0x13

    const/4 v12, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 500
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-eq v6, v11, :cond_0

    .line 585
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 506
    .local v5, values:[F
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->getPeak()V

    .line 508
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->getValley()V

    .line 512
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v7, v7, v11

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    move v0, v10

    .line 513
    .local v0, argmax:I
    :goto_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v7, v7, v0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v0, v8

    .line 515
    :cond_2
    const/4 v1, 0x0

    .local v1, k:I
    :goto_2
    if-ge v1, v12, :cond_c

    .line 517
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v6, v6, v1

    if-ltz v6, :cond_7

    .line 518
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v7, v7, v1

    aget-object v6, v6, v7

    aget v6, v6, v1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    const/high16 v7, 0x4080

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 521
    if-ne v0, v1, :cond_6

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 523
    .local v3, timestamp:J
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v8, v3, v8

    aput-wide v8, v6, v7

    .line 524
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 525
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 526
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 527
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v6, :cond_4

    .line 528
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 529
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v6, :cond_3

    .line 530
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const/high16 v8, 0x4000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 532
    :cond_3
    iput-boolean v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 534
    :cond_4
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 535
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v6, v7}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 536
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v6, :cond_5

    .line 537
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 542
    :cond_5
    :goto_3
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 543
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v6, v7}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 544
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-nez v6, :cond_6

    .line 545
    iput-boolean v11, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    .line 546
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->StartedMoving()V

    .line 549
    .end local v3           #timestamp:J
    :cond_6
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v10, v6, v1

    .line 550
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v8, v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v1

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aget v8, v8, v1

    sub-float/2addr v7, v8

    aput v7, v6, v1

    .line 556
    :cond_7
    :goto_4
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aget v6, v6, v1

    if-ltz v6, :cond_8

    .line 557
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v11, v6, v1

    .line 558
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aget v8, v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v1

    aput v7, v6, v1

    .line 561
    :cond_8
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v6, v6, v7

    aget v7, v5, v1

    aput v7, v6, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .end local v0           #argmax:I
    .end local v1           #k:I
    :cond_9
    move v0, v11

    .line 512
    goto/16 :goto_1

    .line 540
    .restart local v0       #argmax:I
    .restart local v1       #k:I
    .restart local v3       #timestamp:J
    :cond_a
    iput-boolean v11, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    goto :goto_3

    .line 552
    .end local v3           #timestamp:J
    :cond_b
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    const/4 v7, 0x0

    aput v7, v6, v1

    goto :goto_4

    .line 563
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    .line 564
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long/2addr v6, v8

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_e

    .line 565
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-eqz v6, :cond_d

    .line 566
    iput-boolean v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->StoppedMoving()V

    .line 569
    :cond_d
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 573
    :cond_e
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    sub-int/2addr v6, v11

    if-gez v6, :cond_10

    move v2, v13

    .line 574
    .local v2, prev:I
    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v12, :cond_11

    .line 575
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v6, v6, v2

    aget v6, v6, v1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v7, v7, v8

    aget v7, v7, v1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_f

    .line 576
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v6, v6, v7

    aget v7, v6, v1

    float-to-double v7, v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v6, v1

    .line 574
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 573
    .end local v2           #prev:I
    :cond_10
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    sub-int/2addr v6, v11

    move v2, v6

    goto :goto_5

    .line 580
    .restart local v2       #prev:I
    :cond_11
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    if-ne v6, v13, :cond_12

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v6, :cond_12

    .line 581
    iput-boolean v11, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 584
    :cond_12
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x14

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    goto/16 :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "data"

    .prologue
    .line 650
    return-void
.end method
