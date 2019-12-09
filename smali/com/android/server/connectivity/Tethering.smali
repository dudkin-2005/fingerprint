.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"

.field private static final GROUP_NAME:Ljava/lang/String; = "com.android.server.connectivity.tethering"

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z

.field private static mProject:Ljava/lang/String;

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothTethered:Z

.field private mCallerPkg:Ljava/lang/String;

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private mConnectedClients:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mUsbTethered:Z

.field private mWifiTetherRequested:Z

.field private mWifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 148
    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 157
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 158
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    .line 227
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "systemProperties"    # Lcom/android/server/connectivity/MockableSystemProperties;
    .param p7, "deps"    # Lcom/android/server/connectivity/tethering/TetheringDependencies;

    move-object/from16 v0, p0

    .line 233
    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 187
    new-instance v2, Landroid/net/util/SharedLog;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    .line 222
    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    .line 223
    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 224
    iput v2, v0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    .line 226
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    .line 234
    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "constructed"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    .line 235
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 236
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 237
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 238
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 239
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 240
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 241
    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 243
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 245
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 247
    new-instance v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v10, "TetherMaster"

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v9, v0, v10, v11, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 248
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v9}, Lcom/android/internal/util/StateMachine;->start()V

    .line 250
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v9}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 251
    .local v9, "smHandler":Landroid/os/Handler;
    new-instance v15, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 252
    invoke-virtual {v10, v9, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v12

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v10, v15

    move-object/from16 v16, v11

    move-object v11, v9

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    .line 255
    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v12, 0x50005

    invoke-virtual {v1, v2, v10, v11, v12}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 257
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    .line 259
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    const-string v11, "CarrierConfigChangeListener"

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;-><init>(Lcom/android/server/connectivity/Tethering;)V

    move-object v10, v15

    move-object v13, v9

    move-object/from16 v16, v14

    move-object v14, v2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    .line 272
    new-instance v1, Lcom/android/server/connectivity/tethering/SimChangeListener;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-direct {v1, v10, v9, v11}, Lcom/android/server/connectivity/tethering/SimChangeListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    .line 277
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters()V

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/os/ResultReceiver;
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Tethering;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Lcom/android/internal/util/State;
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeUpdateConfiguration()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/NetworkState;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/util/InterfaceSet;

    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .line 146
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/SimChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/ResultReceiver;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "x3"    # Landroid/net/LinkProperties;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 146
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .line 2085
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 2086
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 2085
    .end local v3    # "arg":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2088
    :cond_12
    return v1
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .registers 7
    .param p1, "type"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 626
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 631
    .local v1, "ident":J
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 633
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    goto :goto_2b

    .line 633
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 636
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ident":J
    :cond_2b
    :goto_2b
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired()Z
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 446
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 448
    :cond_e
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 449
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v2, :cond_15

    return v1

    .line 452
    :cond_15
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 454
    .local v1, "isEntitlementCheckRequired":Z
    xor-int/lit8 v3, v1, 0x1

    return v3
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .registers 7
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "requestedState"    # I

    .line 1219
    packed-switch p2, :pswitch_data_42

    .line 1229
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void

    .line 1226
    :pswitch_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    .line 1227
    .local v0, "result":I
    goto :goto_24

    .line 1222
    .end local v0    # "result":I
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 1223
    .restart local v0    # "result":I
    nop

    .line 1230
    :goto_24
    nop

    .line 1232
    if-eqz v0, :cond_3f

    .line 1233
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return-void

    .line 1236
    :cond_3f
    return-void

    nop

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strarray"    # [Ljava/lang/String;

    .line 2238
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "apState"    # I

    .line 1127
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 1135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1136
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1137
    .local v1, "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_2f

    .line 1138
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    .line 1139
    return-void

    .line 1143
    .end local v1    # "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2f
    nop

    .line 1143
    .local v0, "i":I
    :goto_30
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1144
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1145
    .local v1, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v2

    if-nez v2, :cond_4c

    .line 1146
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    .line 1147
    return-void

    .line 1143
    .end local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1151
    .end local v0    # "i":I
    :cond_4f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "no interface name specified"

    goto :goto_77

    .line 1153
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 463
    const/4 v0, 0x1

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 465
    .local v1, "isProvisioningRequired":Z
    :goto_c
    packed-switch p1, :pswitch_data_3e

    .line 484
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_3c

    .line 481
    :pswitch_1a
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    .line 482
    goto :goto_3c

    .line 474
    :pswitch_1e
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 475
    .local v0, "result":I
    if-eqz v1, :cond_29

    if-nez v0, :cond_29

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 478
    :cond_29
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 479
    goto :goto_3c

    .line 467
    .end local v0    # "result":I
    :pswitch_2d
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v0

    .line 468
    .restart local v0    # "result":I
    if-eqz v1, :cond_38

    if-nez v0, :cond_38

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 471
    :cond_38
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 472
    nop

    .line 487
    .end local v0    # "result":I
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1e
        :pswitch_1a
    .end packed-switch
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .registers 9
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "wifiIpMode"    # I

    .line 1160
    packed-switch p2, :pswitch_data_42

    .line 1168
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1169
    return-void

    .line 1165
    :pswitch_1a
    const/4 v0, 0x3

    .line 1166
    .local v0, "ipServingMode":I
    goto :goto_1e

    .line 1162
    .end local v0    # "ipServingMode":I
    :pswitch_1c
    const/4 v0, 0x2

    .line 1163
    .restart local v0    # "ipServingMode":I
    nop

    .line 1169
    :goto_1e
    nop

    .line 1172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 1173
    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 1174
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_41

    .line 1176
    :cond_2d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1176
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1180
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method private static getIPv4DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .registers 3
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 2213
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2214
    :cond_4
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .registers 4
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 2218
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2222
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 2223
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1b

    .line 2227
    :cond_12
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2224
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method private static getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 4
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "dst"    # Ljava/net/InetAddress;

    .line 2231
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 2232
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    goto :goto_d

    .line 2233
    :cond_c
    move-object v1, v0

    .line 2234
    .local v1, "ri":Landroid/net/RouteInfo;
    :goto_d
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_14
    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 6
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 570
    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    .line 584
    .local v0, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 585
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 586
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 587
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 588
    .local v2, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    return-object v2
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 355
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 356
    const-string/jumbo v1, "vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "wigigIface":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 358
    const/4 v2, 0x3

    return v2

    .line 360
    :cond_1a
    const/4 v2, 0x0

    return v2

    .line 361
    .end local v1    # "wigigIface":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 362
    const/4 v1, 0x1

    return v1

    .line 363
    :cond_24
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 364
    const/4 v1, 0x2

    return v1

    .line 366
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .registers 4
    .param p1, "ignored"    # Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 266
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->reevaluateSimCardProvisioning()V

    .line 267
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/connectivity/Tethering;)V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED SIM card change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 7
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .line 1322
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1323
    return-void
