.class public Lcom/android/server/am/OnePlusAppBootManager;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;,
        Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;,
        Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;,
        Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;,
        Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_LISTENER_UPDATE:Ljava/lang/String; = "action.appboot.notification_listener_update"

.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static APPBOOT_CONFIG_NAME:Ljava/lang/String; = null

.field private static final APPBOOT_FILE:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static APPBOOT_VERSION:Ljava/lang/String; = null

.field public static BLACKLIST_ENABLE:Z = false

.field public static final DAY_IN_MS:J = 0x5265c00L

.field public static DEBUG:Z = false

.field public static DEBUG_BINDER:Z = false

.field public static DEBUG_OEMLOG:Z = false

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static INSTANCE:Lcom/android/server/am/OnePlusAppBootManager; = null

.field public static IN_USING:Z = false

.field private static MIN_UNBEARABLE_COUNT:I = 0x0

.field private static final MSG_DELAY_FORCE_STOP_PKG:I = 0x2

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_HUGEPOWER_PKG_ACTION:I = 0x1f

.field private static final MSG_PERSIST_APPBOOT_LIST:I = 0x1

.field private static final MSG_PKG_USAGE_ACTION:I = 0x20

.field private static final MSG_PKG_USAGE_ACTION_DEBUG:I = 0x21

.field private static final MSG_TYPE_PKG_ADD:I = 0x17

.field private static final MSG_TYPE_PKG_REINSTALL:I = 0x15

.field private static final MSG_TYPE_PKG_REMOVE:I = 0x16

.field private static final PRELIST_FILE:Ljava/lang/String; = "/system/etc/presetlist.xml"

.field private static final PROP_ALLOW:Ljava/lang/String; = "persist.sys.appboot.allow"

.field private static final PROP_BLACKLIST:Ljava/lang/String; = "persist.sys.appboot.blacklist"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appboot.debug"

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.appboot.flags"

.field private static final PROP_OEM_LOG:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final PROP_QUICK_APP_RANK_DEBUG:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static final PROP_REGION:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_USER_SETTED:Ljava/lang/String; = "persist.sys.appboot.usersetted"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.appboot.using"

.field private static QUICK_APP_RANK_DEBUG:Z = false

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final SPECIAL_FILE:Ljava/lang/String; = "/system/etc/appbootspecial.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field public static final TAG_HUGE_POWER_DEFAULT:I = 0x1

.field public static final TAG_HUGE_POWER_HIT:I = 0x2

.field public static final TAG_HUGE_POWER_START_PROC:I = 0x4

.field public static final VERSION:I = 0xf5d2e0

.field private static final XML_ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final XML_ATTR_BOOT:Ljava/lang/String; = "boot"

.field private static final XML_ATTR_CALLEE:Ljava/lang/String; = "callee"

.field private static final XML_ATTR_CALLER:Ljava/lang/String; = "caller"

.field private static final XML_ATTR_FLAG:Ljava/lang/String; = "flag"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_SETTED:Ljava/lang/String; = "setted"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_APPBOOT:Ljava/lang/String; = "appboot"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_PRELIST:Ljava/lang/String; = "prelist"

.field private static mABILock:Ljava/lang/Object;

.field public static mAppBootSwitch:Z

.field private static mCurrentActivityPkg:Ljava/lang/String;

.field private static mCurrentIME:Ljava/lang/String;

.field private static mCurrentWallPaperPkg:Ljava/lang/String;

.field private static mEnableJobControl:Z

.field private static mGlobalFlags:I

.field private static mHugePowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastActivityPkg:Ljava/lang/String;

.field private static mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mPrePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mPresetWhiteListPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mRegion:Ljava/lang/String;

.field private static mScreenOn:Z

.field private static mSyncServiceClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sBlackJobClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FUNC_CAN_PROVIDER_GO:Z

.field private mAbiRestoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mAppBootThread:Landroid/os/HandlerThread;

.field mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

.field private mBroadcastIntentActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurAppServiceClassWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDailerPackage:Ljava/lang/String;

.field private mDefaultSMSPackage:Ljava/lang/String;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mKillPackageProcessName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotiListenerPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessServiceKillEnable:Z

.field private mProviderCallerWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRestrictActivityPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

.field private mWidgetBroadcastActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 104
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 105
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 106
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 107
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    .line 108
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    .line 109
    sput-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    .line 124
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 127
    const/16 v1, 0xa

    sput v1, Lcom/android/server/am/OnePlusAppBootManager;->MIN_UNBEARABLE_COUNT:I

    .line 130
    sput v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 131
    const-string v1, ""

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    .line 139
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 140
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 141
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 142
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 144
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    .line 145
    const-string v2, "AppBoot"

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    .line 147
    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    .line 176
    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.dangdang.buy2.keepalive.service.RestartJobService"

    const-string v2, "com.dewmobile.sensor.MyJobService"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->sBlackJobClassList:Ljava/util/ArrayList;

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.google."

    const-string v2, "com.android.vending"

    const-string v3, "com.oneplus."

    const-string/jumbo v4, "net.oneplus."

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 1782
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    .line 3027
    const-string v0, "2"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 12
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    .line 135
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    .line 136
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    .line 183
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 184
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "cn.jpush.android.service.PushService"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mCurAppServiceClassWhiteList:Ljava/util/ArrayList;

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    const-string v4, "android.appwidget.action.APPWIDGET_BIND"

    const-string v5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    const-string v6, "android.appwidget.action.APPWIDGET_DELETED"

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    const-string v8, "android.appwidget.action.APPWIDGET_DISABLED"

    const-string v9, "android.appwidget.action.APPWIDGET_ENABLED"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetBroadcastActionList:Ljava/util/ArrayList;

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    .line 267
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    .line 2143
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$1;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 2270
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 2271
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 2273
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$2;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 2468
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 2469
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 295
    sput-object p1, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 296
    const-string/jumbo v0, "persist.sys.appboot.using"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 301
    const-string/jumbo v0, "persist.sys.appboot.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 302
    const-string/jumbo v0, "persist.sys.assert.panic"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    .line 303
    const-string/jumbo v0, "persist.sys.appboot.blacklist"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 304
    const-string/jumbo v0, "persist.sys.appboot.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 305
    const-string/jumbo v0, "persist.sys.oem.region"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    .line 306
    const-string/jumbo v0, "persist.sys.rp.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    .line 307
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_10e

    .line 308
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_prelist()I

    .line 312
    :cond_10e
    return-void
.end method

