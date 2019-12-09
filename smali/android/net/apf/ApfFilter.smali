.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$InvalidRaException;,
        Landroid/net/apf/ApfFilter$ReceiveThread;,
        Landroid/net/apf/ApfFilter$Counter;,
        Landroid/net/apf/ApfFilter$ProcessRaResult;,
        Landroid/net/apf/ApfFilter$ApfConfiguration;
    }
.end annotation


# static fields
.field private static final APF_MAX_ETH_TYPE_BLACK_LIST_LEN:I = 0x14

.field private static final APF_PROGRAM_EVENT_LIFETIME_THRESHOLD:I = 0x2

.field private static final ARP_HEADER_OFFSET:I = 0xe

.field private static final ARP_IPV4_HEADER:[B

.field private static final ARP_OPCODE_OFFSET:I = 0x14

.field private static final ARP_OPCODE_REPLY:S = 0x2s

.field private static final ARP_OPCODE_REQUEST:S = 0x1s

.field private static final ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x26

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final ETH_TYPE_MAX:I = 0xffff

.field private static final ETH_TYPE_MIN:I = 0x600

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_ANY_HOST_ADDRESS:I = 0x0

.field private static final IPV4_BROADCAST_ADDRESS:I = -0x1

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_FLOW_LABEL_LEN:I = 0x3

.field private static final IPV6_FLOW_LABEL_OFFSET:I = 0xf

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z = false


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private final mContext:Landroid/content/Context;

.field private final mCountAndDropLabel:Ljava/lang/String;

.field private final mCountAndPassLabel:Ljava/lang/String;

.field private mDataSnapshot:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private final mDrop802_3Frames:Z

.field private final mEthTypeBlackList:[I

.field mHardwareAddress:[B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIPv4PrefixLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mInDozeMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mIpClientCallback:Landroid/net/ip/IpClient$Callback;

.field private mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumProgramUpdatesAllowingMulticast:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 255
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    .line 277
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    .line 294
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Landroid/net/apf/ApfFilter$1;

    invoke-direct {v0, p0}, Landroid/net/apf/ApfFilter$1;-><init>(Landroid/net/apf/ApfFilter;)V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 869
    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 350
    iget-object v0, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 351
    iput-object p4, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    .line 352
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 353
    iget-boolean p3, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->multicastFilter:Z

    iput-boolean p3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 354
    iget-boolean p3, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->ieee802_3Filter:Z

    iput-boolean p3, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    .line 355
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    .line 357
    iget-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {p1}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    const-string p1, "countAndPass"

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    .line 359
    const-string p1, "countAndDrop"

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    goto :goto_0

    .line 363
    :cond_0
    const-string p1, "__PASS__"

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    .line 364
    const-string p1, "__DROP__"

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    .line 368
    :goto_0
    iget-object p1, p2, Landroid/net/apf/ApfFilter$ApfConfiguration;->ethTypeBlackList:[I

    invoke-static {p1}, Landroid/net/apf/ApfFilter;->filterEthTypeBlackList([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mEthTypeBlackList:[I

    .line 370
    iput-object p5, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 373
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    .line 376
    iget-object p1, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    return-void
.end method

.method static synthetic access$000(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object p0
.end method

.method static synthetic access$200(Landroid/net/apf/ApfFilter;)I
    .locals 0

    .line 86
    iget p0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    return p0
.end method

.method static synthetic access$300(Landroid/net/apf/ApfFilter;)I
    .locals 0

    .line 86
    iget p0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    return p0
.end method

.method static synthetic access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object p0
.end method

.method static synthetic access$500(Landroid/net/apf/ApfFilter;J)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/apf/ApfFilter;)J
    .locals 2

    .line 86
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/net/apf/ApfFilter;Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/apf/ApfFilter;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static counterValue([BLandroid/net/apf/ApfFilter$Counter;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1463
    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$Counter;->offset()I

    move-result p1

    .line 1464
    if-gez p1, :cond_0

    .line 1465
    array-length v0, p0

    add-int/2addr p1, v0

    .line 1469
    :cond_0
    const-wide/16 v0, 0x0

    .line 1470
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 1471
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 1472
    add-int/lit8 p1, p1, 0x1

    .line 1470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1474
    :cond_1
    return-wide v0
.end method

.method private emitEpilogue(Landroid/net/apf/ApfGenerator;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1196
    :cond_0
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1201
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1202
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1203
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1204
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1205
    const-string v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1208
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1209
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1210
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1211
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1212
    const-string v0, "__DROP__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1213
    return-void
.end method

.method private emitPrologueLocked()Landroid/net/apf/ApfGenerator;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1107
    new-instance v0, Landroid/net/apf/ApfGenerator;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v1, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator;-><init>(I)V

    .line 1109
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1111
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->TOTAL_PACKETS:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1112
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->addAdd(I)Landroid/net/apf/ApfGenerator;

    .line 1114
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1133
    :cond_0
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1135
    iget-boolean v1, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    if-eqz v1, :cond_1

    .line 1137
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_802_3_FRAME:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1138
    const/16 v1, 0x600

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1142
    :cond_1
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETHERTYPE_BLACKLISTED:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1143
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mEthTypeBlackList:[I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    .line 1144
    iget-object v6, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1143
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1148
    :cond_2
    const-string/jumbo v1, "skipArpFilters"

    .line 1149
    sget v3, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1150
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1151
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1154
    const-string/jumbo v1, "skipIPv4Filters"

    .line 1158
    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1159
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1160
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1166
    const-string v1, "IPv6Filters"

    .line 1167
    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1170
    sget-object v3, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {v0, v3, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1171
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->PASSED_NON_IP_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1172
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1173
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ETH_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1174
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1177
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1178
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 1179
    return-object v0
.end method

.method private static filterEthTypeBlackList([I)[I
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, p0, v2

    .line 399
    const/16 v4, 0x600

    if-lt v3, v4, :cond_3

    const v4, 0xffff

    if-le v3, v4, :cond_0

    .line 400
    goto :goto_1

    .line 404
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    goto :goto_1

    .line 409
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_2

    .line 410
    const-string p0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passed EthType Black List size too large ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") using top "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " protocols"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    goto :goto_2

    .line 416
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Landroid/net/apf/-$$Lambda$ApfFilter$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/net/apf/-$$Lambda$ApfFilter$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private static findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;
    .locals 4

    .line 1433
    nop

    .line 1434
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1435
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-nez v3, :cond_0

    .line 1436
    goto :goto_0

    .line 1438
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1440
    return-object v0

    .line 1442
    :cond_1
    nop

    .line 1443
    nop

    .line 1434
    move-object v1, v2

    goto :goto_0

    .line 1444
    :cond_2
    return-object v1
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 899
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 900
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_NON_IPV4:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 901
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 904
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 905
    const-string v0, "checkTargetIPv4"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 906
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNKNOWN:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 907
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 910
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 911
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP_UNICAST_REPLY:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 912
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 915
    const-string v0, "checkTargetIPv4"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 916
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const/16 v2, 0x26

    if-nez v0, :cond_0

    .line 918
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 919
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_GARP_REPLY:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 920
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0

    .line 924
    :cond_0
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 925
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_ARP_OTHER_HOST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 926
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 929
    :goto_0
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_ARP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 930
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 931
    return-void
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 954
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v0, :cond_1

    .line 959
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 960
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v1, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 962
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 963
    const/16 v0, 0x1fff

    const-string/jumbo v1, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 965
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 966
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 967
    const/16 v0, 0x44

    const-string/jumbo v1, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 969
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 971
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    .line 972
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v2, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 973
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_DHCP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 974
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 977
    const-string/jumbo v0, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 980
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 981
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    .line 982
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 983
    const/16 v0, 0xe0

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 986
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_ADDR:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 987
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 988
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 989
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 990
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_BROADCAST_NET:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 991
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget v1, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    invoke-static {v0, v1}, Landroid/net/apf/ApfFilter;->ipv4BroadcastAddress([BI)I

    move-result v0

    .line 992
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 997
    :cond_0
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4_UNICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 998
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 999
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1000
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV4_L2_BROADCAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1001
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1005
    :cond_1
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV4:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1006
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1007
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 1030
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1033
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    const/16 v1, 0x26

    const/16 v2, 0x36

    if-eqz v0, :cond_1

    .line 1039
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z

    if-eqz v0, :cond_0

    .line 1041
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string v3, "dropAllIPv6Multicast"

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1045
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1046
    const/16 v0, 0x80

    const-string/jumbo v3, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0

    .line 1048
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v3, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1052
    :goto_0
    const-string v0, "dropAllIPv6Multicast"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1053
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_NON_ICMP_MULTICAST:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1054
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1055
    const/16 v0, 0xff

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1057
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_UNICAST_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1058
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1059
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_1

    .line 1062
    :cond_1
    sget-object v0, Landroid/net/apf/ApfFilter$Counter;->PASSED_IPV6_NON_ICMP:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v0}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1063
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndPassLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1069
    :goto_1
    const-string/jumbo v0, "skipUnsolicitedMulticastNA"

    .line 1070
    sget-object v3, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1072
    sget-object v2, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_ROUTER_SOLICITATION:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v2}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1073
    const/16 v2, 0x85

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1075
    const/16 v2, 0x88

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1078
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 1079
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1081
    sget-object v1, Landroid/net/apf/ApfFilter$Counter;->DROPPED_IPV6_MULTICAST_NA:Landroid/net/apf/ApfFilter$Counter;

    invoke-direct {p0, p1, v1}, Landroid/net/apf/ApfFilter;->maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    .line 1082
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mCountAndDropLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1083
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 1084
    return-void
.end method

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 390
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .locals 1

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p2, p1, p3, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method public static ipv4BroadcastAddress([BI)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1549
    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result p0

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 385
    const-string v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v2, v2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private logApfProgramEventLocked(J)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1284
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    if-nez v0, :cond_0

    .line 1285
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1288
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1289
    iget-wide v1, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 1290
    iget-wide p1, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    const-wide/16 v1, 0x2

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    .line 1291
    return-void

    .line 1293
    :cond_1
    iget-object p1, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {p1, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 1294
    return-void
.end method

.method public static maybeCreate(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;)Landroid/net/apf/ApfFilter;
    .locals 7

    .line 1384
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    iget-object v1, p1, Landroid/net/apf/ApfFilter$ApfConfiguration;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 1386
    if-nez v1, :cond_1

    return-object v0

    .line 1387
    :cond_1
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v2, :cond_2

    return-object v0

    .line 1388
    :cond_2
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v3, 0x200

    if-ge v2, v3, :cond_3

    .line 1389
    const-string p0, "ApfFilter"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unacceptably small APF limit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-object v0

    .line 1396
    :cond_3
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v3, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v2, v3, :cond_4

    return-object v0

    .line 1397
    :cond_4
    iget v2, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->supportsVersion(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1398
    const-string p0, "ApfFilter"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported APF version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-object v0

    .line 1402
    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    new-instance v6, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v6}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/apf/ApfFilter;-><init>(Landroid/content/Context;Landroid/net/apf/ApfFilter$ApfConfiguration;Landroid/net/util/InterfaceParams;Landroid/net/ip/IpClient$Callback;Landroid/net/metrics/IpConnectivityLog;)V

    return-object v0

    .line 1384
    :cond_6
    :goto_0
    return-object v0
.end method

.method private maybeSetCounter(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p2}, Landroid/net/apf/ApfFilter$Counter;->offset()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 163
    :cond_0
    return-void
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1310
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1311
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    return-void
.end method

.method private shouldInstallnewProgram()Z
    .locals 6

    .line 1300
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long/2addr v0, v2

    .line 1301
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected currentTimeSeconds()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 13

    monitor-enter p0

    .line 1478
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v1, :cond_0

    const-string v1, "RUNNING"

    goto :goto_0

    :cond_0
    const-string v1, "STOPPED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v1, :cond_1

    const-string v1, "DROP"

    goto :goto_1

    :cond_1
    const-string v1, "ALLOW"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPv4 address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    goto :goto_2

    :catch_0
    move-exception v0

    .line 1485
    :goto_2
    :try_start_2
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1486
    const-string v0, "No program installed."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 1489
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Program updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    const-string v0, "Last program length %d, installed %ds ago, lifetime %ds"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v4, v4

    .line 1492
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v1, v6

    iget-wide v7, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 1493
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v1, v7

    .line 1490
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const-string v0, "RA filters:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1497
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    .line 1498
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1500
    const-string v4, "Seen: %d, last %ds ago"

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 1501
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1500
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    const-string v4, "Last match:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1505
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1508
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1509
    goto :goto_3

    .line 1510
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1513
    const-string v0, "Last program:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1515
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    invoke-static {v0, v5}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1519
    const-string v0, "APF packet counters: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1521
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1522
    const-string v0, "APF counters not supported"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1523
    :cond_4
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B

    if-nez v0, :cond_5

    .line 1524
    const-string v0, "No last snapshot."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1527
    :cond_5
    :try_start_4
    const-class v0, Landroid/net/apf/ApfFilter$Counter;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/apf/ApfFilter$Counter;

    .line 1528
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v0, v0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Counter;

    .line 1529
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B

    invoke-static {v4, v1}, Landroid/net/apf/ApfFilter;->counterValue([BLandroid/net/apf/ApfFilter$Counter;)J

    move-result-wide v4

    .line 1531
    cmp-long v6, v4, v2

    if-eqz v6, :cond_6

    .line 1532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Counter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1534
    :cond_6
    goto :goto_4

    .line 1537
    :cond_7
    goto :goto_5

    .line 1535
    :catch_1
    move-exception v0

    .line 1536
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uh-oh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1544
    monitor-exit p0

    return-void

    .line 1477
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method installNewProgramLocked()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1221
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    nop

    .line 1225
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v1, v1, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    int-to-long v1, v1

    .line 1226
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1228
    invoke-static {}, Landroid/net/apf/ApfFilter$Counter;->totalSize()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 1233
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->emitPrologueLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v3

    .line 1237
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->emitEpilogue(Landroid/net/apf/ApfGenerator;)V

    .line 1240
    invoke-virtual {v3}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    .line 1241
    const-string v0, "ApfFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program exceeds maximum size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-void

    .line 1245
    :cond_1
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/apf/ApfFilter$Ra;

    .line 1246
    invoke-virtual {v5, v3}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    .line 1248
    invoke-virtual {v3}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_2

    goto :goto_1

    .line 1249
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    goto :goto_0

    .line 1253
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->emitPrologueLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    .line 1254
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/apf/ApfFilter$Ra;

    .line 1255
    invoke-virtual {v5, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1256
    goto :goto_2

    .line 1257
    :cond_4
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->emitEpilogue(Landroid/net/apf/ApfGenerator;)V

    .line 1258
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->generate()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    nop

    .line 1263
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v5

    .line 1264
    iput-wide v5, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    .line 1265
    iput-wide v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 1266
    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    .line 1267
    iget v2, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    iput v2, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 1272
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v2, v1}, Landroid/net/ip/IpClient$Callback;->installPacketFilter([B)V

    .line 1273
    invoke-direct {p0, v5, v6}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    .line 1274
    new-instance v2, Landroid/net/metrics/ApfProgramEvent;

    invoke-direct {v2}, Landroid/net/metrics/ApfProgramEvent;-><init>()V

    iput-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1275
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iput-wide v3, v2, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 1276
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 1277
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 1278
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    array-length v1, v1

    iput v1, v0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 1279
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    iget-boolean v1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-static {v7, v1}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v1

    iput v1, v0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 1280
    return-void

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    const-string v1, "ApfFilter"

    const-string v2, "Failed to generate APF program."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    return-void
.end method

.method maybeStartFilter()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    .line 431
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :try_start_1
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v0}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v0, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    new-array v0, v0, [B

    .line 437
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIpClientCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v1, v0}, Landroid/net/ip/IpClient$Callback;->installPacketFilter([B)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 442
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :try_start_2
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 444
    new-instance v1, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v2, v2

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 446
    invoke-static {v0, v1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 447
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v1, v1, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 451
    nop

    .line 452
    new-instance v1, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v1, p0, v0}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 453
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    .line 454
    return-void

    .line 442
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v1, "ApfFilter"

    const-string v2, "Error starting filter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    return-void
.end method

.method declared-synchronized processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1331
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    .line 1332
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 1336
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide p1

    iput-wide p1, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 1337
    iget p1, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 1346
    iget-object p1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object p2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1349
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->shouldInstallnewProgram()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1351
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1353
    :cond_0
    :try_start_1
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1330
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1356
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1358
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 1359
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1363
    :cond_3
    :try_start_3
    new-instance v0, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1367
    nop

    .line 1369
    :try_start_4
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1370
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1372
    :cond_4
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1373
    iget-object p1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1375
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1364
    :catch_0
    move-exception p1

    .line 1365
    :try_start_6
    const-string p2, "ApfFilter"

    const-string v0, "Error parsing RA"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1366
    sget-object p1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1329
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataSnapshot([B)V
    .locals 0

    monitor-enter p0

    .line 381
    :try_start_0
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mDataSnapshot:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDozeMode(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1426
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 1427
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mInDozeMode:Z

    .line 1428
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    monitor-exit p0

    return-void

    .line 1425
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2

    monitor-enter p0

    .line 1449
    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;

    move-result-object p1

    .line 1450
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1451
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1452
    :goto_1
    iget v1, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1453
    monitor-exit p0

    return-void

    .line 1455
    :cond_2
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    .line 1456
    iput p1, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    .line 1457
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1458
    monitor-exit p0

    return-void

    .line 1448
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1

    monitor-enter p0

    .line 1416
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 1417
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 1418
    if-nez p1, :cond_1

    .line 1419
    iget p1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 1421
    :cond_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    monitor-exit p0

    return-void

    .line 1415
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_0

    .line 1407
    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 1411
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1412
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    monitor-exit p0

    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
