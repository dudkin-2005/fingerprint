.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final MAX_CEC_MESSAGE_HISTORY:I = 0x14

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 86
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 115
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(I[B)[B
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/hdmi/HdmiCecController;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$700(JII[B)I
    .locals 0

    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result p0

    return p0
.end method

.method private addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 648
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 649
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecController;ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 650
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 652
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 654
    :cond_0
    return-void
.end method

.method private assertRunOnIoThread()V
    .locals 2

    .line 510
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 513
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    .line 516
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 519
    return-void

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildBody(I[B)[B
    .locals 3

    .line 230
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 231
    int-to-byte p0, p0

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 232
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 233
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 5

    .line 129
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v1

    .line 131
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    .line 132
    nop

    .line 133
    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->init(J)V

    .line 137
    return-object v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 10
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 182
    nop

    .line 185
    const/16 v0, 0x10

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 186
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 187
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 188
    nop

    .line 189
    goto :goto_1

    .line 186
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_1
    move v3, p2

    .line 196
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v0, :cond_5

    .line 197
    add-int v7, v3, v4

    rem-int/2addr v7, v0

    .line 198
    if-eq v7, v1, :cond_4

    .line 199
    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v8

    if-ne p1, v8, :cond_4

    .line 200
    nop

    .line 201
    move v8, v2

    :goto_3
    if-ge v8, v5, :cond_3

    .line 202
    invoke-direct {p0, v7, v7, v6}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 203
    nop

    .line 204
    nop

    .line 209
    move v8, v6

    goto :goto_4

    .line 201
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 209
    :cond_3
    move v8, v2

    :goto_4
    if-nez v8, :cond_4

    .line 210
    nop

    .line 211
    nop

    .line 216
    move v1, v7

    goto :goto_5

    .line 196
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 216
    :cond_5
    :goto_5
    nop

    .line 217
    const-string v0, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    new-array v3, v5, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v6

    const/4 p2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p2

    .line 217
    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-eqz p3, :cond_6

    .line 220
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {p2, p0, p3, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 227
    :cond_6
    return-void
.end method

.method private handleHotplug(IZ)V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 641
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 642
    const-string v0, "Hotplug event:[port:%d, connected:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 644
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .locals 0
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 630
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[R]:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 634
    return-void
.end method

.method private init(J)V
    .locals 2

    .line 141
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 143
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    .line 144
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .locals 1

    .line 547
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 548
    const/4 p1, 0x1

    return p1

    .line 550
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result p1

    return p1
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 450
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const/4 p1, 0x1

    return p1

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    return v0
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeEnableAudioReturnChannel(JIZ)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetLanguage(JLjava/lang/String;)V
.end method

.method private static native nativeSetOption(JIZ)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 556
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 561
    return-void
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 413
    and-int/lit8 v0, p1, 0x3

    .line 414
    nop

    .line 415
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 418
    nop

    .line 425
    :goto_0
    const/high16 v1, 0x30000

    and-int/2addr p1, v1

    .line 426
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 427
    const/high16 v2, 0x10000

    const/16 v3, 0xe

    if-eq p1, v2, :cond_2

    .line 437
    :goto_1
    if-ltz v3, :cond_5

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 429
    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-gt p1, v3, :cond_4

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 434
    :cond_4
    nop

    .line 444
    :cond_5
    return-object v1
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 463
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 464
    if-eqz p4, :cond_0

    .line 465
    const-string p1, "[P]:AllocatedAddress=%s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 468
    :cond_0
    return-void

    .line 471
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 474
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private sendPollMessage(III)Z
    .locals 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 493
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 494
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 496
    iget-wide v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    sget-object v4, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 497
    invoke-static {v2, v3, p1, p2, v4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result v2

    .line 498
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 499
    return v3

    .line 500
    :cond_0
    if-eq v2, v3, :cond_1

    .line 502
    const-string v4, "Failed to send a polling message(%d->%d) with return code %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    .line 502
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_2
    return v0
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method addLogicalAddress(I)I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 265
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeAddLogicalAddress(JI)I

    move-result p1

    return p1

    .line 268
    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 170
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 289
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    return-void
.end method

.method clearLogicalAddress()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 280
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeClearLogicalAddress(J)V

    .line 284
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 657
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 660
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 661
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 665
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 667
    invoke-virtual {v2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 668
    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 670
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 364
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeEnableAudioReturnChannel(JIZ)V

    .line 365
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 534
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 535
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p1
.end method

.method getLocalDeviceList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 409
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPhysicalAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 303
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 324
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 325
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method getVersion()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 314
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 376
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeIsConnected(JI)Z

    move-result p1

    return p1
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 565
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 567
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 568
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 569
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    .line 575
    if-nez p1, :cond_1

    .line 576
    return-void

    .line 578
    :cond_1
    nop

    .line 579
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 580
    return-void

    .line 572
    :cond_2
    :goto_0
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 396
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v2

    .line 397
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 398
    move-object v0, p0

    move v1, p2

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 399
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 584
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 586
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 591
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 593
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 348
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 349
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetLanguage(JLjava/lang/String;)V

    .line 353
    return-void
.end method

.method setOption(IZ)V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 336
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 337
    const-string/jumbo v0, "setOption: [flag:%d, enabled:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetOption(JIZ)V

    .line 339
    return-void
.end method
