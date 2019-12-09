.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .line 5572
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5568
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5574
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 5576
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 5577
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 5578
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 5579
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5581
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 5582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 5583
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 5585
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5586
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/audio/AudioService$1;

    .line 5559
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 5559
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5559
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Z

    .line 5559
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5559
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6029
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6030
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6031
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6032
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6033
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6034
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6035
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6036
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_7c

    .line 6037
    if-lez v1, :cond_3e

    .line 6038
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6040
    :cond_3e
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6041
    .local v2, "device":I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6042
    if-ne v2, v3, :cond_50

    const-string v3, "default"

    goto :goto_54

    .line 6043
    :cond_50
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 6044
    .local v3, "deviceName":Ljava/lang/String;
    :goto_54
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 6045
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6046
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6047
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6049
    :cond_67
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6050
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .line 6051
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 6036
    .end local v2    # "device":I
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 6053
    .end local v1    # "i":I
    :cond_7c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6054
    const-string v1, "   Devices: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6055
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;I)I

    move-result v1

    .line 6056
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 6059
    .local v0, "n":I
    .local v2, "i":I
    :goto_8d
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    move v5, v4

    .local v5, "device":I
    if-eq v4, v3, :cond_aa

    .line 6060
    and-int v4, v1, v5

    if-eqz v4, :cond_a7

    .line 6061
    add-int/lit8 v4, v0, 0x1

    .local v4, "n":I
    if-lez v0, :cond_9f

    .line 6062
    .end local v0    # "n":I
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6064
    :cond_9f
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6066
    move v0, v4

    .end local v4    # "n":I
    .restart local v0    # "n":I
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 6068
    :cond_aa
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .registers 6
    .param p1, "index"    # I

    .line 5699
    if-nez p1, :cond_4

    .line 5701
    const/4 p1, 0x0

    goto :goto_37

    .line 5702
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 5704
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_37

    .line 5705
    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 5707
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_37

    .line 5708
    :cond_21
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 5710
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_37

    .line 5713
    :cond_31
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    .line 5715
    :goto_37
    return p1
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 6019
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_7

    .line 6020
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0

    .line 6021
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_14

    goto :goto_15

    .line 6025
    :cond_14
    return p1

    .line 6022
    :cond_15
    :goto_15
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private hasValidSettingsName()Z
    .registers 2

    .line 5621
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 5784
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 6

    .line 5743
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5746
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x5

    if-ge v1, v2, :cond_75

    .line 5747
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5748
    .local v2, "device":I
    if-eq v2, v3, :cond_72

    .line 5751
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_1f

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_32

    :cond_1f
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_34

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_34

    and-int/lit16 v3, v2, 0x380

    if-nez v3, :cond_34

    const/4 v3, 0x4

    if-eq v2, v3, :cond_34

    const/16 v3, 0x8

    if-eq v2, v3, :cond_34

    .line 5757
    :cond_32
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_33
    goto :goto_6d

    .line 5758
    .end local v3    # "index":I
    :cond_34
    and-int/lit16 v3, v2, 0x380

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5759
    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 5760
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v3

    goto :goto_33

    .line 5761
    :cond_4c
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_59

    .line 5762
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    goto :goto_33

    .line 5763
    :cond_59
    const/high16 v3, 0x8000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_64

    .line 5764
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    goto :goto_33

    .line 5766
    :cond_64
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    .line 5768
    .restart local v3    # "index":I
    :goto_6d
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v2}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5746
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5773
    .end local v1    # "i":I
    :cond_75
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_7b

    .line 5774
    const/4 v1, 0x0

    .local v1, "index":I
    goto :goto_82

    .line 5776
    .end local v1    # "index":I
    :cond_7b
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0xa

    .line 5778
    .restart local v1    # "index":I
    :goto_82
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v3}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5780
    .end local v1    # "index":I
    monitor-exit v0

    .line 5781
    return-void

    .line 5780
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 4
    .param p1, "device"    # I

    .line 5723
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_1c

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_1e

    and-int/lit16 v0, p1, 0x380

    if-nez v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1e

    .line 5729
    :cond_1c
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1d
    goto :goto_55

    .line 5730
    .end local v0    # "index":I
    :cond_1e
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5731
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_1d

    .line 5732
    :cond_36
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_43

    .line 5733
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    goto :goto_1d

    .line 5734
    :cond_43
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4e

    .line 5735
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    goto :goto_1d

    .line 5737
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    .line 5739
    .restart local v0    # "index":I
    :goto_55
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5740
    return-void