.method private static WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "xmlStr"    # Ljava/lang/String;

    .line 2909
    if-nez p1, :cond_4

    .line 2910
    const/4 v0, -0x1

    return v0

    .line 2913
    :cond_4
    const/4 v0, 0x0

    .line 2915
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2916
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2917
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21

    .line 2918
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2921
    :cond_21
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2923
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2924
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_49} :catch_a3
    .catchall {:try_start_5 .. :try_end_49} :catchall_a1

    .line 2925
    const/4 v2, -0x2

    .line 2939
    if-eqz v0, :cond_6d

    .line 2940
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_51

    .line 2941
    const/4 v0, 0x0

    goto :goto_6d

    .line 2943
    :catch_51
    move-exception v3

    .line 2944
    .local v3, "ec":Ljava/io/IOException;
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException # WriteStringToFile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ec":Ljava/io/IOException;
    goto :goto_6e

    .line 2945
    :cond_6d
    :goto_6d
    nop

    .line 2925
    :goto_6e
    return v2

    .line 2929
    :cond_6f
    :try_start_6f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 2930
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2931
    .local v2, "pidbuffer":[B
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_a3
    .catchall {:try_start_6f .. :try_end_7c} :catchall_a1

    .line 2932
    const/4 v3, 0x1

    .line 2939
    nop

    .line 2940
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_83

    .line 2941
    const/4 v0, 0x0

    goto :goto_9f

    .line 2943
    :catch_83
    move-exception v4

    .line 2944
    .local v4, "ec":Ljava/io/IOException;
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException # WriteStringToFile # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ec":Ljava/io/IOException;
    goto :goto_a0

    .line 2945
    :goto_9f
    nop

    .line 2932
    :goto_a0
    return v3

    .line 2938
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "pidbuffer":[B
    :catchall_a1
    move-exception v1

    goto :goto_e4

    .line 2934
    :catch_a3
    move-exception v1

    .line 2935
    .local v1, "ex":Ljava/io/IOException;
    :try_start_a4
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException # WriteStringToFile # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_a4 .. :try_end_be} :catchall_a1

    .line 2936
    const/4 v2, -0x3

    .line 2939
    if-eqz v0, :cond_e2

    .line 2940
    :try_start_c1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c6

    .line 2941
    const/4 v0, 0x0

    goto :goto_e2

    .line 2943
    :catch_c6
    move-exception v3

    .line 2944
    .restart local v3    # "ec":Ljava/io/IOException;
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException # WriteStringToFile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ec":Ljava/io/IOException;
    goto :goto_e3

    .line 2945
    :cond_e2
    :goto_e2
    nop

    .line 2936
    :goto_e3
    return v2

    .line 2938
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_e4
    nop

    .line 2939
    if-eqz v0, :cond_108

    .line 2940
    :try_start_e7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec

    .line 2941
    const/4 v0, 0x0

    goto :goto_108

    .line 2943
    :catch_ec
    move-exception v2

    .line 2944
    .local v2, "ec":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException # WriteStringToFile # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusAppBootManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ec":Ljava/io/IOException;
    nop

    .line 2945
    :cond_108
    :goto_108
    throw v1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 101
    sput-boolean p0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 101
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusAppBootManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateSettingsObserver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/HashMap;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->isPackageInPresetWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusAppBootManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Z

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPkgTempAction(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->autoChangeRule()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->sendNextChangeRuleMsg(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .line 101
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->MIN_UNBEARABLE_COUNT:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpHugePowerPkgInfo()V

    return-void
.end method

.method private autoChangeRule()V
    .registers 12

    .line 2549
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "autoChangeRule"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2551
    :cond_9
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    .line 2553
    .local v0, "usageMgr":Lcom/android/server/am/RestartProcessManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2555
    .local v2, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2556
    .local v3, "mediumUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2557
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v2, :cond_79

    .line 2558
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2559
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v4

    .line 2560
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->canChangeRuleByUsage()Z

    move-result v7

    if-nez v7, :cond_35

    .line 2561
    goto :goto_1e

    .line 2563
    :cond_35
    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2564
    .local v7, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v7, :cond_5c

    iget v8, v7, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-ne v8, v1, :cond_5c

    .line 2565
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_1e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoChangeRule skip white : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1e

    .line 2568
    :cond_5c
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2569
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v8, :cond_78

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoChangeRule black : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2570
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_78
    goto :goto_1e

    .line 2573
    :cond_79
    if-eqz v3, :cond_cf

    .line 2574
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2575
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v6

    .line 2576
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v6, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->canChangeRuleByUsage()Z

    move-result v4

    if-nez v4, :cond_96

    .line 2577
    goto :goto_ca

    .line 2580
    :cond_96
    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2581
    :try_start_99
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2582
    .local v4, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v4, :cond_c8

    .line 2583
    iget v8, v4, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 2584
    .local v8, "action":I
    invoke-virtual {v6, v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2585
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v9, :cond_c8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoChangeRule medium : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2587
    .end local v4    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    .end local v8    # "action":I
    :cond_c8
    monitor-exit v7

    .line 2588
    .end local v5    # "pkg":Ljava/lang/String;
    nop

    .line 2574
    :goto_ca
    move-object v4, v6

    goto :goto_7f

    .line 2587
    .restart local v5    # "pkg":Ljava/lang/String;
    :catchall_cc
    move-exception v1

    monitor-exit v7
    :try_end_ce
    .catchall {:try_start_99 .. :try_end_ce} :catchall_cc

    throw v1

    .line 2602
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_cf
    return-void
.end method

.method private dumpHugePowerPkgInfo()V
    .registers 7

    .line 354
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 355
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 356
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # HugePowerPkg # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_d

    .line 358
    :cond_30
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private dumpInfo()V
    .registers 4

    .line 315
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "# dump # VERSION # 16110304"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # IN_USING # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mAppBootSwitch # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG_OEMLOG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BLACKLIST_ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mGlobalFlags # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private dumpList()V
    .registers 4

    .line 341
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceActionBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceActionWhiteList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionWhiteList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mActivityClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProviderClassBlackList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProviderCallerWhiteList # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mKillPackageProcessName # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method private dumpPkgMapInfos()V
    .registers 8

    .line 327
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_19

    .line 329
    const-string v1, "OnePlusAppBootManager"

    const-string v2, " # dump # mPkgMap = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    monitor-exit v0

    return-void

    .line 332
    :cond_19
    const/4 v1, 0x0

    .line 333
    .local v1, "index":I
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 334
    .local v3, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    add-int/lit8 v1, v1, 0x1

    .line 335
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v3    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_24

    .line 337
    .end local v1    # "index":I
    :cond_51
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private forceStopPkg(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2611
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPkg # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2613
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_7b

    if-eqz p1, :cond_7b

    .line 2615
    :try_start_1e
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2616
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    .line 2617
    const/4 v1, 0x1

    return v1

    .line 2619
    :cond_2b
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2620
    const/4 v1, 0x3

    return v1

    .line 2622
    :cond_35
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2623
    const/4 v1, 0x4

    return v1

    .line 2625
    :cond_3f
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_5d

    :try_start_42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2626
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2627
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2628
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2629
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_5d

    .line 2630
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catch_5d
    move-exception v0

    .line 2631
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception# forceStopPkg: forceStopPkg error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2635
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7b
    const/4 v0, -0x1

    return v0
.end method

.method private static getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 415
    if-nez p0, :cond_16

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !!!!!!!Exception # getAppBootInfo # pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 418
    :cond_16
    const/4 v0, 0x0

    .line 419
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 420
    if-nez v0, :cond_5e

    .line 421
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 422
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 423
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_33
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_3b
    .catchall {:try_start_33 .. :try_end_38} :catchall_39

    .line 429
    goto :goto_59

    .line 430
    :catchall_39
    move-exception v0

    goto :goto_5c

    .line 426
    :catch_3b
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3c
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    monitor-exit v2

    .line 432
    move-object v0, v1

    goto :goto_5e

    .line 430
    :goto_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_39

    throw v0

    .line 432
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_5e
    :goto_5e
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_76

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# getAppBootInfo # abi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 435
    :cond_76
    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;
    .registers 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 285
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    if-nez v0, :cond_14

    .line 286
    if-nez p0, :cond_d

    .line 287
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception : pms is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_d
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 291
    :cond_14
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    return-object v0
.end method

.method private getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 584
    if-nez p1, :cond_b

    .line 585
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 590
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 591
    .local v1, "compName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1b

    .line 592
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 595
    .end local v1    # "compName":Landroid/content/ComponentName;
    :cond_1b
    return-object v0
.end method

.method private getPkgNameOfBind(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "_compName"    # Landroid/content/ComponentName;

    .line 3322
    const/4 v0, 0x0

    .line 3323
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 3324
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3326
    :cond_7
    if-eqz v0, :cond_a

    .line 3327
    return-object v0

    .line 3330
    :cond_a
    if-nez p1, :cond_e

    .line 3331
    const/4 v1, 0x0

    return-object v1

    .line 3334
    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 3335
    if-nez v0, :cond_1e

    .line 3336
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3337
    .local v1, "compName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1e

    .line 3338
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3341
    .end local v1    # "compName":Landroid/content/ComponentName;
    :cond_1e
    return-object v0
.end method

.method public static getSettedList()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3365
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_6

    .line 3366
    const/4 v0, 0x0

    return-object v0

    .line 3369
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3370
    .local v0, "settedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 3371
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 3372
    # getter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$2700(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3374
    .end local v2    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2f
    goto :goto_15

    .line 3376
    :cond_30
    return-object v0
.end method

.method public static isAppContianSpecialFlag(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 3348
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 3349
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    .line 3350
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_14

    .line 3351
    return v2

    .line 3353
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public static isNotAppUserSetted(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 3357
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 3358
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 3359
    return v2

    .line 3361
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private static isPackageInPresetWhitelist(Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1785
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1786
    return v0

    .line 1789
    :cond_4
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3a

    .line 1790
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1791
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1792
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# isPackageInPresetWhitelist # whitelist-pkg # pkgName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1794
    :cond_38
    return v0

    .line 1796
    .end local v2    # "s":Ljava/lang/String;
    :cond_39
    goto :goto_e

    .line 1799
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private isWidgetPkg(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 624
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 273
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_48

    .line 274
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    if-eqz v0, :cond_43

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0    # "ret":Ljava/lang/String;
    goto :goto_48

    .line 278
    :cond_43
    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_48
    :goto_48
    return-void
.end method

.method private readXml_specialList()V
    .registers 11

    .line 3218
    const-string/jumbo v0, "readXml_specialList"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3220
    .local v0, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/appbootspecial.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3221
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3222
    const-string/jumbo v2, "readXml_specialList # file don\'t exist!"

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3223
    return-void

    .line 3226
    :cond_1f
    const/4 v2, 0x0

    move-object v3, v2

    .line 3229
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_21
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 3230
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3231
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3234
    :cond_2e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 3235
    .local v2, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v5, :cond_1d2

    .line 3236
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3237
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v7, "svcActB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 3238
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3239
    .local v7, "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_5f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1. svcActB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3240
    :cond_5f
    if-eqz v7, :cond_6c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_6c

    .line 3241
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    .end local v7    # "value":Ljava/lang/String;
    :cond_6c
    goto/16 :goto_1d2

    :cond_6e
    const-string/jumbo v7, "svcActW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 3244
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3245
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_93

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2. svcActW # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3246
    :cond_93
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_a0

    .line 3247
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3249
    .end local v7    # "value":Ljava/lang/String;
    :cond_a0
    goto/16 :goto_1d2

    :cond_a2
    const-string/jumbo v7, "svcClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 3250
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3251
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_c7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3. svcClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3252
    :cond_c7
    if-eqz v7, :cond_d4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_d4

    .line 3253
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3255
    .end local v7    # "value":Ljava/lang/String;
    :cond_d4
    goto/16 :goto_1d2

    :cond_d6
    const-string v7, "brdClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 3256
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3257
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_fa

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4. brdClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3258
    :cond_fa
    if-eqz v7, :cond_107

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_107

    .line 3259
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3261
    .end local v7    # "value":Ljava/lang/String;
    :cond_107
    goto/16 :goto_1d2

    :cond_109
    const-string v7, "brdActW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 3262
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3263
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_12d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5. brdActW # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3264
    :cond_12d
    if-eqz v7, :cond_13a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_13a

    .line 3265
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    .end local v7    # "value":Ljava/lang/String;
    :cond_13a
    goto/16 :goto_1d2

    :cond_13c
    const-string v7, "brdActB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16e

    .line 3268
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3269
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_160

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "6. brdActB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3270
    :cond_160
    if-eqz v7, :cond_16d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_16d

    .line 3271
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3273
    .end local v7    # "value":Ljava/lang/String;
    :cond_16d
    goto :goto_1d2

    :cond_16e
    const-string v7, "actClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    .line 3274
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3275
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_192

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7. actClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3276
    :cond_192
    if-eqz v7, :cond_19f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_19f

    .line 3277
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3279
    .end local v7    # "value":Ljava/lang/String;
    :cond_19f
    goto :goto_1d2

    :cond_1a0
    const-string/jumbo v7, "pvdClsB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d2

    .line 3280
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 3281
    .restart local v7    # "value":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_1c5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "8. pvdClsB # value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3282
    :cond_1c5
    if-eqz v7, :cond_1d2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_1d2

    .line 3283
    iget-object v8, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_1d2} :catch_2c1
    .catchall {:try_start_21 .. :try_end_1d2} :catchall_2be

    .line 3287
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1d2
    :goto_1d2
    if-ne v2, v6, :cond_2e

    .line 3293
    .end local v2    # "type":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 3294
    :try_start_1d5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_1da

    .line 3295
    const/4 v3, 0x0

    goto :goto_1df

    .line 3297
    :catch_1da
    move-exception v2

    .line 3298
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3298
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1e0

    .line 3299
    :goto_1df
    nop

    .line 3300
    :goto_1e0
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_39f

    .line 3301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a6
    const-string/jumbo v4, "mProviderClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 3292
    :catchall_2be
    move-exception v2

    goto/16 :goto_3a0

    .line 3289
    :catch_2c1
    move-exception v2

    .line 3290
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c2
    const-string v4, "OnePlusAppBootManager"

    const-string/jumbo v5, "readXml_specialList # failed parsing "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2ca
    .catchall {:try_start_2c2 .. :try_end_2ca} :catchall_2be

    .line 3293
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2d6

    .line 3294
    :try_start_2cc
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2cf
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2cf} :catch_2d1

    .line 3295
    const/4 v3, 0x0

    goto :goto_2d6

    .line 3297
    :catch_2d1
    move-exception v2

    .line 3298
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3298
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2d7

    .line 3299
    :cond_2d6
    :goto_2d6
    nop

    .line 3300
    :goto_2d7
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_39f

    .line 3301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityClassBlackList size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2a6

    .line 3311
    :cond_39f
    :goto_39f
    return-void

    .line 3292
    :goto_3a0
    nop

    .line 3293
    if-eqz v3, :cond_3ad

    .line 3294
    :try_start_3a3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a6
    .catch Ljava/io/IOException; {:try_start_3a3 .. :try_end_3a6} :catch_3a8

    .line 3295
    const/4 v3, 0x0

    goto :goto_3ad

    .line 3297
    :catch_3a8
    move-exception v4

    .line 3298
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 3298
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3ae

    .line 3299
    :cond_3ad
    :goto_3ad
    nop

    .line 3300
    :goto_3ae
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_48a

    .line 3301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceActionBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceActionWhiteList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mActivityClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProviderClassBlackList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_48a
    throw v2
.end method

.method private registerGeneralReceiver()V
    .registers 4

    .line 2225
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 2226
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-void

    .line 2230
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2231
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2232
    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2233
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2234
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2235
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2236
    const/4 v1, 0x1

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_41

    .line 2237
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->responseSIMStateChanged()Z

    move-result v1

    if-nez v1, :cond_41

    .line 2238
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2242
    :cond_41
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2243
    return-void
.end method

.method private registerPackageReceiver()V
    .registers 4

    .line 2321
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 2322
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    return-void

    .line 2325
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2326
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2327
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2328
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2329
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2330
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2331
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2332
    return-void
.end method

.method private removeAppBootInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 465
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# removeAppBootInfo # pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 468
    :cond_18
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_1b
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v1
.end method

.method private resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 16
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 2665
    if-nez p1, :cond_3

    .line 2666
    return-void

    .line 2669
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 2669
    .local v1, "index":I
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_460

    .line 2670
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2671
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "forceSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2672
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2673
    .local v3, "forceSwitch":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->switchControlCenter(Ljava/lang/String;)V

    .line 2674
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot forceSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    .end local v3    # "forceSwitch":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "policyTimes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 2677
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2678
    .local v3, "policyTimes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusAppBootManager;->MIN_UNBEARABLE_COUNT:I

    .line 2679
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot policyTimes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusAppBootManager;->MIN_UNBEARABLE_COUNT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    .end local v3    # "policyTimes":Ljava/lang/String;
    :cond_73
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pre_pkg_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 2682
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_86} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_86} :catch_568
    .catchall {:try_start_5 .. :try_end_86} :catchall_565

    .line 2683
    :try_start_86
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2684
    .local v4, "pkgInfoJsonArray":Lorg/json/JSONArray;
    move v5, v0

    .line 2684
    .local v5, "i":I
    :goto_8e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_df

    .line 2685
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2686
    .local v6, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2687
    .local v7, "pkgName":Ljava/lang/String;
    const-string v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2688
    .local v8, "flag":Ljava/lang/String;
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2689
    .local v9, "action":Ljava/lang/String;
    sget-object v10, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v11, p0, v7, v12, v13}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_dc

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolveAppBootConfigFromJSON # "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2684
    .end local v6    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "flag":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 2692
    .end local v4    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_df
    monitor-exit v3

    goto :goto_e4

    :catchall_e1
    move-exception v0

    monitor-exit v3
    :try_end_e3
    .catchall {:try_start_86 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0

    .line 2694
    :cond_e4
    :goto_e4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "job_control"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 2695
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2696
    .local v3, "jobSwitchJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    .line 2697
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot job control: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    .end local v3    # "jobSwitchJsonArray":Lorg/json/JSONArray;
    :cond_121
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "func_canProviderGo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 2700
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2701
    .local v3, "onlineEnable":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 2702
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] func_provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    .end local v3    # "onlineEnable":Ljava/lang/String;
    :cond_159
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 2705
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2706
    .local v3, "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_173
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_173} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_173} :catch_568
    .catchall {:try_start_e3 .. :try_end_173} :catchall_565

    .line 2707
    :try_start_173
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2708
    move v5, v0

    .line 2708
    .restart local v5    # "i":I
    :goto_179
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_193

    .line 2709
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2710
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_190

    .line 2711
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2708
    .end local v6    # "value":Ljava/lang/String;
    :cond_190
    add-int/lit8 v5, v5, 0x1

    goto :goto_179

    .line 2713
    .end local v5    # "i":I
    :cond_193
    monitor-exit v4
    :try_end_194
    .catchall {:try_start_173 .. :try_end_194} :catchall_19a

    .line 2714
    :try_start_194
    const-string v4, "[OnlineConfig] update svcActB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_199
    .catch Lorg/json/JSONException; {:try_start_194 .. :try_end_199} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_199} :catch_568
    .catchall {:try_start_194 .. :try_end_199} :catchall_565

    .line 2714
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_19d

    .line 2713
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_19a
    move-exception v0

    :try_start_19b
    monitor-exit v4
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    :try_start_19c
    throw v0

    .line 2716
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_19d
    :goto_19d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pvdCerW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 2717
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2718
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1b7
    .catch Lorg/json/JSONException; {:try_start_19c .. :try_end_1b7} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b7} :catch_568
    .catchall {:try_start_19c .. :try_end_1b7} :catchall_565

    .line 2719
    :try_start_1b7
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2720
    move v5, v0

    .line 2720
    .restart local v5    # "i":I
    :goto_1bd
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1d7

    .line 2721
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2722
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d4

    .line 2723
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    .end local v6    # "value":Ljava/lang/String;
    :cond_1d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1bd

    .line 2725
    .end local v5    # "i":I
    :cond_1d7
    monitor-exit v4
    :try_end_1d8
    .catchall {:try_start_1b7 .. :try_end_1d8} :catchall_1de

    .line 2726
    :try_start_1d8
    const-string v4, "[OnlineConfig] update pvdCerW success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_1dd
    .catch Lorg/json/JSONException; {:try_start_1d8 .. :try_end_1dd} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1dd} :catch_568
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_565

    .line 2726
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_1e1

    .line 2725
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_1de
    move-exception v0

    :try_start_1df
    monitor-exit v4
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1de

    :try_start_1e0
    throw v0

    .line 2728
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_1e1
    :goto_1e1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_225

    .line 2729
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2730
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1fb
    .catch Lorg/json/JSONException; {:try_start_1e0 .. :try_end_1fb} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1fb} :catch_568
    .catchall {:try_start_1e0 .. :try_end_1fb} :catchall_565

    .line 2731
    :try_start_1fb
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2732
    move v5, v0

    .line 2732
    .restart local v5    # "i":I
    :goto_201
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_21b

    .line 2733
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2734
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_218

    .line 2735
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    .end local v6    # "value":Ljava/lang/String;
    :cond_218
    add-int/lit8 v5, v5, 0x1

    goto :goto_201

    .line 2737
    .end local v5    # "i":I
    :cond_21b
    monitor-exit v4
    :try_end_21c
    .catchall {:try_start_1fb .. :try_end_21c} :catchall_222

    .line 2738
    :try_start_21c
    const-string v4, "[OnlineConfig] update svcActW success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_221
    .catch Lorg/json/JSONException; {:try_start_21c .. :try_end_221} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_221} :catch_568
    .catchall {:try_start_21c .. :try_end_221} :catchall_565

    .line 2738
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_225

    .line 2737
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_222
    move-exception v0

    :try_start_223
    monitor-exit v4
    :try_end_224
    .catchall {:try_start_223 .. :try_end_224} :catchall_222

    :try_start_224
    throw v0

    .line 2740
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_225
    :goto_225
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rActPkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_269

    .line 2741
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2742
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_23f
    .catch Lorg/json/JSONException; {:try_start_224 .. :try_end_23f} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_23f} :catch_568
    .catchall {:try_start_224 .. :try_end_23f} :catchall_565

    .line 2743
    :try_start_23f
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2744
    move v5, v0

    .line 2744
    .restart local v5    # "i":I
    :goto_245
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_25f

    .line 2745
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2746
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25c

    .line 2747
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    .end local v6    # "value":Ljava/lang/String;
    :cond_25c
    add-int/lit8 v5, v5, 0x1

    goto :goto_245

    .line 2749
    .end local v5    # "i":I
    :cond_25f
    monitor-exit v4
    :try_end_260
    .catchall {:try_start_23f .. :try_end_260} :catchall_266

    .line 2750
    :try_start_260
    const-string v4, "[OnlineConfig] update rActPkg success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_265
    .catch Lorg/json/JSONException; {:try_start_260 .. :try_end_265} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_265} :catch_568
    .catchall {:try_start_260 .. :try_end_265} :catchall_565

    .line 2750
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_269

    .line 2749
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_266
    move-exception v0

    :try_start_267
    monitor-exit v4
    :try_end_268
    .catchall {:try_start_267 .. :try_end_268} :catchall_266

    :try_start_268
    throw v0

    .line 2752
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_269
    :goto_269
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svcClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ad

    .line 2753
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2754
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_283
    .catch Lorg/json/JSONException; {:try_start_268 .. :try_end_283} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_283} :catch_568
    .catchall {:try_start_268 .. :try_end_283} :catchall_565

    .line 2755
    :try_start_283
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2756
    move v5, v0

    .line 2756
    .restart local v5    # "i":I
    :goto_289
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2a3

    .line 2757
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2758
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a0

    .line 2759
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    .end local v6    # "value":Ljava/lang/String;
    :cond_2a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_289

    .line 2761
    .end local v5    # "i":I
    :cond_2a3
    monitor-exit v4
    :try_end_2a4
    .catchall {:try_start_283 .. :try_end_2a4} :catchall_2aa

    .line 2762
    :try_start_2a4
    const-string v4, "[OnlineConfig] update svcClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_2a9
    .catch Lorg/json/JSONException; {:try_start_2a4 .. :try_end_2a9} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2a9} :catch_568
    .catchall {:try_start_2a4 .. :try_end_2a9} :catchall_565

    .line 2762
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_2ad

    .line 2761
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_2aa
    move-exception v0

    :try_start_2ab
    monitor-exit v4
    :try_end_2ac
    .catchall {:try_start_2ab .. :try_end_2ac} :catchall_2aa

    :try_start_2ac
    throw v0

    .line 2764
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_2ad
    :goto_2ad
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    .line 2765
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2766
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2c6
    .catch Lorg/json/JSONException; {:try_start_2ac .. :try_end_2c6} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2c6} :catch_568
    .catchall {:try_start_2ac .. :try_end_2c6} :catchall_565

    .line 2767
    :try_start_2c6
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2768
    move v5, v0

    .line 2768
    .restart local v5    # "i":I
    :goto_2cc
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2e6

    .line 2769
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2770
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e3

    .line 2771
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    .end local v6    # "value":Ljava/lang/String;
    :cond_2e3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2cc

    .line 2773
    .end local v5    # "i":I
    :cond_2e6
    monitor-exit v4
    :try_end_2e7
    .catchall {:try_start_2c6 .. :try_end_2e7} :catchall_2ed

    .line 2774
    :try_start_2e7
    const-string v4, "[OnlineConfig] update brdClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_2ec
    .catch Lorg/json/JSONException; {:try_start_2e7 .. :try_end_2ec} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ec} :catch_568
    .catchall {:try_start_2e7 .. :try_end_2ec} :catchall_565

    .line 2774
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_2f0

    .line 2773
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_2ed
    move-exception v0

    :try_start_2ee
    monitor-exit v4
    :try_end_2ef
    .catchall {:try_start_2ee .. :try_end_2ef} :catchall_2ed

    :try_start_2ef
    throw v0

    .line 2776
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_2f0
    :goto_2f0
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_333

    .line 2777
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2778
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_309
    .catch Lorg/json/JSONException; {:try_start_2ef .. :try_end_309} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_309} :catch_568
    .catchall {:try_start_2ef .. :try_end_309} :catchall_565

    .line 2779
    :try_start_309
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2780
    move v5, v0

    .line 2780
    .restart local v5    # "i":I
    :goto_30f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_329

    .line 2781
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2782
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_326

    .line 2783
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    .end local v6    # "value":Ljava/lang/String;
    :cond_326
    add-int/lit8 v5, v5, 0x1

    goto :goto_30f

    .line 2785
    .end local v5    # "i":I
    :cond_329
    monitor-exit v4
    :try_end_32a
    .catchall {:try_start_309 .. :try_end_32a} :catchall_330

    .line 2786
    :try_start_32a
    const-string v4, "[OnlineConfig] update brdActW success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_32f
    .catch Lorg/json/JSONException; {:try_start_32a .. :try_end_32f} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_32f} :catch_568
    .catchall {:try_start_32a .. :try_end_32f} :catchall_565

    .line 2786
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_333

    .line 2785
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_330
    move-exception v0

    :try_start_331
    monitor-exit v4
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_330

    :try_start_332
    throw v0

    .line 2788
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_333
    :goto_333
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_376

    .line 2789
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2790
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_34c
    .catch Lorg/json/JSONException; {:try_start_332 .. :try_end_34c} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_332 .. :try_end_34c} :catch_568
    .catchall {:try_start_332 .. :try_end_34c} :catchall_565

    .line 2791
    :try_start_34c
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2792
    move v5, v0

    .line 2792
    .restart local v5    # "i":I
    :goto_352
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_36c

    .line 2793
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2794
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_369

    .line 2795
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    .end local v6    # "value":Ljava/lang/String;
    :cond_369
    add-int/lit8 v5, v5, 0x1

    goto :goto_352

    .line 2797
    .end local v5    # "i":I
    :cond_36c
    monitor-exit v4
    :try_end_36d
    .catchall {:try_start_34c .. :try_end_36d} :catchall_373

    .line 2798
    :try_start_36d
    const-string v4, "[OnlineConfig] update brdActB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_372
    .catch Lorg/json/JSONException; {:try_start_36d .. :try_end_372} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_372} :catch_568
    .catchall {:try_start_36d .. :try_end_372} :catchall_565

    .line 2798
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_376

    .line 2797
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_373
    move-exception v0

    :try_start_374
    monitor-exit v4
    :try_end_375
    .catchall {:try_start_374 .. :try_end_375} :catchall_373

    :try_start_375
    throw v0

    .line 2800
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_376
    :goto_376
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b9

    .line 2801
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2802
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_38f
    .catch Lorg/json/JSONException; {:try_start_375 .. :try_end_38f} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_38f} :catch_568
    .catchall {:try_start_375 .. :try_end_38f} :catchall_565

    .line 2803
    :try_start_38f
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2804
    move v5, v0

    .line 2804
    .restart local v5    # "i":I
    :goto_395
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3af

    .line 2805
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2806
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3ac

    .line 2807
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    .end local v6    # "value":Ljava/lang/String;
    :cond_3ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_395

    .line 2809
    .end local v5    # "i":I
    :cond_3af
    monitor-exit v4
    :try_end_3b0
    .catchall {:try_start_38f .. :try_end_3b0} :catchall_3b6

    .line 2810
    :try_start_3b0
    const-string v4, "[OnlineConfig] update actClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_3b5
    .catch Lorg/json/JSONException; {:try_start_3b0 .. :try_end_3b5} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_3b5} :catch_568
    .catchall {:try_start_3b0 .. :try_end_3b5} :catchall_565

    .line 2810
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_3b9

    .line 2809
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_3b6
    move-exception v0

    :try_start_3b7
    monitor-exit v4
    :try_end_3b8
    .catchall {:try_start_3b7 .. :try_end_3b8} :catchall_3b6

    :try_start_3b8
    throw v0

    .line 2812
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_3b9
    :goto_3b9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pvdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fd

    .line 2813
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2814
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_3d3
    .catch Lorg/json/JSONException; {:try_start_3b8 .. :try_end_3d3} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_3b8 .. :try_end_3d3} :catch_568
    .catchall {:try_start_3b8 .. :try_end_3d3} :catchall_565

    .line 2815
    :try_start_3d3
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2816
    move v5, v0

    .line 2816
    .restart local v5    # "i":I
    :goto_3d9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3f3

    .line 2817
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2818
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f0

    .line 2819
    iget-object v7, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    .end local v6    # "value":Ljava/lang/String;
    :cond_3f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d9

    .line 2821
    .end local v5    # "i":I
    :cond_3f3
    monitor-exit v4
    :try_end_3f4
    .catchall {:try_start_3d3 .. :try_end_3f4} :catchall_3fa

    .line 2822
    :try_start_3f4
    const-string v4, "[OnlineConfig] update pvdClsB success"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_3f9
    .catch Lorg/json/JSONException; {:try_start_3f4 .. :try_end_3f9} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_3f4 .. :try_end_3f9} :catch_568
    .catchall {:try_start_3f4 .. :try_end_3f9} :catchall_565

    .line 2822
    .end local v3    # "jArray":Lorg/json/JSONArray;
    goto :goto_3fd

    .line 2821
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    :catchall_3fa
    move-exception v0

    :try_start_3fb
    monitor-exit v4
    :try_end_3fc
    .catchall {:try_start_3fb .. :try_end_3fc} :catchall_3fa

    :try_start_3fc
    throw v0

    .line 2824
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_3fd
    :goto_3fd
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemKillProcessName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_444

    .line 2837
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2838
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2839
    .local v3, "jsonWakeLockList":Lorg/json/JSONArray;
    move v4, v0

    .line 2839
    .local v4, "i":I
    :goto_419
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_444

    .line 2840
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2841
    .local v5, "jsonWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2842
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "ProcessName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 2843
    .local v7, "ja":Lorg/json/JSONArray;
    move v8, v0

    .line 2843
    .local v8, "j":I
    :goto_431
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_441

    .line 2844
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2845
    .local v9, "mPackageProcessName":Ljava/lang/String;
    invoke-virtual {p0, v6, v9}, Lcom/android/server/am/OnePlusAppBootManager;->addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    .end local v9    # "mPackageProcessName":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_431

    .line 2839
    .end local v5    # "jsonWakeLock":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "ja":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :cond_441
    add-int/lit8 v4, v4, 0x1

    goto :goto_419

    .line 2849
    .end local v3    # "jsonWakeLockList":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_444
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemProcessNameEnable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45c

    .line 2850
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    .line 2669
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_45c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2853
    .end local v1    # "index":I
    :cond_460
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "[OnlineConfig] AppBoot updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_467
    .catch Lorg/json/JSONException; {:try_start_3fc .. :try_end_467} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_467} :catch_568
    .catchall {:try_start_3fc .. :try_end_467} :catchall_565

    .line 2859
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_76e

    .line 2860
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mProviderClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_54d
    const-string/jumbo v1, "mProviderCallerWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_76e

    .line 2859
    :catchall_565
    move-exception v0

    goto/16 :goto_7df

    .line 2856
    :catch_568
    move-exception v0

    .line 2857
    .local v0, "e":Ljava/lang/Exception;
    :try_start_569
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_583
    .catchall {:try_start_569 .. :try_end_583} :catchall_565

    .line 2859
    .end local v0    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_76e

    .line 2860
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mProviderClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54d

    .line 2854
    :catch_66b
    move-exception v0

    .line 2855
    .local v0, "e":Lorg/json/JSONException;
    :try_start_66c
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_686
    .catchall {:try_start_66c .. :try_end_686} :catchall_565

    .line 2859
    .end local v0    # "e":Lorg/json/JSONException;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_76e

    .line 2860
    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mProviderClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54d

    .line 2873
    :cond_76e
    :goto_76e
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_77c

    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, v1, :cond_77c

    .line 2874
    return-void

    .line 2877
    :cond_77c
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v0

    .line 2878
    :try_start_77f
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v2, :cond_78d

    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v1, :cond_78d

    .line 2879
    monitor-exit v0

    return-void

    .line 2881
    :cond_78d
    monitor-exit v0
    :try_end_78e
    .catchall {:try_start_77f .. :try_end_78e} :catchall_7dc

    .line 2883
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_798
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2884
    .local v2, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v2, :cond_7da

    iget-object v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    if-eqz v3, :cond_7da

    iget v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_7da

    .line 2886
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 2887
    :try_start_7b3
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2888
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v4, :cond_7d5

    .line 2889
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    iget v6, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-eq v5, v6, :cond_7d5

    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    if-eq v5, v1, :cond_7d0

    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7d5

    .line 2892
    :cond_7d0
    iget v5, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2895
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_7d5
    monitor-exit v3

    goto :goto_7da

    :catchall_7d7
    move-exception v0

    monitor-exit v3
    :try_end_7d9
    .catchall {:try_start_7b3 .. :try_end_7d9} :catchall_7d7

    throw v0

    .line 2897
    .end local v2    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_7da
    :goto_7da
    goto :goto_798

    .line 2899
    :cond_7db
    return-void

    .line 2881
    :catchall_7dc
    move-exception v1

    :try_start_7dd
    monitor-exit v0
    :try_end_7de
    .catchall {:try_start_7dd .. :try_end_7de} :catchall_7dc

    throw v1

    .line 2859
    :goto_7df
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_8db

    .line 2860
    const-string v1, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceActionBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceActionWhiteList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivityClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProviderClassBlackList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProviderCallerWhiteList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_8db
    throw v0