.end method

.method private makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;
    .registers 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 2092
    new-instance v0, Lcom/android/server/connectivity/Tethering$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 2177
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    .line 2178
    .local v0, "interfaceType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 2179
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2180
    return-void

    .line 2182
    :cond_1e
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 2183
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    .line 2187
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2188
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2189
    return-void

    .line 2192
    :cond_24
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2193
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v10, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 2196
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    move-object v1, v10

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    invoke-direct {v0, v10}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 2197
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    .line 2199
    return-void
.end method

.method private maybeUpdateConfiguration()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)I

    move-result v0

    .line 321
    .local v0, "dunCheck":I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    if-ne v0, v1, :cond_d

    return-void

    .line 322
    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 323
    return-void
.end method

.method private notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "state"    # I
    .param p4, "error"    # I

    .line 2110
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2111
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2112
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2113
    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 2114
    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 2118
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_7b

    .line 2120
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED iface=%s state=%s error=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2126
    :try_start_39
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p3, v6, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v3

    :goto_3f
    invoke-interface {v0, p1, v5}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43

    .line 2129
    goto :goto_44

    .line 2127
    :catch_43
    move-exception v0

    .line 2134
    :goto_44
    const/4 v0, 0x5

    if-ne p4, v0, :cond_4f

    .line 2135
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x50006

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2138
    :cond_4f
    packed-switch p3, :pswitch_data_7e

    .line 2148
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void

    .line 2145
    :pswitch_69
    const v0, 0x50001

    .line 2146
    .local v0, "which":I
    goto :goto_71

    .line 2141
    .end local v0    # "which":I
    :pswitch_6d
    const v0, 0x50002

    .line 2142
    .restart local v0    # "which":I
    nop

    .line 2149
    :goto_71
    nop

    .line 2151
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2152
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 2153
    return-void

    .line 2118
    .end local v0    # "which":I
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6d
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "newLp"    # Landroid/net/LinkProperties;

    .line 2158
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2160
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_40

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2161
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 2164
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .local v2, "state":I
    nop

    .line 2166
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_59

    .line 2168
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    .line 2170
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IControlsTethering;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    .line 2168
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2171
    const v0, 0x50007

    .line 2172
    .local v0, "which":I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50007

    invoke-virtual {v1, v3, v2, v4, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2173
    return-void

    .line 2163
    .end local v0    # "which":I
    .end local v2    # "state":I
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got notification from stale iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2164
    monitor-exit v0

    return-void

    .line 2166
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .registers 5
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1342
    if-eqz p1, :cond_2d

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_2d

    .line 1343
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1344
    .local v1, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1345
    const/4 v0, 0x1

    return v0

    .line 1347
    .end local v1    # "ifname":Ljava/lang/String;
    :cond_2c
    goto :goto_14

    .line 1349
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private reevaluateSimCardProvisioning()V
    .registers 8

    .line 1353
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1354
    :cond_9
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1356
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v0, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 1359
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1360
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2f

    .line 1361
    goto :goto_45

    .line 1363
    :cond_2f
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1364
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    .line 1365
    .local v5, "interfaceType":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    .line 1366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "interfaceType":I
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1369
    .end local v2    # "i":I
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_62

    .line 1371
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1372
    .local v2, "tetherType":I
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->startProvisionIntent(I)V

    .line 1373
    .end local v2    # "tetherType":I
    goto :goto_4d

    .line 1374
    :cond_61
    return-void

    .line 1369
    :catchall_62
    move-exception v2

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v2
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 606
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 607
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 608
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 545
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 546
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .registers 7
    .param p1, "type"    # I

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 599
    .local v1, "ident":J
    :try_start_19
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_25

    .line 601
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    nop

    .line 603
    return-void

    .line 601
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 618
    .local v1, "ident":J
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2a

    .line 620
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    nop

    .line 622
    return-void

    .line 620
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .registers 4
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .line 490
    if-eqz p1, :cond_6

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 493
    :cond_6
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 13

    .line 733
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 735
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v1, "tetherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v2, "localOnlyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v3, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    .line 745
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    .line 746
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 749
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 751
    .local v5, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 752
    nop

    .line 752
    .local v4, "i":I
    :goto_2a
    :try_start_2a
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_81

    .line 753
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 754
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 755
    .local v8, "iface":Ljava/lang/String;
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v9, :cond_4a

    .line 756
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 757
    :cond_4a
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_53

    .line 758
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 759
    :cond_53
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_5c

    .line 760
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 761
    :cond_5c
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7e

    .line 770
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 771
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    goto :goto_7b

    .line 772
    :cond_6a
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 773
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    goto :goto_7b

    .line 774
    :cond_73
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 775
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 778
    :cond_7b
    :goto_7b
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v8    # "iface":Ljava/lang/String;
    :cond_7e
    :goto_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 781
    .end local v4    # "i":I
    :cond_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_2a .. :try_end_82} :catchall_e7

    .line 782
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v4, "bcast":Landroid/content/Intent;
    const/high16 v6, 0x24000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 785
    const-string v6, "availableArray"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 786
    const-string/jumbo v6, "localOnlyArray"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 787
    const-string/jumbo v6, "tetherArray"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 788
    const-string v6, "erroredArray"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 789
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 818
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    const/16 v7, 0xe

    if-eqz v6, :cond_c4

    .line 819
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-nez v6, :cond_c0

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_ba

    goto :goto_c0

    .line 822
    :cond_ba
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_e6

    .line 820
    :cond_c0
    :goto_c0
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_e6

    .line 824
    :cond_c4
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-eqz v6, :cond_d9

    .line 825
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_d0

    .line 826
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_e6

    .line 829
    :cond_d0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 830
    const/16 v6, 0x4e20

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_e6

    .line 832
    :cond_d9
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_e3

    .line 833
    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_e6

    .line 835
    :cond_e3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 838
    :goto_e6
    return-void

    .line 781
    .end local v4    # "bcast":Landroid/content/Intent;
    :catchall_e7
    move-exception v4

    :try_start_e8
    monitor-exit v6
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v4
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 552
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 555
    .local v1, "ident":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    .line 557
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    nop

    .line 559
    return-void

    .line 557
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 514
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 515
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_19

    .line 522
    :cond_d
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 541
    return-void

    .line 516
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 519
    return-void
