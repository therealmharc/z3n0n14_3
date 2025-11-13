.class public Lcom/gamevil/nexus2/sensor/NexusSensor;
.super Ljava/lang/Object;
.source "NexusSensor.java"

# interfaces
.implements Lcom/gamevil/nexus2/sensor/NexusOrientationListener;
.implements Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;
.implements Lcom/gamevil/nexus2/sensor/NexusMagneticListener;
.implements Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;,
        Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;,
        Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamevil$nexus2$sensor$NexusSensor$SensorSide:[I = null

.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_135:I = 0x87

.field private static final ORIENTATION_45:I = 0x2d

.field private static final ORIENTATION_90:I = 0x5a

.field private static final ORIENTATION_PITCH_INTERVAL:B = 0x6t

.field private static final ORIENTATION_ROLL_INTERVAL:B = 0x3t

.field private static appContext:Landroid/content/Context; = null

.field private static currentAzimuth:F = 0.0f

.field private static currentPitch:F = 0.0f

.field private static currentRoll:F = 0.0f

.field private static currentTime:J = 0x0L

.field private static final interval:I = 0x3e8

.field private static isLandScape:Z = false

.field private static isSensorEnable:Z = false

.field private static isSingleReact:Z = false

.field public static self:Lcom/gamevil/nexus2/sensor/NexusSensor; = null

.field private static final threshold:F = 0.2f


# instance fields
.field private bShakeDevice:Z

.field private currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

.field private currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

.field private force:F

.field private isOriFirst:Z

.field private lastShake:J

.field private lastUpdate:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private oldAzimuth:F

.field private oldDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

.field private oldPitch:F

.field private oldRoll:F

.field private oldSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

.field private oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

.field private orientationX:I

.field private orientationXAngle:I

.field private orientationXInc:I

.field private orientationY:I

.field private orientationYAngle:I

.field private orientationYInc:I

.field private rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

.field private startAzimuth:F

.field private startPitch:F

.field private startRoll:F

.field private timeDiff:J

.field private topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamevil$nexus2$sensor$NexusSensor$SensorSide()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->$SWITCH_TABLE$com$gamevil$nexus2$sensor$NexusSensor$SensorSide:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->values()[Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->$SWITCH_TABLE$com$gamevil$nexus2$sensor$NexusSensor$SensorSide:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    .line 65
    sput-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSingleReact:Z

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isLandScape:Z

    .line 616
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    .line 96
    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationX:I

    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationY:I

    .line 97
    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    .line 100
    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXAngle:I

    iput v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYAngle:I

    .line 101
    iput-boolean v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->bShakeDevice:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isOriFirst:Z

    .line 106
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 107
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oldSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 108
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 109
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 118
    iput-wide v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->timeDiff:J

    iput-wide v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastUpdate:J

    iput-wide v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastShake:J

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->force:F

    .line 121
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    .line 122
    iput-object v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oldDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    .line 133
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    .line 134
    sput-object p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->appContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method private SetAccelerationDirection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 528
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_EAST:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_WEST:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    goto :goto_0

    .line 532
    :cond_1
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_NORTH:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    goto :goto_0

    .line 533
    :cond_2
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_SOUTH:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    goto :goto_0
.end method

.method private SetAccelerationShake()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 542
    iget-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastUpdate:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 543
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastUpdate:J

    .line 544
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastShake:J

    .line 545
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastX:F

    .line 546
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastY:F

    .line 547
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastZ:F

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iget-wide v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastUpdate:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->timeDiff:J

    .line 551
    iget-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->timeDiff:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 552
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    sget v1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    add-float/2addr v0, v1

    sget v1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastZ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->timeDiff:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->force:F

    .line 553
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->force:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 554
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iget-wide v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastShake:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 555
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->force:F

    invoke-virtual {p0, v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->onShake(F)V

    .line 557
    :cond_2
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastShake:J

    .line 559
    :cond_3
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastX:F

    .line 560
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastY:F

    .line 561
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastZ:F

    .line 562
    sget-wide v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->lastUpdate:J

    goto :goto_0
.end method

.method private SetOrientationAbsolute()V
    .locals 9

    .prologue
    const/high16 v8, 0x42340000    # 45.0f

    const/4 v7, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 325
    const/4 v2, 0x0

    .local v2, "pitchGap":F
    const/4 v3, 0x0

    .line 326
    .local v3, "rollGap":F
    const/4 v0, 0x1

    .line 327
    .local v0, "isPitchSlt":Z
    const/4 v1, 0x1

    .line 329
    .local v1, "isRollSlt":Z
    sget-boolean v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSingleReact:Z

    if-eqz v4, :cond_0

    .line 330
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 331
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 333
    cmpl-float v4, v2, v3

    if-lez v4, :cond_5

    .line 334
    const/4 v0, 0x1

    .line 335
    const/4 v1, 0x0

    .line 344
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 345
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    const/high16 v5, -0x3de40000    # -39.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_6

    .line 346
    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 347
    iget v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    .line 356
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 357
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 358
    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 359
    iget v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    .line 368
    :cond_2
    :goto_2
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v5, -0x3dcc0000    # -45.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_3

    .line 369
    sget v4, Lcom/gamevil/nexus2/ui/UIControllerView;->width:I

    sget v5, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x2d

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x5a

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationX:I

    .line 373
    :cond_3
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_4

    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_4

    .line 374
    sget v4, Lcom/gamevil/nexus2/ui/UIControllerView;->height:I

    sget v5, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x5a

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationY:I

    .line 376
    :cond_4
    return-void

    .line 338
    :cond_5
    const/4 v0, 0x0

    .line 339
    const/4 v1, 0x1

    goto :goto_0

    .line 349
    :cond_6
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    const/high16 v5, -0x3db40000    # -51.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 350
    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 351
    iget v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    goto :goto_1

    .line 361
    :cond_7
    sget v4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v5, -0x3fc00000    # -3.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 362
    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 363
    iget v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    goto :goto_2
.end method

.method private SetOrientationHeadup()V
    .locals 3

    .prologue
    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    .line 259
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isLandScape:Z

    if-eqz v0, :cond_5

    .line 261
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 263
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iget-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oldSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensor;->$SWITCH_TABLE$com$gamevil$nexus2$sensor$NexusSensor$SensorSide()[I

    move-result-object v0

    iget-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_1
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oldSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 318
    :cond_1
    return-void

    .line 265
    :cond_2
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 267
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 269
    :cond_3
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 271
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 273
    :cond_4
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 275
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 280
    :cond_5
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 282
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 284
    :cond_6
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    const/high16 v1, 0x43070000    # 135.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 286
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 288
    :cond_7
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 290
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_0

    .line 292
    :cond_8
    sget v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 294
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto/16 :goto_0

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->onTopUp()V

    goto :goto_1

    .line 306
    :pswitch_1
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->onBottomUp()V

    goto :goto_1

    .line 309
    :pswitch_2
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->onRightUp()V

    goto :goto_1

    .line 312
    :pswitch_3
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->onLeftUp()V

    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private SetOrientationRelative()V
    .locals 12

    .prologue
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v11, -0x3d4c0000    # -90.0f

    const/high16 v10, 0x42340000    # 45.0f

    .line 383
    const/4 v4, 0x0

    .local v4, "pitchGap":F
    const/4 v5, 0x0

    .line 384
    .local v5, "rollGap":F
    const/4 v2, 0x1

    .line 385
    .local v2, "isPitchSlt":Z
    const/4 v3, 0x1

    .line 387
    .local v3, "isRollSlt":Z
    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startPitch:F

    add-float v7, v8, v9

    .line 388
    .local v7, "startTop":F
    add-float v1, v7, v10

    .line 389
    .local v1, "endTop":F
    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startPitch:F

    sub-float v6, v8, v9

    .line 390
    .local v6, "startBottom":F
    sub-float v0, v6, v10

    .line 392
    .local v0, "endBottom":F
    sget-boolean v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSingleReact:Z

    if-eqz v8, :cond_0

    .line 394
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startPitch:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 395
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 397
    cmpl-float v8, v4, v5

    if-lez v8, :cond_6

    .line 398
    const/4 v2, 0x1

    .line 399
    const/4 v3, 0x0

    .line 408
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 409
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_7

    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v8, v8, v1

    if-gez v8, :cond_7

    .line 410
    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 411
    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    .line 420
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 421
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 422
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_8

    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 430
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v9, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v8, v9, :cond_b

    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    .line 435
    :cond_3
    :goto_3
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v9, -0x3dcc0000    # -45.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    .line 436
    sget v8, Lcom/gamevil/nexus2/ui/UIControllerView;->width:I

    sget v9, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x2d

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x5a

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationX:I

    .line 440
    :cond_4
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    iget v9, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startPitch:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sput v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    .line 441
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_5

    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_5

    .line 442
    sget v8, Lcom/gamevil/nexus2/ui/UIControllerView;->height:I

    sget v9, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x5a

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationY:I

    .line 444
    :cond_5
    return-void

    .line 402
    :cond_6
    const/4 v2, 0x0

    .line 403
    const/4 v3, 0x1

    goto :goto_0

    .line 413
    :cond_7
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_1

    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 414
    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 415
    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    goto :goto_1

    .line 423
    :cond_8
    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_2

    .line 425
    :cond_9
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    const/high16 v9, -0x3fc00000    # -3.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 426
    sget v8, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_a

    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_2

    .line 427
    :cond_a
    sget-object v8, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    iput-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    goto :goto_2

    .line 431
    :cond_b
    iget-object v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v9, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    goto/16 :goto_3
.end method


# virtual methods
.method public GetOrientationX()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationX:I

    return v0
.end method

.method public GetOrientationXAngle()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXAngle:I

    return v0
.end method

.method public GetOrientationXInc()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    return v0
.end method

.method public GetOrientationY()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationY:I

    return v0
.end method

.method public GetOrientationYAngle()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYAngle:I

    return v0
.end method

.method public GetOrientationYInc()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    return v0
.end method

.method public InitNexusSensorOrientationType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 177
    if-nez p1, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_RELATIVE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    iput-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    goto :goto_0
.end method

.method public InitializeNexusSensor(ZZZZ)V
    .locals 1
    .param p1, "bOri"    # Z
    .param p2, "bMag"    # Z
    .param p3, "bAcc"    # Z
    .param p4, "bGyr"    # Z

    .prologue
    .line 150
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->appContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->InitializeNexusSensor(Landroid/content/Context;ZZZZ)V

    .line 152
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StartOrientationListener()V

    .line 153
    return-void
.end method

.method public IsBottomAcceleration()Z
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_SOUTH:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsBottomOrientaion()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_BOTTOM:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsLeftAcceleration()Z
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_WEST:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsLeftOrientaion()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_LEFT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRightAcceleration()Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_EAST:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRightOrientaion()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_RIGHT:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsShakeDevice()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->bShakeDevice:Z

    return v0
.end method

.method public IsTopAcceleration()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentDir:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;->SENSOR_NORTH:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTopOrientaion()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;->SENSOR_TOP:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public NexusSensorEnable(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 160
    sput-boolean p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    .line 161
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    iput-boolean v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isOriFirst:Z

    .line 162
    return-void
.end method

.method public NexusSensorSingleReact(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 169
    sput-boolean p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSingleReact:Z

    .line 170
    return-void
.end method

.method public StartAccelerometerListener()V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-static {v0}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StartAccelerometerListener(Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;)V

    .line 197
    return-void
.end method

.method public StartAllListener()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StartOrientationListener()V

    .line 186
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StartAccelerometerListener()V

    .line 187
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StartMagneticListener()V

    .line 188
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StartGyroscopeListener()V

    .line 189
    return-void
.end method

.method public StartGyroscopeListener()V
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-static {v0}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StartGyroscopeListener(Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener;)V

    .line 205
    return-void
.end method

.method public StartMagneticListener()V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-static {v0}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StartMagneticListener(Lcom/gamevil/nexus2/sensor/NexusMagneticListener;)V

    .line 201
    return-void
.end method

.method public StartOrientationListener()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->self:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-static {v0}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StartOrientationListener(Lcom/gamevil/nexus2/sensor/NexusOrientationListener;)V

    .line 193
    return-void
.end method

.method public StopAccelerometerListener()V
    .locals 0

    .prologue
    .line 222
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StopAccelerometerListener()V

    .line 223
    return-void
.end method

.method public StopAllListener()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StopOrientationListener()V

    .line 212
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StopAccelerometerListener()V

    .line 213
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StopMagneticListener()V

    .line 214
    invoke-virtual {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->StopGyroscopeListener()V

    .line 215
    return-void
.end method

.method public StopGyroscopeListener()V
    .locals 0

    .prologue
    .line 230
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StopGyroscopeListener()V

    .line 231
    return-void
.end method

.method public StopMagneticListener()V
    .locals 0

    .prologue
    .line 226
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StopMagneticListener()V

    .line 227
    return-void
.end method

.method public StopOrientationListener()V
    .locals 0

    .prologue
    .line 218
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->StopOrientationListener()V

    .line 219
    return-void
.end method

.method public onAccelerationChanged(JFFF)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    .line 570
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 574
    :cond_0
    sput p5, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    .line 575
    sput p4, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    .line 576
    sput p3, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    .line 578
    sput-wide p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentTime:J

    .line 580
    invoke-direct {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->SetAccelerationDirection()V

    .line 581
    invoke-direct {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->SetAccelerationShake()V

    goto :goto_0
.end method

.method public onBottomUp()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onGyroscopeChanged(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 614
    return-void
.end method

.method public onLeftUp()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onMagneticChanged(FFF)V
    .locals 1
    .param p1, "currentAzimuth"    # F
    .param p2, "currentPitch"    # F
    .param p3, "currentRoll"    # F

    .prologue
    .line 595
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 601
    :cond_0
    sput p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    .line 602
    sput p2, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    .line 603
    sput p3, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    goto :goto_0
.end method

.method public onOrientationChanged(FFF)V
    .locals 3
    .param p1, "currentAzimuth"    # F
    .param p2, "currentPitch"    # F
    .param p3, "currentRoll"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 449
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isSensorEnable:Z

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iput-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 456
    iput-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oldSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 457
    iput-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->topBottomSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 458
    iput-object v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->rightLeftSide:Lcom/gamevil/nexus2/sensor/NexusSensor$SensorSide;

    .line 460
    iget-boolean v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isOriFirst:Z

    if-eqz v0, :cond_2

    .line 461
    iput p1, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startAzimuth:F

    .line 462
    iput p2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startPitch:F

    .line 463
    iput p3, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->startRoll:F

    .line 465
    iput v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXInc:I

    .line 466
    iput v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYInc:I

    .line 468
    iput-boolean v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->isOriFirst:Z

    .line 471
    :cond_2
    sput p1, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentAzimuth:F

    .line 472
    sput p2, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentPitch:F

    .line 473
    sput p3, Lcom/gamevil/nexus2/sensor/NexusSensor;->currentRoll:F

    .line 476
    float-to-int v0, p2

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationXAngle:I

    .line 477
    float-to-int v0, p3

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->orientationYAngle:I

    .line 481
    invoke-direct {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->SetOrientationHeadup()V

    .line 483
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_ABSOLUTE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    if-ne v0, v1, :cond_3

    .line 484
    invoke-direct {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->SetOrientationAbsolute()V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensor;->oriType:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;->ORIENTATION_RELATIVE:Lcom/gamevil/nexus2/sensor/NexusSensor$OrientationType;

    if-ne v0, v1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->SetOrientationRelative()V

    goto :goto_0
.end method

.method public onRightUp()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public onShake(F)V
    .locals 0
    .param p1, "force"    # F

    .prologue
    .line 587
    return-void
.end method

.method public onTopUp()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method