.end method

.method private responseSIMStateChanged()Z
    .registers 6

    .line 2246
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 2247
    return v1

    .line 2249
    :cond_7
    const/4 v0, 0x0

    .line 2251
    .local v0, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2252
    .local v2, "mccCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3c

    .line 2253
    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2254
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 2255
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    goto :goto_3b

    .line 2256
    :cond_26
    const-string/jumbo v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 2257
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 2258
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    goto :goto_3b

    .line 2260
    :cond_36
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 2261
    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 2263
    :goto_3b
    const/4 v0, 0x1

    .line 2265
    :cond_3c
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_42

    if-eqz v0, :cond_61

    .line 2266
    :cond_42
    const-string v1, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_61
    return v0
.end method

.method private resumeWhiteListFromOnlineConfig()V
    .registers 9

    .line 2373
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2374
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 2375
    .local v2, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    iget v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c

    .line 2376
    iget-object v3, v2, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 2377
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v5

    if-nez v5, :cond_4c

    .line 2378
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_49

    .line 2379
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeWhiteListFromOnlineConfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_49
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2383
    .end local v2    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_4c
    goto :goto_d

    .line 2384
    :cond_4d
    monitor-exit v0

    .line 2385
    return-void

    .line 2384
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private schedulePersistAppBootInfo(J)V
    .registers 5
    .param p1, "delay"    # J

    .line 2639
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 2640
    return-void

    .line 2642
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2643
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2644
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2645
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2647
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 2648
    return-void