.end method

.method private setWifiTethering(Z)I
    .registers 8
    .param p1, "enable"    # Z

    .line 496
    const/4 v0, 0x5

    .line 497
    .local v0, "rval":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 499
    .local v1, "ident":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_29

    .line 500
    :try_start_8
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 501
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    .line 502
    .local v4, "mgr":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_17

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_17
    if-nez p1, :cond_20

    .line 503
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 504
    :cond_1f
    const/4 v0, 0x0

    .line 506
    .end local v4    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 508
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    nop

    .line 510
    return v0

    .line 506
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 508
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private showTetheredNotification(I)V
    .registers 3
    .param p1, "id"    # I

    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 842
    return-void
.end method

.method private startProvisionIntent(I)V
    .registers 5
    .param p1, "tetherType"    # I

    .line 641
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 642
    .local v0, "startProvIntent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 646
    return-void
.end method

.method private startStateMachineUpdaters()V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 289
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 297
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 304
    .local v2, "umi":Landroid/os/UserManagerInternal;
    if-eqz v2, :cond_5a

    .line 305
    new-instance v3, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 307
    :cond_5a
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 2202
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2203
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_26

    .line 2204
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2205
    return-void

    .line 2207
    :cond_26
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stop()V

    .line 2208
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2209
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "requestedState"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 656
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 657
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    monitor-exit v0

    return v2

    .line 662
    :cond_2b
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_4d

    .line 663
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 672
    :cond_4d
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50066

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p2, v5, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 680
    monitor-exit v0

    return v5

    .line 681
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private tetherMatchingInterfaces(II)V
    .registers 9
    .param p1, "requestedState"    # I
    .param p2, "interfaceType"    # I

    .line 1193
    const/4 v0, 0x0

    .line 1195
    .local v0, "ifaces":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_3a

    move-object v0, v1

    .line 1199
    nop

    .line 1200
    const/4 v1, 0x0

    .line 1201
    .local v1, "chosenIface":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 1202
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1d

    aget-object v4, v0, v3

    .line 1203
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_1a

    .line 1204
    move-object v1, v4

    .line 1205
    goto :goto_1d

    .line 1202
    .end local v4    # "iface":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1209
    :cond_1d
    :goto_1d
    if-nez v1, :cond_36

    .line 1210
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void

    .line 1214
    :cond_36
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    .line 1215
    return-void

    .line 1196
    .end local v1    # "chosenIface":Ljava/lang/String;
    :catch_3a
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    return-void
.end method

