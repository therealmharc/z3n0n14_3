.class Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;
.super Ljava/lang/Object;
.source "NexusSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/sensor/NexusSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private accelerometerX:F

.field private accelerometerY:F

.field private accelerometerZ:F

.field private currentAzimuth:F

.field private currentPitch:F

.field private currentRoll:F

.field private now:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/Sensor;
    .param p2, "res"    # I

    .prologue
    .line 416
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 267
    .local v7, "vals":[F
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->now:J

    .line 269
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    .line 270
    .local v6, "sensorType":I
    packed-switch v6, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :pswitch_1
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    aget v0, v7, v2

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentAzimuth:F

    .line 291
    aget v0, v7, v3

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentPitch:F

    .line 297
    aget v0, v7, v4

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentRoll:F

    .line 299
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$1()Lcom/gamevil/nexus2/sensor/NexusOrientationListener;

    move-result-object v0

    iget v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentAzimuth:F

    iget v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentPitch:F

    iget v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentRoll:F

    invoke-interface {v0, v1, v2, v3}, Lcom/gamevil/nexus2/sensor/NexusOrientationListener;->onOrientationChanged(FFF)V

    goto :goto_0

    .line 305
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+++[Sensor Listener]+++ SensorType: TYPE_ACCELEROMETER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    aget v0, v7, v2

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerX:F

    .line 323
    aget v0, v7, v3

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerY:F

    .line 324
    aget v0, v7, v4

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerZ:F

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------- [ACCELEROMETER] x : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",z :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$3()Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->now:J

    iget v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerX:F

    iget v4, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerY:F

    iget v5, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->accelerometerZ:F

    invoke-interface/range {v0 .. v5}, Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;->onAccelerationChanged(JFFF)V

    goto :goto_0

    .line 335
    :pswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+++[Sensor Listener]+++ SensorType: TYPE_GYROSCOPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+++[Sensor Listener]+++ SensorType: TYPE_MAGNETIC_FIELD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    aget v0, v7, v2

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentAzimuth:F

    .line 353
    aget v0, v7, v3

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentPitch:F

    .line 354
    aget v0, v7, v4

    iput v0, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentRoll:F

    .line 356
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->access$6()Lcom/gamevil/nexus2/sensor/NexusMagneticListener;

    move-result-object v0

    iget v1, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentAzimuth:F

    iget v2, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentPitch:F

    iget v3, p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;->currentRoll:F

    invoke-interface {v0, v1, v2, v3}, Lcom/gamevil/nexus2/sensor/NexusMagneticListener;->onMagneticChanged(FFF)V

    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