.end method

.method private sendNextChangeRuleMsg(J)V
    .registers 5
    .param p1, "time"    # J

    .line 2606
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "sendNextChangeRuleMsg # "

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2607
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 2608
    return-void
.end method

.method private switchControlCenter(Ljava/lang/String;)V
    .registers 5
    .param p1, "forceSwitch"    # Ljava/lang/String;

    .line 1722
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.appboot.usersetted"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1723
    const-string/jumbo v0, "skip forceSwitch cause user has setted switch before!"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1724
    return-void

    .line 1726
    :cond_18
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1727
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    goto :goto_31

    .line 1728
    :cond_25
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1729
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1731
    :cond_31
    :goto_31
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return-void
.end method

.method private updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 439
    if-nez p1, :cond_16

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !!!!!!!Exception # updateAppBootInfo # pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 442
    :cond_16
    const/4 v0, 0x0

    .line 443
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 444
    if-nez v0, :cond_5e

    .line 445
    new-instance v1, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    invoke-direct {v1, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 446
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 447
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 449
    :try_start_33
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_3b
    .catchall {:try_start_33 .. :try_end_38} :catchall_39

    .line 453
    goto :goto_59

    .line 454
    :catchall_39
    move-exception v0

    goto :goto_5c

    .line 450
    :catch_3b
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3c
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    monitor-exit v2

    .line 458
    move-object v0, v1

    goto :goto_67

    .line 454
    :goto_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_39

    throw v0

    .line 456
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_5e
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 458
    :goto_67
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_7f

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppBootInfo # abi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 461
    :cond_7f
    return-object v0
.end method

.method private updateHugePowerPackage(Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "add"    # Z
    .param p3, "tag"    # I

    .line 1483
    if-nez p1, :cond_3

    return-void

    .line 1485
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1486
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHugePowerPackage # pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_32
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1489
    const/4 v2, 0x2

    if-eqz p2, :cond_52

    if-ne p3, v2, :cond_52

    .line 1490
    :try_start_3a
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 1491
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 1498
    :catchall_50
    move-exception v2

    goto :goto_87

    .line 1492
    :cond_52
    if-nez p2, :cond_73

    const/4 v3, 0x4

    if-ne p3, v3, :cond_73

    .line 1494
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1495
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1496
    :cond_6e
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    :cond_73
    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_3a .. :try_end_74} :catchall_50

    .line 1500
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    if-nez v1, :cond_86

    if-eqz p2, :cond_86

    if-ne p3, v2, :cond_86

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_86

    .line 1502
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1505
    :cond_86
    return-void

    .line 1498
    :goto_87
    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_50

    throw v2
.end method

.method private updateHugePowerPkgTempAction(Z)V
    .registers 8
    .param p1, "whitelist"    # Z

    .line 1508
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1510
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1511
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 1512
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz p1, :cond_2f

    .line 1513
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_40

    .line 1516
    :cond_2f
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1520
    .end local v2    # "pkgName":Ljava/lang/String;
    :goto_40
    goto :goto_d

    .line 1521
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_41
    monitor-exit v0

    .line 1522
    return-void

    .line 1521
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "abi"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p2, "callerStr"    # Ljava/lang/String;
    .param p3, "calleeStr"    # Ljava/lang/String;

    .line 2987
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2988
    .local v0, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_58

    .line 2989
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2990
    .local v2, "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2991
    :cond_2e
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 2992
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    goto :goto_57

    .line 2994
    :cond_3a
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2996
    .end local v2    # "s":Ljava/lang/String;
    :cond_57
    :goto_57
    goto :goto_a

    .line 2999
    :cond_58
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3000
    if-eqz v0, :cond_b0

    .line 3001
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3002
    .restart local v2    # "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3003
    :cond_86
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 3004
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_af

    .line 3006
    :cond_92
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_af

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3008
    .end local v2    # "s":Ljava/lang/String;
    :cond_af
    :goto_af
    goto :goto_62

    .line 3010
    :cond_b0
    return-void
.end method

.method private updateNotificationListener(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "update":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 631
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 632
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 633
    const/4 v0, 0x1

    .line 635
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_4a

    .line 637
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateNotificationListener # update="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " # pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 641
    :cond_33
    if-eqz v0, :cond_49

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.appboot.notification_listener_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 646
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_49
    return-void

    .line 635
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method private updateSettingsObserver(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 2445
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    .line 2447
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dialer_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    .line 2449
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# updateSettingsObserver #tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDefaultSMSPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDefaultDailerPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2455
    :cond_41
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    .line 2456
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2458
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2461
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_4f
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 2462
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 2464
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 2466
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_5c
    return-void
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .line 1454
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1455
    return-void

    .line 1458
    :cond_5
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1459
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    .line 1461
    .local v1, "pkgFlag":I
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_31

    .line 1463
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_31

    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# addDependencyPackageFlag # go pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callingPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1467
    :cond_31
    return-void
.end method

.method addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 950
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 951
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 952
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_26

    .line 955
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 956
    .restart local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_26
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_8d

    .line 960
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 961
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 963
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "mKillPackageProcessName: packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 964
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, ", tags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 965
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 966
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 968
    .end local v6    # "t":Ljava/lang/String;
    goto :goto_65

    .line 969
    :cond_7a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 970
    const-string v5, "OnePlusAppBootManager"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    goto :goto_34

    .line 973
    :cond_8d
    return-void
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 502
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16f

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_b

    goto/16 :goto_16f

    .line 505
    :cond_b
    const/4 v0, 0x0

    if-eqz p2, :cond_46

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 506
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mRestrictActivityPackage:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "# forbid background app start activity!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 508
    return v0

    .line 511
    :cond_46
    const/4 v2, 0x1

    .line 513
    .local v2, "ret":Z
    if-eqz p1, :cond_146

    .line 514
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 516
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_97

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canActivityGo # aInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 519
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_97

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canActivityGo #2 className ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 524
    :cond_97
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_127

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_127

    .line 525
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v4, :cond_e7

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v4

    if-eqz v4, :cond_e7

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 527
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 528
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_bb

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_e6

    .line 529
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",aInfo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 533
    :cond_e6
    return v0

    .line 535
    :cond_e7
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_127

    invoke-static {p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_127

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",aInfo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # call from sandbox app"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 540
    return v0

    .line 544
    :cond_127
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v0

    if-eq v0, v1, :cond_130

    .line 545
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 548
    :cond_130
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager;->updateNotificationListener(Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 551
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 554
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 557
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_146
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_16e

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canActivityGo # ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 561
    :cond_16e
    return v2

    .line 503
    .end local v2    # "ret":Z
    :cond_16f
    :goto_16f
    return v1
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "calllingPid"    # I
    .param p3, "callingUid"    # I

    .line 474
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_a

    goto :goto_4d

    .line 478
    :cond_a
    const/4 v0, 0x1

    .line 479
    .local v0, "ret":Z
    const/16 v2, 0x2710

    if-le p3, v2, :cond_10

    .line 480
    const/4 v0, 0x0

    .line 483
    :cond_10
    if-eqz v0, :cond_24

    .line 484
    if-eqz p1, :cond_24

    .line 485
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 487
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 488
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 489
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 494
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_24
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_4c

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canInstrumentationGo # className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calllingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 498
    :cond_4c
    return v0

    .line 475
    .end local v0    # "ret":Z
    :cond_4d
    :goto_4d
    return v1
.end method

.method public canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 977
    const/4 v0, 0x1

    .line 979
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_65

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v1, :cond_b

    goto :goto_65

    .line 983
    :cond_b
    const-string/jumbo v1, "persist.sys.appboot.allow"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_16

    .line 984
    return v2

    .line 987
    :cond_16
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->mEnableJobControl:Z

    if-nez v1, :cond_1b

    .line 988
    return v2

    .line 991
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_24

    .line 992
    return v0

    .line 995
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 997
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v2, :cond_3a

    .line 998
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3a

    .line 999
    const/4 v0, 0x0

    .line 1002
    :cond_3a
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_64

    .line 1003
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canJobSchedulerServiceGo # ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " # job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_64
    return v0

    .line 980
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_65
    :goto_65
    return v2
.end method

.method public canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 903
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 904
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " canRestartService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sr.processName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_22
    if-eqz p1, :cond_49

    .line 920
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->isContainsProcessName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 921
    .local v0, "value":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_45

    .line 923
    if-nez p3, :cond_44

    .line 924
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 925
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 926
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_44

    const-string v3, "canKillProcessService # setPkgFlag PKG_FLAG_SPECIAL_LAUNCHER_APP"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 928
    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_44
    return v2

    .line 929
    :cond_45
    if-ne v0, v2, :cond_49

    .line 930
    const/4 v1, 0x0

    return v1

    .line 934
    .end local v0    # "value":I
    :cond_49
    return p3
.end method

.method public canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "compName"    # Landroid/content/ComponentName;

    .line 649
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_a

    goto :goto_79

    .line 653
    :cond_a
    const/4 v0, 0x1

    .line 655
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 657
    return v0

    .line 660
    :cond_12
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 661
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v1, :cond_24

    .line 662
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_24

    .line 663
    const/4 v0, 0x0

    .line 666
    :cond_24
    if-nez v0, :cond_33

    .line 667
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 668
    :try_start_29
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mNotiListenerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 669
    monitor-exit v1

    goto :goto_33

    :catchall_30
    move-exception v4

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v4

    .line 671
    :cond_33
    :goto_33
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_5c

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canNotificationListenerServiceGo # ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # compName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_78

    .line 675
    :cond_5c
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_78

    .line 676
    if-nez v0, :cond_78

    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canNotificationListenerServiceGo forbid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_78
    :goto_78
    return v0

    .line 650
    .end local v0    # "ret":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_79
    :goto_79
    return v1
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 1404
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e6

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_b

    goto/16 :goto_e6

    .line 1408
    :cond_b
    const/4 v0, 0x1

    .line 1409
    .local v0, "ret":Z
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1410
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 1412
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v1, :cond_40

    .line 1413
    const/4 v0, 0x1

    .line 1415
    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6}, Lcom/android/server/am/OnePlusAppBootManager;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5c

    .line 1416
    const/4 v0, 0x0

    .line 1417
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_5c

    const-string v4, "canProcGo # set false because of PKG_FLAG_SPECIAL_LAUNCHER_APP!"

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_5c

    .line 1419
    :cond_40
    if-eqz p2, :cond_5b

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_5b

    .line 1421
    :cond_53
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_5c

    .line 1422
    const/4 v0, 0x0

    goto :goto_5c

    .line 1420
    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 1425
    :cond_5c
    :goto_5c
    if-nez v0, :cond_62

    .line 1426
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v0

    .line 1429
    :cond_62
    if-ne v0, v1, :cond_75

    const-string v4, "embryo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v1, :cond_75

    .line 1430
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1433
    :cond_75
    if-eqz v0, :cond_7b

    .line 1434
    const/4 v4, 0x4

    invoke-direct {p0, v2, v6, v4}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    .line 1438
    :cond_7b
    const-string/jumbo v4, "persist.sys.appboot.allow"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1439
    .local v4, "allow":I
    if-ne v4, v1, :cond_a3

    .line 1440
    const/4 v0, 0x1

    .line 1441
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_c3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " # force can GO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_c3

    .line 1442
    :cond_a3
    if-ne v4, v5, :cond_c3

    .line 1443
    const/4 v0, 0x0

    .line 1444
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_c3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " # force can NOT GO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1447
    .end local v4    # "allow":I
    :cond_c3
    :goto_c3
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_c9

    if-nez v0, :cond_e5

    .line 1448
    :cond_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProcGo # ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1450
    :cond_e5
    return v0

    .line 1405
    .end local v0    # "ret":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_e6
    :goto_e6
    return v1
.end method

.method public canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 11
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 1271
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1ab

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_b

    goto/16 :goto_1ab

    .line 1274
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    if-nez v0, :cond_3b

    .line 1275
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canProviderGo # ret=true # DISABLE_FUNC_CAN_PROVIDER_GO # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_29
    if-eqz p1, :cond_3a

    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3a

    .line 1277
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1278
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1280
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_3a
    return v1

    .line 1282
    :cond_3b
    const/4 v0, 0x1

    .line 1283
    .local v0, "ret":Z
    const/4 v2, 0x0

    .line 1284
    .local v2, "callerPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1285
    .local v3, "calleePkg":Ljava/lang/String;
    if-eqz p1, :cond_168

    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_168

    .line 1286
    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1287
    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v4

    .line 1289
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v5, 0x0

    if-nez p2, :cond_97

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v6, :cond_97

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1290
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    if-eq v6, v1, :cond_97

    iget-object v6, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_97

    .line 1292
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v6

    if-eq v6, v1, :cond_97

    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1293
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1294
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_96

    const-string v1, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# canProviderGo # ret=false, cpr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " # blackprovider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_96
    return v5

    .line 1298
    :cond_97
    if-eqz p2, :cond_a1

    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_a1

    .line 1299
    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1302
    :cond_a1
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_c1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# canProviderGo # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1303
    :cond_c1
    if-eqz v2, :cond_de

    if-eqz v3, :cond_de

    .line 1304
    const-string v6, "android"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    goto :goto_de

    .line 1306
    :cond_ce
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_de

    .line 1307
    invoke-virtual {v4, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 1308
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    .line 1312
    :cond_de
    :goto_de
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v6

    if-eq v6, v1, :cond_132

    .line 1313
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_fa

    .line 1314
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fa

    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderCallerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fa

    .line 1315
    const/4 v0, 0x0

    .line 1318
    :cond_fa
    if-eqz v2, :cond_132

    if-eqz v3, :cond_132

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_132

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_132

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # ret=false callerPkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calleePkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " # call from sandbox app"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1321
    return v5

    .line 1334
    :cond_132
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_162

    .line 1335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", callerApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", cpr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # abi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1339
    :cond_162
    if-eqz v0, :cond_167

    .line 1340
    invoke-virtual {v4, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1342
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_167
    goto :goto_18e

    .line 1343
    :cond_168
    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProviderGo # Exception: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cpr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", callerApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_18e
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_1aa

    .line 1348
    if-nez v0, :cond_1aa

    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canProviderGo forbid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1aa
    return v0

    .line 1272
    .end local v0    # "ret":Z
    .end local v2    # "callerPkg":Ljava/lang/String;
    .end local v3    # "calleePkg":Ljava/lang/String;
    :cond_1ab
    :goto_1ab
    return v1
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 10
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1150
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1df

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_b

    goto/16 :goto_1df

    .line 1154
    :cond_b
    const/4 v0, 0x0

    .line 1155
    .local v0, "ret":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1158
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string/jumbo v3, "persist.sys.appboot.allow"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1d

    .line 1159
    return v1

    .line 1163
    :cond_1d
    if-eqz p2, :cond_b0

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_b0

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 1164
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetBroadcastActionList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x2710

    if-eqz v3, :cond_70

    .line 1165
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_44

    .line 1166
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1173
    :cond_44
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1174
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # widget intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1176
    :cond_6f
    return v1

    .line 1178
    :cond_70
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1184
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_87

    .line 1185
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1188
    :cond_87
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1189
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_af

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # white intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1191
    :cond_af
    return v1

    .line 1207
    :cond_b0
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v1, :cond_127

    .line 1208
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_c1

    .line 1209
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1210
    const/4 v0, 0x1

    goto :goto_120

    .line 1211
    :cond_c1
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f7

    .line 1212
    const/4 v0, 0x0

    .line 1213
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_120

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_120

    .line 1217
    :cond_f7
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_ff

    .line 1218
    const/4 v0, 0x1

    goto :goto_120

    .line 1219
    :cond_ff
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_107

    .line 1220
    const/4 v0, 0x1

    goto :goto_120

    .line 1221
    :cond_107
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_11f

    .line 1222
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v4, :cond_11d

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_120

    .line 1224
    :cond_11d
    const/4 v0, 0x1

    goto :goto_120

    .line 1227
    :cond_11f
    const/4 v0, 0x0

    .line 1230
    :cond_120
    :goto_120
    if-eqz v0, :cond_1ac

    .line 1231
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto/16 :goto_1ac

    .line 1234
    :cond_127
    const/4 v0, 0x1

    .line 1235
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_1ac

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 1236
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_1ac

    .line 1237
    if-eqz p2, :cond_1ac

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1ac

    .line 1238
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_173

    .line 1240
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 1241
    const/4 v0, 0x0

    .line 1242
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v3, :cond_157

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v3, :cond_172

    .line 1243
    :cond_157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=false comp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # black-action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1245
    :cond_172
    return v0

    .line 1249
    :cond_173
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1ac

    .line 1250
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1251
    if-eqz v1, :cond_1ab

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 1252
    const/4 v0, 0x0

    .line 1253
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v3, :cond_190

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v3, :cond_1ab

    .line 1254
    :cond_190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=false comp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " # blackclass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1257
    :cond_1ab
    return v0

    .line 1263
    .end local v1    # "temp":Ljava/lang/String;
    :cond_1ac
    :goto_1ac
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_1b2

    if-nez v0, :cond_1de

    .line 1264
    :cond_1b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canReceiverGo # ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", info= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # abi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1267
    :cond_1de
    return v0

    .line 1151
    .end local v0    # "ret":Z
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1df
    :goto_1df
    return v1
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .registers 23
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 684
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4cf

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_15

    goto/16 :goto_4cf

    .line 688
    :cond_15
    const/4 v5, 0x0

    .line 689
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_22

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v7, :cond_22

    .line 690
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 693
    :cond_22
    if-nez v5, :cond_25

    .line 694
    return v6

    .line 697
    :cond_25
    const/4 v7, 0x0

    .line 698
    .local v7, "ret":Z
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v8

    .line 701
    .local v8, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string/jumbo v9, "persist.sys.appboot.allow"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_35

    .line 702
    return v6

    .line 706
    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "action":Ljava/lang/String;
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 710
    .local v11, "compName":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 711
    .local v12, "callerPkg":Ljava/lang/String;
    move-object v13, v5

    .line 712
    .local v13, "calleePkg":Ljava/lang/String;
    if-eqz v1, :cond_48

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_48

    .line 713
    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_4c

    .line 714
    :cond_48
    if-eqz p5, :cond_4c

    .line 715
    move-object/from16 v12, p5

    .line 717
    :cond_4c
    :goto_4c
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v15, :cond_6c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canServiceGo # "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 718
    :cond_6c
    const/4 v6, 0x2

    if-eqz v12, :cond_189

    if-eqz v13, :cond_189

    .line 719
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9d

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v15

    and-int/lit16 v15, v15, 0x200

    if-eqz v15, :cond_9d

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=false pkgName "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # call from sandbox app"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 722
    return v10

    .line 724
    :cond_9d
    const-string v15, "android"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c0

    const-string v15, "com.android.nfc"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ae

    goto :goto_c0

    .line 753
    :cond_ae
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_189

    .line 754
    invoke-virtual {v8, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 755
    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto/16 :goto_189

    .line 725
    :cond_c0
    :goto_c0
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v15

    const/4 v10, 0x1

    if-eq v15, v10, :cond_16a

    .line 726
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    if-ne v10, v6, :cond_166

    .line 727
    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 728
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_e1

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_fa

    :cond_e1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false pkgName "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # SyncAdapter"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 729
    :cond_fa
    const/4 v6, 0x0

    return v6

    .line 732
    :cond_fc
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v6, :cond_166

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v6

    if-eqz v6, :cond_166

    .line 733
    if-eqz v11, :cond_139

    .line 734
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, "clz":Ljava/lang/String;
    if-eqz v6, :cond_139

    iget-object v10, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    .line 736
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v10, :cond_11e

    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v10, :cond_137

    .line 737
    :cond_11e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=false r "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " # blackclass"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 738
    :cond_137
    const/4 v10, 0x0

    return v10

    .line 742
    .end local v6    # "clz":Ljava/lang/String;
    :cond_139
    if-eqz v9, :cond_166

    iget-object v6, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_166

    .line 743
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v6, :cond_14b

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_164

    .line 744
    :cond_14b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 745
    :cond_164
    const/4 v6, 0x0

    return v6

    .line 749
    :cond_166
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 751
    :cond_16a
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_187

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=true pkgName "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # android call"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 752
    :cond_187
    const/4 v10, 0x1

    return v10

    .line 759
    :cond_189
    :goto_189
    const/4 v10, 0x1

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v15

    if-eq v15, v10, :cond_2c9

    .line 760
    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c1

    .line 761
    invoke-virtual {v8, v10}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 762
    const/4 v6, 0x1

    .line 763
    .end local v7    # "ret":Z
    .local v6, "ret":Z
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_1bf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # widgetpkg"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 764
    :cond_1bf
    const/4 v10, 0x1

    return v10

    .line 766
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_1c1
    if-eqz v9, :cond_1f5

    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f5

    .line 767
    invoke-virtual {v8, v10}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 768
    const/4 v6, 0x1

    .line 769
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_1f4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # white-action"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 770
    :cond_1f4
    return v6

    .line 773
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_1f5
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    const/4 v15, 0x1

    if-ne v10, v15, :cond_202

    .line 774
    invoke-virtual {v8, v15}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 775
    const/4 v6, 0x1

    .line 775
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :goto_200
    goto/16 :goto_2c1

    .line 776
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_202
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    if-ne v10, v6, :cond_295

    .line 777
    const/4 v6, 0x0

    .line 778
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_22e

    .line 779
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # blacklist"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 780
    :cond_22e
    if-lez v4, :cond_260

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v10

    if-ne v7, v10, :cond_260

    .line 781
    const/4 v6, 0x1

    .line 782
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_260

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # blacklist # callingUid"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 785
    :cond_260
    if-nez v6, :cond_2c1

    if-eqz v1, :cond_2c1

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v10

    if-ne v7, v10, :cond_2c1

    .line 786
    const/4 v6, 0x1

    .line 787
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_2c1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pkgName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # blacklist # proc uid"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_2c1

    .line 790
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_295
    const/16 v6, 0x2710

    if-nez v7, :cond_2a6

    if-lez v4, :cond_2a6

    .line 791
    if-ge v4, v6, :cond_29f

    .line 792
    const/4 v7, 0x1

    goto :goto_2a6

    .line 793
    :cond_29f
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v10

    if-ne v4, v10, :cond_2a6

    .line 794
    const/4 v7, 0x1

    .line 798
    :cond_2a6
    :goto_2a6
    if-nez v7, :cond_2c0

    if-eqz v1, :cond_2c0

    .line 799
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v10, v6, :cond_2b3

    .line 800
    const/4 v6, 0x1

    goto/16 :goto_200

    .line 801
    :cond_2b3
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v10

    if-ne v6, v10, :cond_2c0

    .line 802
    const/4 v6, 0x1

    goto/16 :goto_200

    .line 807
    :cond_2c0
    move v6, v7

    .line 807
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_2c1
    :goto_2c1
    if-eqz v6, :cond_374

    .line 808
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto/16 :goto_374

    .line 812
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_2c9
    const/4 v6, 0x1

    .line 813
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v7, :cond_374

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v7

    if-eqz v7, :cond_374

    .line 814
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_374

    if-eqz v12, :cond_2e3

    .line 815
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_374

    .line 817
    :cond_2e3
    if-eqz v11, :cond_347

    .line 818
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 819
    .local v7, "clz":Ljava/lang/String;
    if-eqz v7, :cond_347

    .line 820
    iget-object v10, v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurAppServiceClassWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31c

    .line 821
    if-eqz v13, :cond_31c

    sget-object v10, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31c

    .line 822
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_31a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=true r "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " # temp-white-class"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 823
    :cond_31a
    const/4 v10, 0x1

    return v10

    .line 827
    :cond_31c
    iget-object v10, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_347

    .line 828
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v10, :cond_32c

    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v10, :cond_345

    :cond_32c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# canServiceGo # ret=false r "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " # blackclass"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 829
    :cond_345
    const/4 v10, 0x0

    return v10

    .line 835
    .end local v7    # "clz":Ljava/lang/String;
    :cond_347
    if-eqz v9, :cond_374

    iget-object v7, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_374

    .line 836
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v7, :cond_359

    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v7, :cond_372

    .line 837
    :cond_359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 838
    :cond_372
    const/4 v7, 0x0

    return v7

    .line 843
    :cond_374
    :goto_374
    if-nez v6, :cond_47a

    .line 844
    if-eqz v12, :cond_47a

    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 845
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_388

    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 846
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47a

    .line 847
    :cond_388
    const/4 v7, 0x0

    .line 849
    .local v7, "tag":Ljava/lang/String;
    if-eqz v11, :cond_3a1

    .line 850
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3b2

    .line 852
    :cond_3a1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 855
    :goto_3b2
    if-eqz v1, :cond_3d2

    .line 856
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3e1

    .line 858
    :cond_3d2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 861
    :goto_3e1
    invoke-virtual {v8, v7}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z

    move-result v6

    .line 862
    if-eqz v6, :cond_458

    .line 863
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v10, :cond_458

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v10

    if-eqz v10, :cond_458

    .line 864
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    const/4 v15, 0x1

    if-eq v10, v15, :cond_458

    .line 865
    if-eqz v11, :cond_42b

    .line 866
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 867
    .local v10, "clz":Ljava/lang/String;
    if-eqz v10, :cond_42b

    iget-object v15, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42b

    .line 868
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v15, :cond_410

    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v15, :cond_429

    .line 869
    :cond_410
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canServiceGo # ret=false r "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " # blackclass"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 870
    :cond_429
    const/4 v1, 0x0

    return v1

    .line 874
    .end local v10    # "clz":Ljava/lang/String;
    :cond_42b
    if-eqz v9, :cond_458

    iget-object v1, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_458

    .line 875
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_43d

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_456

    .line 876
    :cond_43d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# canServiceGo # ret=false intent "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " # black-action"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 877
    :cond_456
    const/4 v1, 0x0

    return v1

    .line 882
    :cond_458
    if-eqz v6, :cond_47a

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 884
    const-string v1, "OnePlusAppBootManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "let intent "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " go for boot policy!"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v7    # "tag":Ljava/lang/String;
    :cond_47a
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v1, :cond_49e

    if-nez v6, :cond_481

    goto :goto_49e

    .line 896
    :cond_481
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_OEMLOG:Z

    if-eqz v1, :cond_4ce

    .line 897
    if-nez v6, :cond_4ce

    const-string v1, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canServiceGo forbid "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ce

    .line 892
    :cond_49e
    :goto_49e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# canServiceGo # ret="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " # abi="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " # mCurrentActivityPkg="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mLastActivityPkg="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 899
    :cond_4ce
    :goto_4ce
    return v6

    .line 685
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ret":Z
    .end local v8    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v9    # "action":Ljava/lang/String;
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v12    # "callerPkg":Ljava/lang/String;
    .end local v13    # "calleePkg":Ljava/lang/String;
    :cond_4cf
    :goto_4cf
    const/4 v1, 0x1

    return v1
.end method

.method public getAllAppBootModes(I)Ljava/util/List;
    .registers 10
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppBootMode;",
            ">;"
        }
    .end annotation

    .line 1627
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1628
    return-object v1

    .line 1631
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .local v0, "abmList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v2

    .line 1634
    :try_start_e
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v3, :cond_1d

    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1d

    .line 1635
    monitor-exit v2

    return-object v1

    .line 1638
    :cond_1d
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1639
    .local v3, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_53

    .line 1640
    new-instance v4, Lcom/oneplus/appboot/AppBootMode;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    .line 1641
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/oneplus/appboot/AppBootMode;-><init>(Ljava/lang/String;II)V

    .line 1640
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    .end local v3    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_53
    goto :goto_27

    .line 1644
    :cond_54
    monitor-exit v2

    .line 1645
    return-object v0

    .line 1644
    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_56

    throw v1
.end method

.method public getAppBootMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1649
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_6

    .line 1650
    const/4 v0, -0x1

    return v0

    .line 1653
    :cond_6
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1654
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    return v1
.end method

.method public getAppBootState()Z
    .registers 2

    .line 1694
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_6

    .line 1695
    const/4 v0, 0x0

    return v0

    .line 1697
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    return v0
.end method

.method getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    .local v0, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_ff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    goto/16 :goto_ff

    .line 2957
    :cond_10
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2958
    .local v1, "spt":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_52

    .line 2959
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_d4

    .line 2960
    aget-object v2, v1, v4

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2961
    .local v2, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2962
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2963
    .end local v2    # "ret":Ljava/lang/String;
    goto/16 :goto_d4

    .line 2964
    :cond_52
    array-length v2, v1

    if-le v2, v5, :cond_d4

    .line 2965
    aget-object v2, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2966
    .restart local v2    # "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ret="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2967
    :cond_74
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    .line 2969
    .local v3, "last":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2970
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_a1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ret="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2971
    :cond_a1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2972
    move v4, v5

    .line 2972
    .local v4, "i":I
    :goto_a9
    array-length v6, v1

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_d4

    .line 2973
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_c8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2974
    :cond_c8
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2972
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 2978
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "last":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_d4
    :goto_d4
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_fe

    .line 2979
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2980
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2981
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_dc

    .line 2983
    :cond_fe
    return-object v0

    .line 2954
    .end local v1    # "spt":[Ljava/lang/String;
    :cond_ff
    :goto_ff
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1750
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1751
    return-object v1

    .line 1754
    :cond_6
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_10

    goto :goto_25

    .line 1758
    :cond_10
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1759
    .local v0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1760
    .local v1, "pkgArray":[Ljava/lang/String;
    return-object v1

    .line 1755
    .end local v0    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "pkgArray":[Ljava/lang/String;
    :cond_25
    :goto_25
    return-object v1
.end method

.method public getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1735
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1736
    return-object v1

    .line 1739
    :cond_6
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_10

    goto :goto_45

    .line 1743
    :cond_10
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1744
    .local v0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerPackageArray # packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkgSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1745
    :cond_38
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1746
    .local v1, "pkgArray":[Ljava/lang/String;
    return-object v1

    .line 1740
    .end local v0    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "pkgArray":[Ljava/lang/String;
    :cond_45
    :goto_45
    return-object v1
.end method

.method public getScreenState()Z
    .registers 2

    .line 3317
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z

    return v0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 9
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 2388
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 2389
    return-void

    .line 2392
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 2393
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 2395
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppBootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 2396
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2397
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 2399
    if-eqz p2, :cond_2c

    .line 2400
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerPackageReceiver()V

    .line 2401
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerGeneralReceiver()V

    .line 2404
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->initOnlineConfig()V

    .line 2406
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    .line 2407
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    .line 2408
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2411
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dialer_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mSettingsObserver:Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2414
    const-string/jumbo v0, "init"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager;->updateSettingsObserver(Ljava/lang/String;)V

    .line 2415
    const-string v0, "com.tencent.mobileqq"

    const-string v1, "com.tencent.mobileqq:MSF"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->addPackageProcessName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mRegion:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_aa

    .line 2417
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_aa

    .line 2418
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 2419
    .local v0, "on":Z
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 2420
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->FUNC_CAN_PROVIDER_GO:Z

    .line 2421
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_aa

    .line 2422
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initEnv # set from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " # DISABLE_FUNC_CAN_PROVIDER_GO -> true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    .end local v0    # "on":Z
    :cond_aa
    new-array v0, v1, [I

    const/16 v1, 0x22

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 2427
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->sendNextChangeRuleMsg(J)V

    .line 2429
    :cond_bb
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    .line 2430
    return-void
.end method

.method public initOnlineConfig()V
    .registers 6

    .line 2659
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    new-instance v3, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 2660
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 2661
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessage(Landroid/os/Message;)Z

    .line 2662
    return-void
.end method

.method public initPackages(Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 2338
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 2339
    return-void

    .line 2342
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, " initPackages # "

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2343
    :cond_e
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 2344
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, " initPackages # mPkgMap size > 0 , return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2345
    :cond_23
    return-void

    .line 2348
    :cond_24
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 2349
    .local v1, "item":Landroid/content/pm/PackageParser$Package;
    new-instance v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 2351
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    .end local v1    # "item":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_2c

    .line 2354
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_specialList()V

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_appboot()I

    .line 2358
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 2359
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2360
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 2361
    .restart local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    # getter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1400(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I

    move-result v3

    and-int/lit8 v3, v3, -0x21

    # setter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1402(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2362
    # getter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1400(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I

    move-result v3

    and-int/lit8 v3, v3, -0x41

    # setter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1402(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2363
    const/4 v3, 0x0

    # setter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$1502(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I

    .line 2364
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2365
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 2366
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_62

    .line 2369
    :cond_95
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->resumeWhiteListFromOnlineConfig()V

    .line 2370
    return-void
.end method

.method isContainsProcessName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 937
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProcessServiceKillEnable:Z

    if-eqz v0, :cond_1e

    .line 938
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 939
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 940
    .local v0, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 941
    const/4 v1, 0x2

    return v1

    .line 943
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 946
    .end local v0    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public readXml_appboot()I
    .registers 35

    .line 3085
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_8

    .line 3086
    const/4 v0, -0x4

    return v0

    .line 3088
    :cond_8
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "# readXml_appboot"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3089
    :cond_11
    const/4 v2, 0x0

    .line 3090
    .local v2, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/appboot/appboot.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3091
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3092
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "# readXml_appboot # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3093
    :cond_29
    const/4 v0, -0x1

    return v0

    .line 3095
    :cond_2b
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 3096
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 3097
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v6, v0

    .line 3099
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_32
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_21a

    move-object v5, v0

    .line 3100
    :try_start_37
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v6, v0

    .line 3102
    const-string v0, "appboot"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v7, v0

    .line 3103
    .local v7, "nlab":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v9, v0

    .line 3104
    .local v9, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v0, "version"

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 3106
    .local v10, "version":Ljava/lang/String;
    const-string/jumbo v0, "switch"

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 3107
    .local v11, "appbootSwitch":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_67} :catch_212

    if-eqz v0, :cond_8f

    :try_start_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readXml_appboot # version "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " switch "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_85} :catch_86

    goto :goto_8f

    .line 3165
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    :catch_86
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_221

    .line 3108
    .restart local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v11    # "appbootSwitch":Ljava/lang/String;
    :cond_8f
    :goto_8f
    :try_start_8f
    const-string v0, "0"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 3109
    const-string/jumbo v0, "pkg"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a0} :catch_212

    move-object v13, v0

    .line 3110
    .local v13, "nl":Lorg/w3c/dom/NodeList;
    if-nez v13, :cond_ac

    .line 3111
    :try_start_a3
    const-string v0, "OnePlusAppBootManager"

    const-string v8, "# readXml_appboot # error # nl = null"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_86

    .line 3112
    const/4 v0, -0x2

    return v0

    .line 3114
    :cond_ac
    :try_start_ac
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 3115
    .local v14, "xmlVersion":I
    move v0, v8

    .line 3115
    .local v0, "i":I
    :goto_b2
    move v15, v0

    .line 3115
    .end local v0    # "i":I
    .local v15, "i":I
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v15, v0, :cond_20b

    .line 3116
    invoke-interface {v13, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3117
    .local v16, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v0, "package"

    move-object/from16 v8, v16

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 3117
    .end local v16    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 3118
    .local v17, "pkgName":Ljava/lang/String;
    const-string v0, "flag"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 3119
    .local v18, "flag":Ljava/lang/String;
    const-string v0, "action"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 3121
    .local v19, "actionStr":Ljava/lang/String;
    const-string v0, "caller"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 3122
    .local v20, "callerStr":Ljava/lang/String;
    const-string v0, "callee"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3124
    .local v21, "calleeStr":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_15a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "package "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_116} :catch_212

    .end local v17    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v22, v3

    :try_start_118
    const-string v3, " # flag "

    .line 3124
    .end local v3    # "f":Ljava/io/File;
    .local v22, "f":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    .end local v18    # "flag":Ljava/lang/String;
    .local v3, "flag":Ljava/lang/String;
    move-object/from16 v23, v3

    const-string v3, " # action "

    .line 3124
    .end local v3    # "flag":Ljava/lang/String;
    .local v23, "flag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_12e} :catch_153

    .line 3124
    .end local v19    # "actionStr":Ljava/lang/String;
    .local v3, "actionStr":Ljava/lang/String;
    move-object/from16 v24, v4

    :try_start_130
    const-string v4, " # callerStr="

    .line 3124
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v24, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13a} :catch_14e

    .line 3124
    .end local v20    # "callerStr":Ljava/lang/String;
    .local v4, "callerStr":Ljava/lang/String;
    move-object/from16 v25, v5

    :try_start_13c
    const-string v5, " # calleeStr="

    .line 3124
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v25, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    .end local v21    # "calleeStr":Ljava/lang/String;
    .local v5, "calleeStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_16a

    .line 3165
    .end local v3    # "actionStr":Ljava/lang/String;
    .end local v4    # "callerStr":Ljava/lang/String;
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "nl":Lorg/w3c/dom/NodeList;
    .end local v14    # "xmlVersion":I
    .end local v15    # "i":I
    .end local v23    # "flag":Ljava/lang/String;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_14e
    move-exception v0

    move-object/from16 v25, v5

    .line 3165
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_221

    .line 3165
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_153
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3165
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_221

    .line 3128
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v3, "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v11    # "appbootSwitch":Ljava/lang/String;
    .restart local v13    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v14    # "xmlVersion":I
    .restart local v15    # "i":I
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v18    # "flag":Ljava/lang/String;
    .restart local v19    # "actionStr":Ljava/lang/String;
    .restart local v20    # "callerStr":Ljava/lang/String;
    .restart local v21    # "calleeStr":Ljava/lang/String;
    :cond_15a
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v12, v17

    move-object/from16 v23, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "flag":Ljava/lang/String;
    .end local v19    # "actionStr":Ljava/lang/String;
    .end local v20    # "callerStr":Ljava/lang/String;
    .end local v21    # "calleeStr":Ljava/lang/String;
    .local v3, "actionStr":Ljava/lang/String;
    .local v4, "callerStr":Ljava/lang/String;
    .local v5, "calleeStr":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v23    # "flag":Ljava/lang/String;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_16a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    .line 3129
    .local v26, "action":I
    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    move-object/from16 v27, v0

    .line 3130
    .local v27, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    move-object/from16 v28, v3

    move-object/from16 v3, v27

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_17d} :catch_209

    .line 3131
    .end local v27    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .local v28, "actionStr":Ljava/lang/String;
    move-object/from16 v29, v4

    const/4 v4, 0x1

    if-le v14, v4, :cond_1a9

    .line 3133
    .end local v4    # "callerStr":Ljava/lang/String;
    .local v29, "callerStr":Ljava/lang/String;
    :try_start_182
    const-string/jumbo v0, "setted"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 3134
    .local v0, "settedStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3135
    .local v4, "setted":I
    if-eqz v4, :cond_197

    move-object/from16 v30, v0

    const/4 v0, 0x1

    goto :goto_19a

    :cond_197
    move-object/from16 v30, v0

    const/4 v0, 0x0

    .line 3135
    .end local v0    # "settedStr":Ljava/lang/String;
    .local v30, "settedStr":Ljava/lang/String;
    :goto_19a
    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setSetted(I)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_19d} :catch_19e

    .line 3138
    .end local v4    # "setted":I
    .end local v30    # "settedStr":Ljava/lang/String;
    goto :goto_1a9

    .line 3136
    :catch_19e
    move-exception v0

    .line 3137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19f
    const-string v4, "OnePlusAppBootManager"

    move-object/from16 v31, v0

    const-string/jumbo v0, "readXml_appboot # tag setted parse error"

    .line 3137
    .end local v0    # "e":Ljava/lang/Exception;
    .local v31, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_1a9
    :goto_1a9
    move-object/from16 v32, v5

    move/from16 v4, v26

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1ba

    .line 3141
    .end local v5    # "calleeStr":Ljava/lang/String;
    .end local v26    # "action":I
    .local v4, "action":I
    .local v32, "calleeStr":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 3142
    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 3155
    :goto_1b6
    move/from16 v33, v4

    const/4 v4, 0x1

    goto :goto_1dc

    .line 3143
    :cond_1ba
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1c5

    .line 3144
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 3145
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_1b6

    .line 3146
    :cond_1c5
    const/4 v5, 0x0

    if-nez v4, :cond_1d9

    .line 3147
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    move/from16 v33, v4

    const/4 v4, 0x1

    if-ne v5, v4, :cond_1d5

    .line 3148
    .end local v4    # "action":I
    .local v33, "action":I
    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_1dc

    .line 3150
    :cond_1d5
    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_1dc

    .line 3155
    .end local v33    # "action":I
    .restart local v4    # "action":I
    :cond_1d9
    move/from16 v33, v4

    const/4 v4, 0x1

    .line 3155
    .end local v4    # "action":I
    .restart local v33    # "action":I
    :goto_1dc
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1fb

    .line 3156
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1fb

    .line 3157
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v0

    if-nez v0, :cond_1fb

    .line 3158
    iget-object v0, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAbiRestoreList:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->access$2700(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1fb} :catch_209

    .line 3162
    :cond_1fb
    add-int/lit8 v2, v2, 0x1

    .line 3115
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v23    # "flag":Ljava/lang/String;
    .end local v28    # "actionStr":Ljava/lang/String;
    .end local v29    # "callerStr":Ljava/lang/String;
    .end local v32    # "calleeStr":Ljava/lang/String;
    .end local v33    # "action":I
    add-int/lit8 v0, v15, 0x1

    .line 3115
    .end local v15    # "i":I
    .local v0, "i":I
    move v12, v4

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    const/4 v8, 0x0

    goto/16 :goto_b2

    .line 3165
    .end local v0    # "i":I
    .end local v7    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v9    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appbootSwitch":Ljava/lang/String;
    .end local v13    # "nl":Lorg/w3c/dom/NodeList;
    .end local v14    # "xmlVersion":I
    :catch_209
    move-exception v0

    goto :goto_221

    .line 3169
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v3, "f":Ljava/io/File;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_20b
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3171
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    return v2

    .line 3165
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_212
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3165
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_221

    .line 3165
    .end local v22    # "f":Ljava/io/File;
    .end local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_21a
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 3166
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "f":Ljava/io/File;
    .restart local v24    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_221
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# readXml_appboot # parse error ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3168
    const/4 v3, -0x3

    return v3
.end method

.method public readXml_prelist()I
    .registers 21

    .line 3175
    const/4 v1, 0x0

    .line 3176
    .local v1, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/presetlist.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 3177
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3178
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "# readXml_prelist # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3179
    :cond_18
    const/4 v0, -0x1

    return v0

    .line 3181
    :cond_1a
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 3182
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 3183
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v5, v0

    .line 3185
    .local v5, "doc":Lorg/w3c/dom/Document;
    :try_start_21
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_12b

    move-object v4, v0

    .line 3186
    :try_start_26
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v5, v0

    .line 3188
    const-string/jumbo v0, "prelist"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 3189
    .local v0, "nlab":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 3190
    .local v7, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 3191
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "switch"

    invoke-interface {v7, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 3192
    .local v9, "appbootSwitch":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_53} :catch_121

    if-eqz v10, :cond_7d

    :try_start_55
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " readXml_prelist # version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " switch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_71} :catch_72

    goto :goto_7d

    .line 3207
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "appbootSwitch":Ljava/lang/String;
    :catch_72
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    goto/16 :goto_135

    .line 3194
    .restart local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "appbootSwitch":Ljava/lang/String;
    :cond_7d
    :goto_7d
    :try_start_7d
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 3195
    .local v10, "nl":Lorg/w3c/dom/NodeList;
    nop

    .line 3195
    .local v6, "i":I
    :goto_85
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_118

    .line 3196
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 3197
    .local v11, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v12, "package"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 3198
    .local v12, "pkgName":Ljava/lang/String;
    const-string v13, "flag"

    invoke-interface {v11, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 3199
    .local v13, "flag":Ljava/lang/String;
    const-string v14, "action"

    invoke-interface {v11, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 3201
    .local v14, "action":Ljava/lang/String;
    sget-boolean v15, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_b4} :catch_121

    if-eqz v15, :cond_de

    :try_start_b6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "package "

    .line 3201
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .local v16, "nlab":Lorg/w3c/dom/NodeList;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # flag "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # action "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_dd} :catch_72

    goto :goto_e0

    .line 3203
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v0    # "nlab":Lorg/w3c/dom/NodeList;
    :cond_de
    move-object/from16 v16, v0

    .line 3203
    .end local v0    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nlab":Lorg/w3c/dom/NodeList;
    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e4} :catch_121

    .line 3204
    move-object/from16 v17, v2

    :try_start_e6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ea} :catch_110

    .line 3204
    .end local v2    # "f":Ljava/io/File;
    .local v17, "f":Ljava/io/File;
    move-object/from16 v18, v3

    :try_start_ec
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f0} :catch_10a

    .line 3204
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v18, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    move-object/from16 v19, v4

    move-object/from16 v4, p0

    :try_start_f4
    invoke-direct {v15, v4, v12, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    .line 3203
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v19, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fa} :catch_108

    .line 3205
    add-int/lit8 v1, v1, 0x1

    .line 3195
    .end local v11    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "flag":Ljava/lang/String;
    .end local v14    # "action":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_85

    .line 3207
    .end local v6    # "i":I
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "appbootSwitch":Ljava/lang/String;
    .end local v10    # "nl":Lorg/w3c/dom/NodeList;
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    :catch_108
    move-exception v0

    goto :goto_135

    .line 3207
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_10a
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3207
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_135

    .line 3207
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_110
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3207
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_135

    .line 3210
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_118
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3212
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    return v1

    .line 3207
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_121
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .line 3207
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_135

    .line 3207
    .end local v17    # "f":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_12b
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v4

    move-object/from16 v4, p0

    move-object/from16 v19, v2

    .line 3208
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_135
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# readXml_prelist # parse error ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const/4 v2, -0x2

    return v2
.end method

.method public setAppBootMode(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1658
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_6

    .line 1659
    const/4 v0, 0x0

    return v0

    .line 1661
    :cond_6
    const/4 v0, 0x0

    .line 1662
    .local v0, "ret":I
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 1663
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    packed-switch p2, :pswitch_data_5c

    .line 1675
    const/16 v0, -0xa

    goto :goto_27

    .line 1667
    :pswitch_11
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1668
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1669
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    :cond_25
    const/4 v0, 0x1

    .line 1672
    nop

    .line 1680
    :goto_27
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 1681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setAppBootMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1684
    :cond_4f
    if-lez v0, :cond_5a

    .line 1685
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setSetted(I)V

    .line 1687
    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1690
    :cond_5a
    return v0

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public setAppBootState(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 1701
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1702
    return-void

    .line 1705
    :cond_5
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setAppBootState # on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAppBootSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_49

    .line 1708
    sget v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    .line 1709
    const-string/jumbo v0, "persist.sys.appboot.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusAppBootManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_49
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eq v0, p1, :cond_54

    .line 1713
    sput-boolean p1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1715
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 1718
    :cond_54
    const-string/jumbo v0, "persist.sys.appboot.usersetted"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 1598
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setCurrentIME # mCurrentIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1600
    :cond_20
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1601
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1602
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1603
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1605
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_31
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1608
    if-nez p1, :cond_3

    .line 1609
    return-void

    .line 1612
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 1613
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setCurrentWallpaperPackage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1615
    :cond_21
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 1616
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1618
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1620
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_2f
    return-void
.end method

.method public skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 1012
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# skipBroadcast # intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callerPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callerApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1015
    :cond_38
    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-ge p4, v0, :cond_3e

    .line 1016
    return v1

    .line 1019
    :cond_3e
    if-nez p1, :cond_41

    .line 1020
    return v1

    .line 1023
    :cond_41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_77

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_77

    .line 1027
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v3

    .line 1028
    .local v3, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_77

    .line 1029
    const-string v1, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# skipBroadcast # black action : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v5

    .line 1035
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_77
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mKillPackageProcessName:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1036
    const-string v2, "com.tencent.mobileqq.broadcast.qq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1037
    invoke-static {p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1038
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    and-int/lit16 v3, v3, -0x81

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1039
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_9e

    const-string/jumbo v3, "skipBroadcast # remove PKG_FLAG_SPECIAL_LAUNCHER_APP !"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1043
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_9e
    return v1
.end method

.method public trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "add"    # Z
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .line 362
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 363
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG_TRACK # trackProcess # add="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2a
    if-eqz p2, :cond_35

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_35

    .line 367
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_36

    .line 369
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_35
    const/4 v0, 0x0

    .line 371
    .restart local v0    # "pkgName":Ljava/lang/String;
    :goto_36
    if-nez v0, :cond_39

    .line 372
    return-void

    .line 374
    :cond_39
    const/4 v1, 0x0

    .line 375
    .local v1, "pkgDied":Z
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 376
    :try_start_3d
    sget-object v3, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 377
    .local v3, "procSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v3, :cond_6a

    .line 378
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 379
    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->mProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    if-nez p1, :cond_6a

    .line 381
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PKG_TRACK # Exception # no add when remove ProcessRecord:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_6a
    if-eqz p1, :cond_70

    .line 385
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 387
    :cond_70
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 388
    .local v4, "size":I
    if-nez v4, :cond_78

    .line 389
    monitor-exit v2

    return-void

    .line 391
    :cond_78
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    move v4, v5

    .line 393
    if-nez v4, :cond_83

    .line 394
    const/4 v1, 0x1

    .line 396
    :cond_83
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_b1

    .line 397
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 398
    .local v5, "contain":Z
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PKG_TRACK # trackProcess # pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", contain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v3    # "procSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "contain":Z
    :cond_b1
    :goto_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_3d .. :try_end_b2} :catchall_b8

    .line 404
    if-eqz v1, :cond_b7

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 412
    :cond_b7
    return-void

    .line 402
    :catchall_b8
    move-exception v3

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v3
.end method

.method public updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "flag"    # I

    .line 1764
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_43

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_9

    goto :goto_43

    .line 1768
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameOfBind(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 1770
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_17

    goto :goto_42

    .line 1774
    :cond_17
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccesibilityServiceFlag # packageName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1775
    :cond_38
    if-ne p3, v2, :cond_41

    .line 1776
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1778
    :cond_41
    return-void

    .line 1771
    :cond_42
    :goto_42
    return-void

    .line 1765
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_43
    :goto_43
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1538
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1539
    return-void

    .line 1542
    :cond_5
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1544
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v1, :cond_33

    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1545
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1546
    :cond_32
    return-void

    .line 1549
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultSMSPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1550
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # smspkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1551
    :cond_5c
    return-void

    .line 1554
    :cond_5d
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mDefaultDailerPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1555
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # dailpkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1556
    :cond_86
    return-void

    .line 1559
    :cond_87
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->isWidgetPkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1560
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # widgetpkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1561
    :cond_aa
    return-void

    .line 1564
    :cond_ab
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    .line 1565
    .local v1, "action":I
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    .line 1566
    .local v2, "pkgFlag":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_fd

    .line 1567
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_dc

    .line 1568
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1569
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_fc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # sys-whitelist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_fc

    .line 1571
    :cond_dc
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1572
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_fc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # 3rd-whitelist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1574
    :cond_fc
    :goto_fc
    return-void

    .line 1577
    :cond_fd
    const/4 v5, 0x2

    if-ne v1, v5, :cond_121

    .line 1578
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1579
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_120

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1580
    :cond_120
    return-void

    .line 1583
    :cond_121
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_152

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_152

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_12e

    goto :goto_152

    .line 1590
    :cond_12e
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1591
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_175

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_175

    .line 1586
    :cond_152
    :goto_152
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1587
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_175

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1594
    :cond_175
    :goto_175
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .line 1525
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1526
    return-void

    .line 1528
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1529
    .local v0, "samePid":Z
    :goto_e
    if-eqz v0, :cond_2e

    .line 1531
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # samePid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1532
    :cond_2d
    return-void

    .line 1534
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method public updateBootFlag(Landroid/content/pm/ResolveInfo;I)V
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "flag"    # I

    .line 1374
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1375
    return-void

    .line 1378
    :cond_5
    const/4 v0, 0x0

    .line 1379
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_49

    .line 1380
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_11

    .line 1381
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_22

    .line 1382
    :cond_11
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1a

    .line 1383
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_22

    .line 1384
    :cond_1a
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_48

    .line 1385
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1390
    :goto_22
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 1391
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v2

    if-eq v2, p2, :cond_2f

    .line 1392
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1395
    :cond_2f
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_49

    .line 1396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateBootFlag # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .end local v1    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    goto :goto_49

    .line 1387
    :cond_48
    return-void

    .line 1400
    :cond_49
    :goto_49
    return-void
.end method

.method public updatePowerFlag(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 1470
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 1471
    return-void

    .line 1474
    :cond_5
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    .line 1475
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V

    .line 1477
    :cond_10
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .line 599
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateWidgetPackage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 601
    if-eqz p2, :cond_2f

    .line 602
    :try_start_27
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 608
    :catchall_2d
    move-exception v1

    goto :goto_3e

    .line 604
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 605
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 608
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_2d

    throw v1
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 613
    if-nez p1, :cond_d

    .line 614
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_f

    .line 618
    :catchall_b
    move-exception v1

    goto :goto_11

    .line 616
    :cond_d
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 618
    :goto_f
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_b

    throw v1
.end method

.method public writeXml_appboot(Ljava/util/HashMap;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;)I"
        }
    .end annotation

    .line 3030
    .local p1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "writeXml_appboot #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3032
    :cond_a
    const/4 v0, 0x0

    .line 3033
    .local v0, "ret":I
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 3034
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 3036
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_14
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 3037
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3038
    const-string v3, "\n"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3040
    const-string v3, ""

    const-string v4, "appboot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3041
    const-string v3, ""

    const-string/jumbo v4, "version"

    sget-object v5, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3042
    const-string v3, ""

    const-string/jumbo v4, "switch"

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eqz v5, :cond_43

    const-string v5, "1"

    goto :goto_45

    :cond_43
    const-string v5, "0"

    :goto_45
    invoke-interface {v1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3043
    const-string v3, "\n"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3045
    monitor-enter p1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_1b0

    .line 3046
    :try_start_4e
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_196

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 3047
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_7a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# writeXml_appboot # abi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_4e .. :try_end_7a} :catchall_1ad

    .line 3048
    :cond_7a
    if-eqz v4, :cond_194

    .line 3050
    :try_start_7c
    const-string v5, ""

    const-string/jumbo v6, "pkg"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3051
    const-string v5, ""

    const-string/jumbo v6, "package"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3052
    const-string v5, ""

    const-string v6, "flag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3053
    const-string v5, ""

    const-string/jumbo v6, "setted"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getSetted()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3054
    const-string v5, ""

    const-string v6, "boot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3055
    const-string v5, ""

    const-string v6, "action"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_121

    sget-object v8, Lcom/android/server/am/OnePlusAppBootManager;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_125

    :cond_121
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v8

    :goto_125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3056
    const-string v5, ""

    const-string v6, "caller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSetString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3057
    const-string v5, ""

    const-string v6, "callee"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSetString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3058
    const-string v5, ""

    const-string/jumbo v6, "pkg"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3059
    const-string v5, "\n"

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_174} :catch_175
    .catchall {:try_start_7c .. :try_end_174} :catchall_1ad

    .line 3063
    goto :goto_194

    .line 3060
    :catch_175
    move-exception v5

    .line 3061
    .local v5, "abie":Ljava/lang/Exception;
    :try_start_176
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeXml_appboot # Exception # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3065
    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v5    # "abie":Ljava/lang/Exception;
    :cond_194
    :goto_194
    goto/16 :goto_56

    .line 3066
    :cond_196
    monitor-exit p1
    :try_end_197
    .catchall {:try_start_176 .. :try_end_197} :catchall_1ad

    .line 3067
    :try_start_197
    const-string v3, ""

    const-string v4, "appboot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3068
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3071
    const-string v3, "/data/system/appboot/appboot.xml"

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusAppBootManager;->WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1ab} :catch_1b0

    move v0, v3

    .line 3076
    goto :goto_1d1

    .line 3066
    :catchall_1ad
    move-exception v3

    :try_start_1ae
    monitor-exit p1
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1ad

    :try_start_1af
    throw v3
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b0} :catch_1b0

    .line 3072
    :catch_1b0
    move-exception v3

    .line 3073
    .local v3, "e":Ljava/lang/Exception;
    const/16 v0, -0xb

    .line 3074
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeXml_appboot # Exception # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3077
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1d1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1ed

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 3078
    :cond_1ed
    return v0
.end method