.method private updateConfiguration()V
    .registers 4

    .line 315
    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    .line 317
    return-void
.end method

.method private upstreamWanted()Z
    .registers 3

    .line 1327
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1328
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v1, "filemanager enable tether, ignore upstreamWanted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_17
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    return v0

    .line 1334
    :cond_21
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    .line 1336
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method protected clearTetheredNotification()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 994
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 995
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1c

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_1c

    .line 996
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 998
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1000
    :cond_1c
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2023
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2024
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2026
    :cond_12
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2029
    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2031
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 2032
    .local v1, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 2033
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2035
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2036
    :try_start_2d
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2038
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_9e

    .line 2039
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2040
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2041
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2043
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    packed-switch v6, :pswitch_data_106

    .line 2057
    const-string v6, "UnknownState"

    goto :goto_82

    .line 2054
    :pswitch_6a
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2055
    goto :goto_85

    .line 2051
    :pswitch_70
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    goto :goto_85

    .line 2048
    :pswitch_76
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    goto :goto_85

    .line 2045
    :pswitch_7c
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    goto :goto_85

    .line 2057
    :goto_82
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2060
    :goto_85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 2062
    .end local v3    # "i":I
    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2065
    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_2d .. :try_end_d0} :catchall_102

    .line 2067
    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2069
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2070
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2072
    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2074
    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 2075
    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fb

    .line 2077
    :cond_f6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2079
    :goto_fb
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2081
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2082
    return-void

    .line 2065
    :catchall_102
    move-exception v3

    :try_start_103
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v3

    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_6a
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 6

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1312
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1313
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_28

    .line 1314
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1317
    .end local v2    # "i":I
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_39

    .line 1318
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1317
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 711
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_2b

    .line 712
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 716
    :cond_2b
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    .line 717
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .line 1264
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 7

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1295
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1296
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 1297
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1300
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1301
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1300
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .line 1256
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .line 1260
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .line 1305
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 7

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1282
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1283
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 1284
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1287
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3a

    .line 1288
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1287
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 2

    .line 1239
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .registers 6

    .line 1243
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 1244
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v1, v3

    .line 1248
    .local v1, "hasDownstreamConfiguration":Z
    :goto_17
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 1250
    .local v4, "hasUpstreamConfiguration":Z
    if-eqz v1, :cond_24

    if-eqz v4, :cond_24

    move v2, v3

    nop

    :cond_24
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 350
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    if-eqz p2, :cond_b

    .line 332
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_15

    .line 344
    :catchall_9
    move-exception v1

    goto :goto_17

    .line 334
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 344
    :cond_15
    :goto_15
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_9

    throw v1