.end method

.method public checkFixedVolumeDevices()V
    .registers 7

    .line 6002
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6004
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3e

    .line 6005
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 6006
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6007
    .local v2, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 6008
    .local v3, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v2

    if-nez v4, :cond_31

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_38

    if-eqz v3, :cond_38

    .line 6010
    :cond_31
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 6012
    :cond_38
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6005
    .end local v2    # "device":I
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 6015
    .end local v1    # "i":I
    :cond_3e
    monitor-exit v0

    .line 6016
    return-void

    .line 6015
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getIndex(I)I
    .registers 6
    .param p1, "device"    # I

    .line 5889
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5890
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5891
    .local v1, "index":I
    if-ne v1, v2, :cond_15

    .line 5893
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move v1, v2

    .line 5895
    :cond_15
    monitor-exit v0

    return v1

    .line 5896
    .end local v1    # "index":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .line 5906
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    .line 5910
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 5
    .param p1, "device"    # I

    .line 5610
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5611
    const/4 v0, 0x0

    return-object v0

    .line 5613
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 5614
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5615
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    .line 5617
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .registers 2

    .line 5998
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .registers 5
    .param p1, "device"    # I

    .line 5900
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5901
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    .line 5902
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public mute(Z)V
    .registers 12
    .param p1, "state"    # Z

    .line 5972
    const/4 v0, 0x0

    .line 5973
    .local v0, "changed":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5974
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v2, :cond_1b

    .line 5975
    const/4 v0, 0x1

    .line 5976
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 5980
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5987
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_37

    .line 5988
    if-eqz v0, :cond_36

    .line 5990
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5991
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5992
    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5993
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5995
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_36
    return-void

    .line 5987
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 7
    .param p1, "checkOthers"    # Z

    .line 5589
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 5590
    .local v0, "devices":I
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_b

    .line 5591
    return v0

    .line 5593
    :cond_b
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5594
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5595
    if-eqz p1, :cond_18

    .line 5597
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;I)V

    .line 5600
    :cond_18
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v3, :cond_27

    .line 5601
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 5603
    :cond_27
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 5604
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 5605
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 5603
    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5606
    return v0
.end method

