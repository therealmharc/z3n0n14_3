.class public Lcom/gamevil/nexus2/sensor/NexusSensorManager;
.super Ljava/lang/Object;
.source "NexusSensorManager.java"


# static fields
.field private static final NEXUS_SENSOR_ACC:B = 0x2t

.field private static final NEXUS_SENSOR_GYR:B = 0x3t

.field private static final NEXUS_SENSOR_MAG:B = 0x1t

.field private static final NEXUS_SENSOR_ORI:B = 0x0t

.field private static final NEXUS_SENSOR_SUPPORT:B = 0x4t

.field private static accListener:Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener; = null

.field private static accSensor:Landroid/hardware/Sensor; = null

.field private static appContext:Landroid/content/Context; = null

.field private static gyrListener:Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener; = null

.field private static gyrSensor:Landroid/hardware/Sensor; = null

.field private static isAccSensor:Z = false

.field private static isGyrSensor:Z = false

.field private static isMagSensor:Z = false

.field private static isOriSensor:Z = false

.field private static isRunning:[Z = null

.field private static isSupported:[Z = null

.field private static magListener:Lcom/gamevil/nexus2/sensor/NexusMagneticListener; = null

.field private static magSensor:Landroid/hardware/Sensor; = null

.field private static mySensorListener:Landroid/hardware/SensorEventListener; = null

.field private static oriListener:Lcom/gamevil/nexus2/sensor/NexusOrientationListener; = null

.field private static oriSensor:Landroid/hardware/Sensor; = null

.field private static final sensorDelay:I = 0x1

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 25
    new-array v0, v1, [Z

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    .line 26
    new-array v0, v1, [Z

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isSupported:[Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 240
    new-instance v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;

    invoke-direct {v0}, Lcom/gamevil/nexus2/sensor/NexusSensorManager$1;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitializeNexusSensor(Landroid/content/Context;ZZZZ)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ori"    # Z
    .param p2, "mag"    # Z
    .param p3, "acc"    # Z
    .param p4, "gyr"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    :try_start_0
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->appContext:Landroid/content/Context;

    .line 76
    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->appContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    sput-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-static {}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->getCurrentSensorList()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "supportSensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz p1, :cond_0

    invoke-static {v4}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->IsSupportedSensor(B)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isOriSensor:Z

    .line 85
    if-eqz p2, :cond_1

    invoke-static {v3}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->IsSupportedSensor(B)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isMagSensor:Z

    .line 86
    if-eqz p3, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->IsSupportedSensor(B)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    sput-boolean v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isAccSensor:Z

    .line 87
    if-eqz p4, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->IsSupportedSensor(B)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_4
    sput-boolean v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isGyrSensor:Z

    .line 89
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NexusSensor][DEBUG] InitNexusSensor\n\nisOriSensor : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    sget-boolean v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isOriSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    const-string v4, "isMagSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isMagSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const-string v4, "isAccSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isAccSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    const-string v4, "isGyrSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isGyrSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-void

    .line 78
    .end local v1    # "supportSensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "supportSensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    move v2, v4

    .line 84
    goto :goto_1

    :cond_1
    move v2, v4

    .line 85
    goto :goto_2

    :cond_2
    move v2, v4

    .line 86
    goto :goto_3

    :cond_3
    move v3, v4

    .line 87
    goto :goto_4
.end method

.method public static IsNexusSensorListening(B)Z
    .locals 1
    .param p0, "type"    # B

    .prologue
    .line 97
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static IsSupportedSensor(B)Z
    .locals 4
    .param p0, "type"    # B

    .prologue
    .line 119
    const/4 v1, 0x3

    .line 120
    .local v1, "sensorType":I
    packed-switch p0, :pswitch_data_0

    .line 128
    :goto_0
    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "sensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isSupported:[Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v3, p0

    .line 130
    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isSupported:[Z

    aget-boolean v2, v2, p0

    return v2

    .line 121
    .end local v0    # "sensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 122
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 123
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 129
    .restart local v0    # "sensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static StartAccelerometerListener(Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;)V
    .locals 6
    .param p0, "accelerometerListener"    # Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 165
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isAccSensor:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accSensor:Landroid/hardware/Sensor;

    .line 168
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 169
    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accSensor:Landroid/hardware/Sensor;

    .line 168
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    aput-boolean v1, v0, v5

    .line 170
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accListener:Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** [NexusSensor] *** : StartAccelerometerListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    aget-boolean v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NexusSensor][Warning] It\'s not supported accelerometer sensor!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StartGyroscopeListener(Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener;)V
    .locals 6
    .param p0, "gyroscopeListener"    # Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener;

    .prologue
    .line 181
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isGyrSensor:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accSensor:Landroid/hardware/Sensor;

    .line 183
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    const/4 v1, 0x3

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 184
    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->gyrSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    .line 183
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 185
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->gyrListener:Lcom/gamevil/nexus2/sensor/NexusGyroscopeListener;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NexusSensor][Warning] It\'s not supported gyroscope sensor!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StartMagneticListener(Lcom/gamevil/nexus2/sensor/NexusMagneticListener;)V
    .locals 5
    .param p0, "magneticListener"    # Lcom/gamevil/nexus2/sensor/NexusMagneticListener;

    .prologue
    const/4 v4, 0x1

    .line 150
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isMagSensor:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->magSensor:Landroid/hardware/Sensor;

    .line 152
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 153
    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->magSensor:Landroid/hardware/Sensor;

    .line 152
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    aput-boolean v1, v0, v4

    .line 154
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->magListener:Lcom/gamevil/nexus2/sensor/NexusMagneticListener;

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*** [NexusSensor] *** : StartMagneticListener!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NexusSensor][Warning] It\'s not supported magnetic sensor!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StartOrientationListener(Lcom/gamevil/nexus2/sensor/NexusOrientationListener;)V
    .locals 6
    .param p0, "orientationListener"    # Lcom/gamevil/nexus2/sensor/NexusOrientationListener;

    .prologue
    .line 135
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isOriSensor:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->oriSensor:Landroid/hardware/Sensor;

    .line 137
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    const/4 v1, 0x0

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 138
    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v4, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->oriSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    .line 137
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 139
    sput-object p0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->oriListener:Lcom/gamevil/nexus2/sensor/NexusOrientationListener;

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NexusSensor][Warning] StartOrientationListener!!!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NexusSensor][Warning] It\'s not supported orientation sensor!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StopAccelerometerListener()V
    .locals 4

    .prologue
    .line 217
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 219
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static StopGyroscopeListener()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    aput-boolean v2, v1, v2

    .line 231
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->gyrSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static StopMagneticListener()V
    .locals 4

    .prologue
    .line 205
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 207
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->magSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static StopOrientationListener()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 193
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isRunning:[Z

    aput-boolean v2, v1, v2

    .line 195
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->mySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->oriSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isOriSensor:Z

    return v0
.end method

.method static synthetic access$1()Lcom/gamevil/nexus2/sensor/NexusOrientationListener;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->oriListener:Lcom/gamevil/nexus2/sensor/NexusOrientationListener;

    return-object v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isAccSensor:Z

    return v0
.end method

.method static synthetic access$3()Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->accListener:Lcom/gamevil/nexus2/sensor/NexusAccelerometerListener;

    return-object v0
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isGyrSensor:Z

    return v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->isMagSensor:Z

    return v0
.end method

.method static synthetic access$6()Lcom/gamevil/nexus2/sensor/NexusMagneticListener;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->magListener:Lcom/gamevil/nexus2/sensor/NexusMagneticListener;

    return-object v0
.end method

.method public static getCurrentSensorList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v3, Lcom/gamevil/nexus2/sensor/NexusSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "arrSensor":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NexusSensor][DEBUG] Current Hardware Sensor List!!\n\nSize : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "printList":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    return-object v0

    .line 106
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 107
    .local v2, "s":Landroid/hardware/Sensor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 108
    const-string v5, ", Vendor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    const-string v5, ", Power : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getResolution()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 110
    const-string v5, ", Range : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