.end method

.method protected isTetherProvisioningRequired()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 427
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "net.tethering.noprovisioning"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_14

    goto :goto_24

    .line 431
    :cond_14
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 432
    return v3

    .line 434
    :cond_1b
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    const/4 v3, 0x1

    nop

    :cond_23
    return v3

    .line 429
    :cond_24
    :goto_24
    return v3
.end method

.method public setUsbTethering(Z)I
    .registers 6
    .param p1, "enable"    # Z

    .line 1269
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1270
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    if-eqz p1, :cond_13

    const-wide/16 v2, 0x20

    goto :goto_15

    .line 1272
    :cond_13
    const-wide/16 v2, 0x0

    .line 1271
    :goto_15
    :try_start_15
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 1273
    monitor-exit v1

    .line 1274
    const/4 v1, 0x0

    return v1

    .line 1273
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public showSoftApClientsNotification(I)V
    .registers 3
    .param p1, "clients"    # I

    .line 722
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    .line 723
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 726
    :cond_b
    const/16 v0, 0x4e20

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_16

    .line 724
    :cond_11
    :goto_11
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 728
    :goto_16
    return-void
.end method

.method protected showTetheredNotification(IZ)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "tetheringOn"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 846
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    .line 847
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    .line 848
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    if-nez v3, :cond_13

    .line 849
    return-void

    .line 852
    :cond_13
    const/4 v0, 0x1

    .line 854
    .local v0, "show":Z
    const/4 v4, 0x0

    .line 855
    .local v4, "icon":I
    const/16 v5, 0x4e20

    if-eq v2, v5, :cond_29

    packed-switch v2, :pswitch_data_18c

    .line 870
    const v4, 0x10807da

    .line 874
    .end local v0    # "show":Z
    .local v5, "show":Z
    :goto_1f
    move v5, v0

    goto :goto_2e

    .line 860
    .end local v5    # "show":Z
    .restart local v0    # "show":Z
    :pswitch_21
    const v4, 0x10807d9

    .line 861
    goto :goto_1f

    .line 857
    :pswitch_25
    const v4, 0x10807db

    .line 858
    goto :goto_1f

    .line 864
    :cond_29
    const v4, 0x10807dc

    .line 865
    const/4 v0, 0x0

    .line 866
    goto :goto_1f

    .line 874
    .end local v0    # "show":Z
    .restart local v5    # "show":Z
    :goto_2e
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const/4 v6, 0x0

    const v7, 0x10807dc

    const/4 v8, 0x0

    if-eqz v0, :cond_47

    .line 877
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, v4, :cond_3e

    if-eq v4, v7, :cond_3e

    .line 879
    return-void

    .line 881
    :cond_3e
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v0, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 883
    iput v8, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 886
    :cond_47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    .line 887
    .local v15, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v9, "com.android.settings.TetherSettings"

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 890
    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v11, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 893
    .local v9, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 897
    .local v10, "r":Landroid/content/res/Resources;
    const/4 v0, 0x1

    if-eqz p2, :cond_cd

    .line 899
    const/16 v12, 0xe

    if-ne v2, v12, :cond_78

    .line 900
    const v12, 0x50c0077

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 900
    .local v12, "title":Ljava/lang/CharSequence;
    goto :goto_7f

    .line 902
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_78
    const v12, 0x104067b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 905
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :goto_7f
    if-ne v4, v7, :cond_c5

    .line 906
    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-nez v7, :cond_8d

    .line 907
    const v7, 0x1040679

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_cc

    .line 908
    :cond_8d
    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-ne v7, v0, :cond_ab

    .line 909
    const v7, 0x104067a

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_cc

    .line 911
    :cond_ab
    const v7, 0x1040678

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_cc

    .line 914
    :cond_c5
    const v7, 0x1040677

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 914
    .local v7, "message":Ljava/lang/CharSequence;
    :goto_cc
    goto :goto_db

    .line 923
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_cd
    const v7, 0x10401d1

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 924
    .restart local v12    # "title":Ljava/lang/CharSequence;
    const v7, 0x10401d0

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 928
    .restart local v7    # "message":Ljava/lang/CharSequence;
    :goto_db
    sget-object v13, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    if-eqz v13, :cond_f0

    sget-object v13, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    const-string v14, "18811"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    const/16 v13, 0xf

    if-eq v2, v13, :cond_f0

    .line 929
    const v4, 0x5060018

    .line 935
    :cond_f0
    const/4 v13, 0x0

    .line 936
    .local v13, "n":Landroid/app/Notification;
    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    .line 937
    :try_start_f4
    iget-object v6, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v6, :cond_12b

    .line 938
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v6, v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 940
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_105
    .catchall {:try_start_f4 .. :try_end_105} :catchall_183

    move-object/from16 v16, v10

    const-wide/16 v10, 0x0

    .line 940
    .end local v10    # "r":Landroid/content/res/Resources;
    .local v16, "r":Landroid/content/res/Resources;
    :try_start_109
    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 941
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v8, 0x1060157

    .line 942
    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 944
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v8, "status"

    .line 945
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_12e

    .line 947
    .end local v16    # "r":Landroid/content/res/Resources;
    .restart local v10    # "r":Landroid/content/res/Resources;
    :cond_12b
    move v6, v0

    move-object/from16 v16, v10

    .line 947
    .end local v10    # "r":Landroid/content/res/Resources;
    .restart local v16    # "r":Landroid/content/res/Resources;
    :goto_12e
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 948
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 949
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 950
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v8, "com.android.server.connectivity.tethering"

    .line 951
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 952
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
    :try_end_14a
    .catchall {:try_start_109 .. :try_end_14a} :catchall_188

    .line 955
    :try_start_14a
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v13, v0

    .line 956
    iget-object v0, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "hide_icon"

    if-nez v5, :cond_159

    goto :goto_15a

    :cond_159
    move v6, v8

    :goto_15a
    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_15d} :catch_15e
    .catchall {:try_start_14a .. :try_end_15d} :catchall_188

    .line 959
    goto :goto_175

    .line 957
    :catch_15e
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15f
    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetheredNotificationBuilder build e:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_175
    monitor-exit v14
    :try_end_176
    .catchall {:try_start_15f .. :try_end_176} :catchall_188

    .line 962
    if-eqz v13, :cond_182

    .line 963
    iput v4, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 964
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0, v13, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 989
    :cond_182
    return-void

    .line 960
    .end local v16    # "r":Landroid/content/res/Resources;
    .restart local v10    # "r":Landroid/content/res/Resources;
    :catchall_183
    move-exception v0

    move-object/from16 v16, v10

    .line 960
    .end local v10    # "r":Landroid/content/res/Resources;
    .restart local v16    # "r":Landroid/content/res/Resources;
    :goto_186
    :try_start_186
    monitor-exit v14
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_188

    throw v0

    :catchall_188
    move-exception v0

    goto :goto_186

    nop

    nop

    :pswitch_data_18c
    .packed-switch 0xf
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z
    .param p4, "callerPkg"    # Ljava/lang/String;

    .line 392
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 394
    if-nez p1, :cond_22

    .line 395
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTethering caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    goto :goto_25

    .line 398
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    .line 401
    :goto_25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 402
    return-void

    .line 405
    :cond_2a
    if-eqz p3, :cond_30

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_33

    .line 408
    :cond_30
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    .line 410
    :goto_33
    return-void
.end method

.method public stopTethering(I)V
    .registers 4
    .param p1, "type"    # I

    .line 413
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    .line 417
    :cond_e
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 649
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 688
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_2b

    .line 689
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 692
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 693
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 696
    :cond_4f
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 698
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 699
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public untetherAll()V
    .registers 2

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 705
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 706
    return-void
.end method