.method public readSettings()V
    .registers 14

    .line 5625
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5626
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_de

    .line 5628
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1e

    .line 5629
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5630
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_db

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_de

    return-void

    .line 5635
    :cond_1e
    :try_start_1e
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c1

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x7

    if-ne v2, v6, :cond_2c

    goto/16 :goto_c1

    .line 5644
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_db

    .line 5645
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_de

    .line 5646
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5647
    const v0, 0x4fffffff    # 8.5899341E9f

    .line 5649
    .local v0, "remainingDevices":I
    const/4 v2, 0x0

    move v6, v0

    move v0, v2

    .local v0, "i":I
    .local v6, "remainingDevices":I
    :goto_37
    if-eqz v6, :cond_76

    .line 5650
    shl-int v7, v5, v0

    .line 5651
    .local v7, "device":I
    and-int v8, v7, v6

    if-nez v8, :cond_40

    .line 5652
    goto :goto_73

    .line 5654
    :cond_40
    not-int v8, v7

    and-int/2addr v6, v8

    .line 5659
    const/4 v8, -0x1

    if-ne v7, v3, :cond_4c

    .line 5660
    :try_start_45
    sget-object v9, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    goto :goto_4d

    :cond_4c
    move v9, v8

    .line 5662
    .local v9, "defaultIndex":I
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v10

    if-nez v10, :cond_55

    .line 5663
    move v10, v9

    .local v10, "index":I
    goto :goto_65

    .line 5665
    .end local v10    # "index":I
    :cond_55
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v10

    .line 5666
    .local v10, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5667
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, -0x2

    .line 5666
    invoke-static {v11, v10, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .end local v10    # "name":Ljava/lang/String;
    move v10, v11

    .line 5669
    .local v10, "index":I
    :goto_65
    if-ne v10, v8, :cond_68

    .line 5670
    goto :goto_73

    .line 5673
    :cond_68
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int v11, v4, v10

    invoke-direct {p0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v11

    invoke-virtual {v8, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 5649
    .end local v7    # "device":I
    .end local v9    # "defaultIndex":I
    .end local v10    # "index":I
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 5678
    .end local v0    # "i":I
    :cond_76
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_80

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x5

    if-ne v0, v8, :cond_bc

    .line 5680
    :cond_80
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ne v0, v5, :cond_bc

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    if-ne v0, v3, :cond_bc

    .line 5681
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v2

    mul-int/2addr v4, v0

    .line 5682
    .local v4, "index":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5683
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add SPEAKER to device list stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    .end local v4    # "index":I
    .end local v6    # "remainingDevices":I
    :cond_bc
    monitor-exit v1

    .line 5689
    return-void

    .line 5688
    :catchall_be
    move-exception v0

    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_45 .. :try_end_c0} :catchall_be

    throw v0

    .line 5637
    :cond_c1
    :goto_c1
    :try_start_c1
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v5

    mul-int/2addr v4, v2

    .line 5638
    .restart local v4    # "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 5639
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v4, v2

    .line 5641
    :cond_d3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5642
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_c1 .. :try_end_d9} :catchall_db

    :try_start_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_de

    return-void

    .line 5644
    .end local v4    # "index":I
    :catchall_db
    move-exception v2

    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v2

    .line 5645
    :catchall_de
    move-exception v1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_de

    throw v1
.end method

.method public refreshRange(I)V
    .registers 7
    .param p1, "sourceStreamType"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5921
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 5922
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 5924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 5925
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 5926
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 5927
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5924
    .end local v1    # "device":I
    .end local v2    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 5929
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 10
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5941
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_7

    .line 5942
    return-void

    .line 5944
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    .line 5947
    .local v0, "srcStreamType":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 5948
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5949
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 5950
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5949
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 5953
    .end local v3    # "i":I
    :cond_31
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5954
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    nop

    .local v2, "i":I
    :goto_34
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_50

    .line 5955
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 5956
    .local v4, "device":I
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 5957
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v1, v0, v6}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5959
    invoke-virtual {p0, v1, v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5954
    .end local v4    # "device":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 5961
    .end local v2    # "i":I
    :cond_50
    return-void
.end method

.method public setAllIndexesToMax()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "VolumeStreamState.class"
    .end annotation

    .line 5966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 5967
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5969
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 22
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 5791
    move-object/from16 v4, p3

    const/4 v0, 0x3

    const/4 v5, 0x2

    if-eqz v4, :cond_14

    const-string v6, "ThreeKeySpeakerMediaVolume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 5792
    :cond_14
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v0, :cond_44

    if-ne v3, v5, :cond_44

    .line 5793
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I
    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$5202(Lcom/android/server/audio/AudioService;I)I

    .line 5794
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIndex mPerSpeakerMediaVolume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    :cond_44
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v0, :cond_76

    const/16 v6, 0x10

    if-ne v3, v6, :cond_76

    .line 5797
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I
    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$5302(Lcom/android/server/audio/AudioService;I)I

    .line 5798
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIndex mPerScoMediaVolume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    :cond_76
    const/4 v6, 0x0

    if-eqz v4, :cond_81

    const-string v7, "GradientingMusicVol"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    :cond_81
    iget v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v0, :cond_8a

    .line 5805
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mGradientingVol:Z
    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$5402(Lcom/android/server/audio/AudioService;Z)Z

    .line 5808
    :cond_8a
    const/4 v7, 0x0

    .line 5814
    .local v7, "changed":Z
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 5815
    :try_start_92
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_19a

    .line 5816
    :try_start_95
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 5817
    .local v0, "oldIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    move v2, v10

    .line 5818
    .end local p1    # "index":I
    .local v2, "index":I
    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_ae

    iget-object v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-eqz v10, :cond_ae

    .line 5819
    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v10

    .line 5821
    :cond_ae
    iget-object v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5823
    const/4 v10, 0x1

    if-eq v0, v2, :cond_b8

    move v11, v10

    goto :goto_b9

    :cond_b8
    move v11, v6

    :goto_b9
    move v7, v11

    .line 5831
    iget-object v11, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v12, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v11, v12}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v11

    .line 5832
    .local v11, "currentStreamDevice":I
    if-ne v3, v11, :cond_c6

    move v12, v10

    goto :goto_c7

    :cond_c6
    move v12, v6

    .line 5834
    .local v12, "currentDevice":Z
    :goto_c7
    iget-object v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v14, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v13, v14}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v13

    if-ne v3, v13, :cond_d2

    goto :goto_d3

    :cond_d2
    move v10, v6

    .line 5835
    .local v10, "isCurrentDevice":Z
    :goto_d3
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 5836
    .local v13, "numStreamTypes":I
    add-int/lit8 v14, v13, -0x1

    .line 5836
    .local v14, "streamType":I
    :goto_d9
    if-ltz v14, :cond_112

    .line 5837
    iget-object v15, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v15}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v15

    aget-object v15, v15, v14

    .line 5838
    .local v15, "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v14, v6, :cond_10d

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v14

    iget v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v5, :cond_10d

    if-nez v7, :cond_f7

    .line 5840
    invoke-virtual {v15, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v5

    if-nez v5, :cond_10d

    .line 5841
    :cond_f7
    iget-object v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v2, v6, v14}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v5

    .line 5842
    .local v5, "scaledIndex":I
    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5843
    if-eqz v10, :cond_10d

    .line 5844
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5845
    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v6, v14}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v6

    .line 5844
    invoke-virtual {v15, v5, v6, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5836
    .end local v5    # "scaledIndex":I
    .end local v15    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_10d
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_d9

    .line 5850
    .end local v14    # "streamType":I
    :cond_112
    if-eqz v7, :cond_139

    iget v5, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_139

    if-ne v3, v6, :cond_139

    .line 5852
    const/16 v16, 0x0

    .line 5852
    .local v16, "i":I
    :goto_11d
    move/from16 v5, v16

    .line 5852
    .end local v16    # "i":I
    .local v5, "i":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_139

    .line 5853
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 5854
    .local v6, "otherDevice":I
    and-int/lit8 v14, v6, 0x70

    if-eqz v14, :cond_136

    .line 5855
    iget-object v14, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5852
    .end local v6    # "otherDevice":I
    :cond_136
    add-int/lit8 v16, v5, 0x1

    .line 5852
    .end local v5    # "i":I
    .restart local v16    # "i":I
    goto :goto_11d

    .line 5859
    .end local v10    # "isCurrentDevice":Z
    .end local v12    # "currentDevice":Z
    .end local v13    # "numStreamTypes":I
    .end local v16    # "i":I
    :cond_139
    monitor-exit v9
    :try_end_13a
    .catchall {:try_start_95 .. :try_end_13a} :catchall_197

    move v5, v11

    .line 5860
    .end local v11    # "currentStreamDevice":I
    .local v5, "currentStreamDevice":I
    :try_start_13b
    monitor-exit v8
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_19a

    .line 5861
    if-eqz v7, :cond_196

    .line 5862
    add-int/lit8 v6, v0, 0x5

    div-int/lit8 v0, v6, 0xa

    .line 5863
    add-int/lit8 v6, v2, 0x5

    div-int/lit8 v2, v6, 0xa

    .line 5865
    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v8, :cond_167

    .line 5866
    if-nez v4, :cond_15e

    .line 5867
    const-string v6, "AudioService"

    const-string v8, "No caller for volume_changed event"

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5869
    :cond_15e
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v8, v8, 0xa

    invoke-static {v6, v0, v2, v8, v4}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 5875
    :cond_167
    if-eqz v4, :cond_174

    const-string v6, "ThreeKeySpeakerMediaVolume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_174

    const/4 v6, 0x2

    if-ne v5, v6, :cond_196

    .line 5878
    :cond_174
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5879
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5880
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    sget-object v9, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5882
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v6, v8}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5885
    :cond_196
    return v7

    .line 5859
    .end local v0    # "oldIndex":I
    .end local v2    # "index":I
    .end local v5    # "currentStreamDevice":I
    .restart local p1    # "index":I
    :catchall_197
    move-exception v0

    .line 5859
    .end local p1    # "index":I
    .restart local v2    # "index":I
    :try_start_198
    monitor-exit v9
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    :try_start_199
    throw v0

    .line 5860
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :catchall_19a
    move-exception v0

    .line 5860
    .end local p1    # "index":I
    .restart local v2    # "index":I
    monitor-exit v8
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_19a

    throw v0
.end method
