.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc2000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 119
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 137
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 164
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 169
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 174
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 179
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    .line 195
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    .line 202
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    .line 216
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p4, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 248
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 249
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 261
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    .line 262
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 263
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1657
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .registers 7

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1511
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1512
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1514
    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1515
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1516
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1518
    :cond_42
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1519
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1520
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1522
    :cond_61
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1523
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1524
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1527
    :cond_80
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.embedded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1528
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "etc/default-permissions"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1529
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1530
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1533
    :cond_ae
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v2, 0x0

    goto :goto_be

    :cond_b6
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_be
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1270
    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1271
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_12

    .line 1272
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1274
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1210
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1211
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1210
    const v3, 0xc2000

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1213
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_22

    goto :goto_36

    .line 1216
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1217
    return-object v1

    .line 1219
    :cond_2d
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1214
    :cond_36
    :goto_36
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1224
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1224
    const v2, 0xc2000

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v0

    .line 1226
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1227
    return-object v1

    .line 1229
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1230
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2c

    .line 1231
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1232
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1234
    .local v5, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_29

    .line 1235
    return-object v5

    .line 1230
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1238
    .end local v3    # "i":I
    :cond_2c
    return-object v1
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v0, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    array-length v2, p1

    const/4 v3, 0x0

    move v10, v3

    :goto_14
    if-ge v10, v2, :cond_44

    aget-object v11, p1, v10

    .line 1249
    .local v11, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1252
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xc2000

    const/4 v8, 0x0

    .line 1253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1251
    move-object v4, v1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1254
    .local v3, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_38

    .line 1255
    goto :goto_41

    .line 1258
    :cond_38
    invoke-direct {p0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1259
    .local v4, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_41

    .line 1260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    .end local v3    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_41
    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1264
    :cond_44
    return-object v0
.end method

.method private getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1283
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1284
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object v1, v0

    nop

    :cond_15
    return-object v1

    .line 1286
    :cond_16
    return-object v1
.end method

.method private grantAllRuntimePermissions(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 331
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting all runtime permissions for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 333
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 335
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_39

    .line 336
    goto :goto_24

    .line 338
    :cond_39
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 339
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_24

    .line 340
    :cond_3d
    return-void
.end method

.method private grantDefaultPermissionExceptions(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 1475
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v1, :cond_13

    .line 1483
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1485
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_60

    .line 1487
    const/4 v0, 0x0

    .line 1488
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1489
    .local v1, "exceptionCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1e
    if-ge v0, v1, :cond_5f

    .line 1490
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1491
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1492
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1493
    .local v6, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1494
    .local v7, "permissionGrantCount":I
    move-object v8, v3

    move v3, v2

    .local v3, "j":I
    .local v8, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3a
    if-ge v3, v7, :cond_5b

    .line 1495
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1496
    .local v9, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    if-nez v8, :cond_4b

    .line 1497
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v10

    goto :goto_4e

    .line 1499
    :cond_4b
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 1501
    :goto_4e
    iget-object v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-boolean v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    invoke-direct {p0, v5, v8, v10, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1494
    .end local v9    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1489
    .end local v3    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v7    # "permissionGrantCount":I
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    move-object v3, v8

    goto :goto_1e

    .line 1506
    .end local v0    # "i":I
    .end local v8    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5f
    return-void

    .line 1485
    .end local v1    # "exceptionCount":I
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V
    .registers 6
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1085
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1087
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1088
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1090
    :cond_26
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 6
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1007
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1008
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1009
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 1010
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1012
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1013
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1014
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1015
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1017
    .end local v0    # "isPhonePermFixed":Z
    :cond_2c
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1021
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1022
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1023
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1024
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1025
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1026
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1027
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1029
    :cond_24
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "useOpenWifiPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1033
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1034
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1036
    :cond_b
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .registers 103
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 399
    move/from16 v2, p1

    const-string v0, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default platform handlers for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v4, v0

    .line 411
    .local v4, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v5, v0

    .line 412
    .local v5, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v6, v0

    .line 413
    .local v6, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v7, v0

    .line 414
    .local v7, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v8, v0

    .line 415
    .local v8, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v9, v0

    .line 416
    .local v9, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object v10, v0

    .line 417
    .local v10, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_818

    .line 419
    if-eqz v5, :cond_3a

    .line 420
    invoke-interface {v5, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    .line 421
    .local v3, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_3b
    if-eqz v4, :cond_42

    .line 422
    invoke-interface {v4, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    .line 423
    .local v11, "locationPackageNames":[Ljava/lang/String;
    :goto_43
    if-eqz v6, :cond_4a

    .line 424
    invoke-interface {v6, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_4b

    :cond_4a
    const/4 v12, 0x0

    .line 425
    .local v12, "smsAppPackageNames":[Ljava/lang/String;
    :goto_4b
    if-eqz v7, :cond_52

    .line 426
    invoke-interface {v7, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v13

    goto :goto_53

    :cond_52
    const/4 v13, 0x0

    .line 427
    .local v13, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_53
    if-eqz v8, :cond_5a

    .line 428
    invoke-interface {v8, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v14

    goto :goto_5b

    :cond_5a
    const/4 v14, 0x0

    .line 429
    .local v14, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_5b
    if-eqz v9, :cond_62

    .line 430
    invoke-interface {v9, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_63

    :cond_62
    const/4 v15, 0x0

    .line 431
    .local v15, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    :goto_63
    if-eqz v10, :cond_6c

    .line 432
    const-string v0, "com.android.contacts"

    invoke-interface {v10, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :goto_6d
    move-object/from16 v17, v0

    .line 433
    .local v17, "contactsSyncAdapterPackages":[Ljava/lang/String;
    if-eqz v10, :cond_78

    .line 434
    const-string v0, "com.android.calendar"

    invoke-interface {v10, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    move-object/from16 v18, v0

    .line 437
    .local v18, "calendarSyncAdapterPackages":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v19, v4

    const/4 v4, 0x2

    .line 437
    .end local v4    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "installerPackageName":Ljava/lang/String;
    move-object/from16 v20, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 440
    .local v5, "installerPackage":Landroid/content/pm/PackageParser$Package;
    .local v20, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v21, v4

    const/4 v4, 0x1

    .line 440
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .local v21, "installerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_9a

    .line 441
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 442
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 446
    :cond_9a
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "verifierPackageName":Ljava/lang/String;
    move-object/from16 v22, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 449
    .local v5, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .local v22, "installerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v23, v4

    .line 449
    .end local v4    # "verifierPackageName":Ljava/lang/String;
    .local v23, "verifierPackageName":Ljava/lang/String;
    if-eqz v5, :cond_c2

    .line 450
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 451
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 452
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 453
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 457
    :cond_c2
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v24, v5

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "setupWizardPackageName":Ljava/lang/String;
    .local v24, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 460
    .local v4, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_eb

    .line 461
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 462
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 463
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 464
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 465
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 469
    :cond_eb
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v25, v4

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 469
    .end local v4    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .local v25, "setupPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 470
    .local v4, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v26, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 472
    .local v5, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v26, "setupWizardPackageName":Ljava/lang/String;
    if-eqz v5, :cond_112

    .line 473
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 474
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 475
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 476
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 480
    :cond_112
    const-string/jumbo v0, "media"

    move-object/from16 v27, v4

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 482
    .local v4, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v27, "cameraIntent":Landroid/content/Intent;
    if-eqz v4, :cond_12b

    .line 483
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v28, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 484
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v28, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_12e

    .line 488
    .end local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    :cond_12b
    move-object/from16 v28, v5

    const/4 v5, 0x1

    .line 488
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    :goto_12e
    const-string v0, "downloads"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 490
    .local v5, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_13f

    .line 491
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v29, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_141

    .line 495
    :cond_13f
    move-object/from16 v29, v4

    .line 495
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v29, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :goto_141
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 496
    .local v4, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v30, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 498
    .local v5, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v30, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_160

    .line 499
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 500
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v31, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_163

    .line 504
    :cond_160
    move-object/from16 v31, v4

    const/4 v4, 0x1

    .line 504
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .local v31, "downloadsUiIntent":Landroid/content/Intent;
    :goto_163
    const-string v0, "com.android.externalstorage.documents"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 506
    .local v4, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_174

    .line 507
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v32, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_177

    .line 511
    :cond_174
    move-object/from16 v32, v5

    const/4 v5, 0x1

    .line 511
    .end local v5    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v32, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :goto_177
    const-string v0, "com.android.defcontainer"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 513
    .local v5, "containerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_188

    .line 514
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v33, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_18a

    .line 520
    :cond_188
    move-object/from16 v33, v4

    .line 520
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v33, "storagePackage":Landroid/content/pm/PackageParser$Package;
    :goto_18a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x104012b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 522
    .local v4, "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1a4

    .line 523
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v34, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_1a6

    .line 526
    :cond_1a4
    move-object/from16 v34, v5

    .line 526
    .end local v5    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .local v34, "containerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1a6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104012c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 528
    .local v5, "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1c0

    .line 529
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v35, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_1c2

    .line 533
    :cond_1c0
    move-object/from16 v35, v4

    .line 533
    .end local v4    # "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    .local v35, "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    :goto_1c2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x104012d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 535
    .local v4, "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1dc

    .line 536
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v36, v5

    const/4 v5, 0x0

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_1de

    .line 539
    :cond_1dc
    move-object/from16 v36, v5

    .line 539
    .end local v5    # "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    .local v36, "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    :goto_1de
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104012e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 541
    .local v5, "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1f8

    .line 542
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v37, v4

    const/4 v4, 0x0

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_1fa

    .line 547
    :cond_1f8
    move-object/from16 v37, v4

    .line 547
    .end local v4    # "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    .local v37, "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    :goto_1fa
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 548
    .local v4, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v38, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 550
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v38, "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_219

    .line 551
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_219

    .line 552
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v39, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_21b

    .line 556
    :cond_219
    move-object/from16 v39, v4

    .line 556
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .local v39, "certInstallerIntent":Landroid/content/Intent;
    :goto_21b
    if-nez v13, :cond_231

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "dialerIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 560
    .local v4, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_22d

    .line 561
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 563
    .end local v0    # "dialerIntent":Landroid/content/Intent;
    .end local v4    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_22d
    nop

    .line 573
    move-object/from16 v41, v5

    goto :goto_24d

    .line 564
    :cond_231
    array-length v0, v13

    const/4 v4, 0x0

    :goto_233
    if-ge v4, v0, :cond_24b

    move/from16 v40, v0

    aget-object v0, v13, v4

    .line 565
    .local v0, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v41, v5

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 566
    .local v5, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .local v41, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_244

    .line 567
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 564
    .end local v0    # "dialerAppPackageName":Ljava/lang/String;
    .end local v5    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_244
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    move-object/from16 v5, v41

    goto :goto_233

    .line 573
    .end local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_24b
    move-object/from16 v41, v5

    .line 573
    .end local v5    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_24d
    if-eqz v14, :cond_266

    .line 574
    array-length v0, v14

    const/4 v4, 0x0

    :goto_251
    if-ge v4, v0, :cond_266

    aget-object v5, v14, v4

    .line 575
    .local v5, "simCallManagerPackageName":Ljava/lang/String;
    nop

    .line 576
    move/from16 v42, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 577
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_261

    .line 578
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 574
    .end local v0    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "simCallManagerPackageName":Ljava/lang/String;
    :cond_261
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v42

    goto :goto_251

    .line 585
    :cond_266
    if-eqz v15, :cond_27f

    .line 586
    array-length v0, v15

    const/4 v4, 0x0

    :goto_26a
    if-ge v4, v0, :cond_27f

    aget-object v5, v15, v4

    .line 587
    .local v5, "useOpenWifiPackageName":Ljava/lang/String;
    nop

    .line 588
    move/from16 v43, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 589
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_27a

    .line 590
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 586
    .end local v0    # "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "useOpenWifiPackageName":Ljava/lang/String;
    :cond_27a
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    goto :goto_26a

    .line 597
    :cond_27f
    if-nez v12, :cond_297

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 602
    .local v4, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_296

    .line 603
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 605
    .end local v0    # "smsIntent":Landroid/content/Intent;
    .end local v4    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_296
    goto :goto_2ad

    .line 606
    :cond_297
    array-length v0, v12

    const/4 v4, 0x0

    :goto_299
    if-ge v4, v0, :cond_2ad

    aget-object v5, v12, v4

    .line 607
    .local v5, "smsPackageName":Ljava/lang/String;
    move/from16 v44, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 608
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2a8

    .line 609
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 606
    .end local v0    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "smsPackageName":Ljava/lang/String;
    :cond_2a8
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v44

    goto :goto_299

    .line 615
    :cond_2ad
    :goto_2ad
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 616
    .local v4, "cbrIntent":Landroid/content/Intent;
    nop

    .line 617
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 618
    .local v5, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2c7

    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 619
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 623
    :cond_2c7
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v45, v4

    const-string v4, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 623
    .end local v4    # "cbrIntent":Landroid/content/Intent;
    .local v45, "cbrIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 624
    .local v4, "carrierProvIntent":Landroid/content/Intent;
    nop

    .line 625
    move-object/from16 v46, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 626
    .local v5, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .local v46, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2e9

    .line 627
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    .line 628
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v47, v4

    const/4 v4, 0x0

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2eb

    .line 632
    :cond_2e9
    move-object/from16 v47, v4

    .line 632
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .local v47, "carrierProvIntent":Landroid/content/Intent;
    :goto_2eb
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 633
    .local v4, "calendarIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    move-object/from16 v48, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 636
    .local v5, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v48, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_310

    .line 637
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_310

    .line 638
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 639
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 643
    :cond_310
    const-string v0, "com.android.calendar"

    move-object/from16 v49, v4

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 645
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .local v49, "calendarIntent":Landroid/content/Intent;
    if-eqz v4, :cond_32d

    .line 646
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 647
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v50, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 649
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v50, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_32f

    .line 653
    .end local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    :cond_32d
    move-object/from16 v50, v5

    .line 653
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    :goto_32f
    move-object/from16 v51, v4

    move-object/from16 v5, v18

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 655
    .end local v18    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v4, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v5, "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v51, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v52, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 656
    .local v5, "calendarSyncAdapterCount":I
    .local v52, "calendarSyncAdapterPackages":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 656
    .local v0, "i":I
    :goto_33e
    if-ge v0, v5, :cond_361

    .line 657
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v53, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 658
    .local v4, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v53, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_358

    .line 659
    move/from16 v54, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 659
    .end local v5    # "calendarSyncAdapterCount":I
    .local v54, "calendarSyncAdapterCount":I
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 659
    .end local v4    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_35a

    .line 656
    .end local v54    # "calendarSyncAdapterCount":I
    .restart local v5    # "calendarSyncAdapterCount":I
    :cond_358
    move/from16 v54, v5

    .line 656
    .end local v5    # "calendarSyncAdapterCount":I
    .restart local v54    # "calendarSyncAdapterCount":I
    :goto_35a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v53

    move/from16 v5, v54

    goto :goto_33e

    .line 664
    .end local v0    # "i":I
    .end local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v54    # "calendarSyncAdapterCount":I
    .local v4, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "calendarSyncAdapterCount":I
    :cond_361
    move-object/from16 v53, v4

    move/from16 v54, v5

    .line 664
    .end local v4    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v5    # "calendarSyncAdapterCount":I
    .restart local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v54    # "calendarSyncAdapterCount":I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 665
    .local v4, "contactsIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 668
    .local v5, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_388

    .line 669
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_388

    .line 670
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 671
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 675
    :cond_388
    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move-object/from16 v4, v17

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 677
    .end local v17    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v4, "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v5, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v55, "contactsIntent":Landroid/content/Intent;
    .local v56, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v57, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 678
    .local v4, "contactsSyncAdapterCount":I
    .local v57, "contactsSyncAdapterPackages":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 678
    .restart local v0    # "i":I
    :goto_399
    if-ge v0, v4, :cond_3bc

    .line 679
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v58, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 680
    .local v4, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v58, "contactsSyncAdapterCount":I
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3b3

    .line 681
    move-object/from16 v59, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 681
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v59, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 681
    .end local v4    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_3b5

    .line 678
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3b3
    move-object/from16 v59, v5

    .line 678
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_3b5
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v58

    move-object/from16 v5, v59

    goto :goto_399

    .line 686
    .end local v0    # "i":I
    .end local v58    # "contactsSyncAdapterCount":I
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v4, "contactsSyncAdapterCount":I
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3bc
    move/from16 v58, v4

    move-object/from16 v59, v5

    .line 686
    .end local v4    # "contactsSyncAdapterCount":I
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v58    # "contactsSyncAdapterCount":I
    .restart local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    const-string v0, "com.android.contacts"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 688
    .local v4, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3d8

    .line 689
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 691
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 693
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 697
    :cond_3d8
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 699
    .local v5, "deviceProvisionIntent":Landroid/content/Intent;
    nop

    .line 700
    move-object/from16 v60, v4

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 701
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v60, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3f4

    .line 702
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 703
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 707
    :cond_3f4
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v61, v4

    const-string v4, "android.intent.action.MAIN"

    .line 707
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v61, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 708
    .local v4, "mapsIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    move-object/from16 v62, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 711
    .local v5, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .local v62, "deviceProvisionIntent":Landroid/content/Intent;
    if-eqz v5, :cond_416

    .line 712
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_416

    .line 713
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 717
    :cond_416
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v63, v4

    const-string v4, "android.intent.action.MAIN"

    .line 717
    .end local v4    # "mapsIntent":Landroid/content/Intent;
    .local v63, "mapsIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 718
    .local v4, "galleryIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    move-object/from16 v64, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 721
    .local v5, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .local v64, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_438

    .line 722
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_438

    .line 723
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 727
    :cond_438
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v65, v4

    const-string v4, "android.intent.action.MAIN"

    .line 727
    .end local v4    # "galleryIntent":Landroid/content/Intent;
    .local v65, "galleryIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 728
    .local v4, "emailIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    move-object/from16 v66, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 731
    .local v5, "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v66, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_45f

    .line 732
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_45f

    .line 733
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 734
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 738
    :cond_45f
    const/4 v0, 0x0

    .line 739
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v67, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 739
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v67, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v68, v4

    const/4 v4, 0x4

    .line 739
    .end local v4    # "emailIntent":Landroid/content/Intent;
    .local v68, "emailIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v4, :cond_472

    .line 742
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 742
    .end local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_474

    .line 744
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_472
    move-object/from16 v0, v67

    .line 744
    .end local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_474
    if-nez v0, :cond_48c

    .line 745
    move-object/from16 v69, v0

    new-instance v0, Landroid/content/Intent;

    .line 745
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v69, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v70, v4

    const-string v4, "android.intent.action.MAIN"

    .line 745
    .end local v4    # "defaultBrowserPackage":Ljava/lang/String;
    .local v70, "defaultBrowserPackage":Ljava/lang/String;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, "browserIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 750
    .end local v69    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object v4, v0

    goto :goto_492

    .line 750
    .end local v70    # "defaultBrowserPackage":Ljava/lang/String;
    .restart local v4    # "defaultBrowserPackage":Ljava/lang/String;
    :cond_48c
    move-object/from16 v69, v0

    move-object/from16 v70, v4

    move-object/from16 v4, v69

    .line 750
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v4, "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v70    # "defaultBrowserPackage":Ljava/lang/String;
    :goto_492
    if-eqz v4, :cond_49f

    .line 751
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_49f

    .line 752
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 756
    :cond_49f
    if-eqz v3, :cond_4e3

    .line 757
    array-length v0, v3

    move-object/from16 v71, v4

    const/4 v4, 0x0

    .line 757
    .end local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v71, "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_4a5
    if-ge v4, v0, :cond_4e0

    move/from16 v72, v0

    aget-object v0, v3, v4

    .line 758
    .local v0, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v73, v3

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 760
    .local v3, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .local v73, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v3, :cond_4d9

    .line 761
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_4d9

    .line 762
    move-object/from16 v74, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 762
    .end local v0    # "voiceInteractPackageName":Ljava/lang/String;
    .local v74, "voiceInteractPackageName":Ljava/lang/String;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 764
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 766
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 768
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 770
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 772
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 757
    .end local v3    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_4d9
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v72

    move-object/from16 v3, v73

    goto :goto_4a5

    .line 778
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v3, "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_4e0
    move-object/from16 v73, v3

    .line 778
    .end local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    goto :goto_4e7

    .line 778
    .end local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_4e3
    move-object/from16 v73, v3

    move-object/from16 v71, v4

    .line 778
    .end local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_4e7
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_50f

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "globalSearchIntent":Landroid/content/Intent;
    nop

    .line 782
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 784
    .local v3, "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_50f

    .line 785
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_50f

    .line 786
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v75, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 788
    .end local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v75, "emailPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 788
    .end local v0    # "globalSearchIntent":Landroid/content/Intent;
    .end local v3    # "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_511

    .line 794
    .end local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    :cond_50f
    move-object/from16 v75, v5

    .line 794
    .end local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    :goto_511
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 795
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 798
    .local v4, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_52f

    .line 799
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_52f

    .line 800
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 804
    :cond_52f
    if-eqz v11, :cond_585

    .line 805
    array-length v0, v11

    const/4 v5, 0x0

    :goto_533
    if-ge v5, v0, :cond_585

    move/from16 v76, v0

    aget-object v0, v11, v5

    .line 806
    .local v0, "packageName":Ljava/lang/String;
    move-object/from16 v77, v3

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 807
    .local v3, "locationPackage":Landroid/content/pm/PackageParser$Package;
    .local v77, "voiceRecoIntent":Landroid/content/Intent;
    if-eqz v3, :cond_57a

    .line 808
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_57a

    .line 809
    move-object/from16 v78, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 809
    .end local v0    # "packageName":Ljava/lang/String;
    .local v78, "packageName":Ljava/lang/String;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 810
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 811
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 812
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 813
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 814
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v79, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 816
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .local v79, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 817
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 818
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 818
    .end local v3    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "packageName":Ljava/lang/String;
    goto :goto_57c

    .line 805
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :cond_57a
    move-object/from16 v79, v4

    .line 805
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :goto_57c
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v76

    move-object/from16 v3, v77

    move-object/from16 v4, v79

    goto :goto_533

    .line 824
    .end local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    .restart local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :cond_585
    move-object/from16 v77, v3

    move-object/from16 v79, v4

    .line 824
    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 825
    .local v3, "musicIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    new-instance v0, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "audio/mpeg"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 830
    .local v4, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_5b7

    .line 831
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_5b7

    .line 832
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 836
    :cond_5b7
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 837
    .local v5, "homeIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v0, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    move-object/from16 v80, v3

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 841
    .local v3, "homePackage":Landroid/content/pm/PackageParser$Package;
    .local v80, "musicIntent":Landroid/content/Intent;
    if-eqz v3, :cond_5e0

    .line 842
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_5e0

    .line 843
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v81, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_5e3

    .line 847
    :cond_5e0
    move-object/from16 v81, v4

    const/4 v4, 0x0

    .line 847
    .end local v4    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .local v81, "musicPackage":Landroid/content/pm/PackageParser$Package;
    :goto_5e3
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v82, v3

    const-string v3, "android.hardware.type.watch"

    .line 847
    .end local v3    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .local v82, "homePackage":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64a

    .line 849
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v0, "wearHomeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME_MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 855
    .local v3, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_625

    .line 856
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_625

    .line 857
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v83, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 859
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .local v83, "homeIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 860
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 862
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_627

    .line 867
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .restart local v5    # "homeIntent":Landroid/content/Intent;
    :cond_625
    move-object/from16 v83, v5

    .line 867
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .restart local v83    # "homeIntent":Landroid/content/Intent;
    :goto_627
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fitness.TRACK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v4, "trackIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 870
    .local v5, "trackPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_64c

    .line 871
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_64c

    .line 872
    move-object/from16 v84, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 872
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .local v84, "wearHomeIntent":Landroid/content/Intent;
    move-object/from16 v85, v3

    const/4 v3, 0x0

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 873
    .end local v3    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    .local v85, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 873
    .end local v4    # "trackIntent":Landroid/content/Intent;
    .end local v5    # "trackPackage":Landroid/content/pm/PackageParser$Package;
    .end local v84    # "wearHomeIntent":Landroid/content/Intent;
    .end local v85    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_64c

    .line 878
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .local v5, "homeIntent":Landroid/content/Intent;
    :cond_64a
    move-object/from16 v83, v5

    .line 878
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .restart local v83    # "homeIntent":Landroid/content/Intent;
    :cond_64c
    :goto_64c
    const-string v0, "com.android.printspooler"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 880
    .local v3, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_660

    .line 881
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_660

    .line 882
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 886
    :cond_660
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 887
    .local v4, "emergencyInfoIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 889
    .local v5, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_682

    .line 890
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_682

    .line 891
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v86, v3

    const/4 v3, 0x1

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 892
    .end local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .local v86, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_684

    .line 896
    .end local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_682
    move-object/from16 v86, v3

    .line 896
    .end local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_684
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 897
    .local v3, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v0, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    move-object/from16 v87, v4

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 900
    .local v4, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .local v87, "emergencyInfoIntent":Landroid/content/Intent;
    if-eqz v4, :cond_6ae

    .line 901
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6ae

    .line 902
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v88, v3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 903
    .end local v3    # "nfcTagIntent":Landroid/content/Intent;
    .local v88, "nfcTagIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_6b0

    .line 907
    .end local v88    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v3    # "nfcTagIntent":Landroid/content/Intent;
    :cond_6ae
    move-object/from16 v88, v3

    .line 907
    .end local v3    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v88    # "nfcTagIntent":Landroid/content/Intent;
    :goto_6b0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 908
    .local v3, "storageManagerIntent":Landroid/content/Intent;
    move-object/from16 v89, v4

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 910
    .local v4, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v89, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6cf

    .line 911
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6cf

    .line 912
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v90, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_6d1

    .line 916
    :cond_6cf
    move-object/from16 v90, v3

    .line 916
    .end local v3    # "storageManagerIntent":Landroid/content/Intent;
    .local v90, "storageManagerIntent":Landroid/content/Intent;
    :goto_6d1
    const-string v0, "com.android.companiondevicemanager"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 918
    .local v3, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_6e8

    .line 919
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6e8

    .line 920
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v91, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_6ea

    .line 925
    :cond_6e8
    move-object/from16 v91, v4

    .line 925
    .end local v4    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v91, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    :goto_6ea
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 926
    .local v4, "ringtonePickerIntent":Landroid/content/Intent;
    nop

    .line 927
    move-object/from16 v92, v3

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 928
    .local v3, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v92, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_70a

    .line 929
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_70a

    .line 930
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v93, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_70c

    .line 935
    :cond_70a
    move-object/from16 v93, v4

    .line 935
    .end local v4    # "ringtonePickerIntent":Landroid/content/Intent;
    .local v93, "ringtonePickerIntent":Landroid/content/Intent;
    :goto_70c
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 936
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_748

    .line 938
    nop

    .line 939
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 940
    .local v0, "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_748

    .line 941
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_748

    .line 942
    move-object/from16 v94, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 942
    .end local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v94, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v95, v4

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 943
    .end local v4    # "textClassifierPackageName":Ljava/lang/String;
    .local v95, "textClassifierPackageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 944
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 945
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 946
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 946
    .end local v0    # "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_74d

    .line 953
    .end local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v95    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "textClassifierPackageName":Ljava/lang/String;
    :cond_748
    move-object/from16 v94, v3

    move-object/from16 v95, v4

    const/4 v4, 0x0

    .line 953
    .end local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v95    # "textClassifierPackageName":Ljava/lang/String;
    :goto_74d
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/16 v3, 0xc

    aput v3, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_7e0

    .line 955
    :try_start_75a
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 956
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_768
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 957
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v96, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 957
    .end local v0    # "packageList":Landroid/content/pm/PackageList;
    .local v96, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 958
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_7cd

    move-object/from16 v97, v3

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_7cf

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v98, v4

    const/16 v4, 0x16

    .end local v4    # "packageName":Ljava/lang/String;
    .local v98, "packageName":Ljava/lang/String;
    if-le v3, v4, :cond_7cf

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v3, :cond_7cf

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 962
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7cf

    .line 963
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 964
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v99, v16

    .line 965
    .local v99, "requestedPerm":Ljava/lang/String;
    move-object/from16 v100, v4

    move-object/from16 v4, v99

    invoke-static {v4}, Landroid/util/Permission;->isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z

    move-result v16

    .line 965
    .end local v99    # "requestedPerm":Ljava/lang/String;
    .local v4, "requestedPerm":Ljava/lang/String;
    if-eqz v16, :cond_7c4

    .line 966
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v4    # "requestedPerm":Ljava/lang/String;
    :cond_7c4
    nop

    .line 964
    move-object/from16 v4, v100

    goto :goto_7a9

    .line 969
    :cond_7c8
    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_7cc
    .catch Ljava/lang/Exception; {:try_start_75a .. :try_end_7cc} :catch_7d5

    .line 969
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v98    # "packageName":Ljava/lang/String;
    goto :goto_7cf

    .line 971
    :cond_7cd
    move-object/from16 v97, v3

    .line 956
    :cond_7cf
    :goto_7cf
    move-object/from16 v0, v96

    move-object/from16 v3, v97

    goto :goto_768

    .line 975
    .end local v96    # "packageList":Landroid/content/pm/PackageList;
    :cond_7d4
    goto :goto_7e0

    .line 972
    :catch_7d5
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "error while grant permission"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 983
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7e0
    :goto_7e0
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_800

    .line 984
    const-string v0, "com.google.android.syncadapters.contacts"

    .line 985
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 986
    .local v0, "googleContactsSync":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_800

    .line 987
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_800

    .line 988
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 994
    .end local v0    # "googleContactsSync":Landroid/content/pm/PackageParser$Package;
    :cond_800
    const-string v0, "com.android.sharedstoragebackup"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 996
    .local v0, "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_80e

    .line 997
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1000
    :cond_80e
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    if-eqz v3, :cond_817

    .line 1001
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    invoke-interface {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;->onDefaultRuntimePermissionsGranted(I)V

    .line 1003
    :cond_817
    return-void

    .line 417
    .end local v0    # "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v7    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v8    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v9    # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v10    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v11    # "locationPackageNames":[Ljava/lang/String;
    .end local v12    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v13    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v14    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v15    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v19    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .end local v22    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v23    # "verifierPackageName":Ljava/lang/String;
    .end local v24    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v25    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "setupWizardPackageName":Ljava/lang/String;
    .end local v27    # "cameraIntent":Landroid/content/Intent;
    .end local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v30    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v31    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v34    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v35    # "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    .end local v36    # "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    .end local v37    # "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    .end local v39    # "certInstallerIntent":Landroid/content/Intent;
    .end local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v45    # "cbrIntent":Landroid/content/Intent;
    .end local v46    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v47    # "carrierProvIntent":Landroid/content/Intent;
    .end local v48    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v49    # "calendarIntent":Landroid/content/Intent;
    .end local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v51    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v52    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v54    # "calendarSyncAdapterCount":I
    .end local v55    # "contactsIntent":Landroid/content/Intent;
    .end local v56    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v58    # "contactsSyncAdapterCount":I
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v60    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v61    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v63    # "mapsIntent":Landroid/content/Intent;
    .end local v64    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v65    # "galleryIntent":Landroid/content/Intent;
    .end local v66    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "emailIntent":Landroid/content/Intent;
    .end local v70    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v80    # "musicIntent":Landroid/content/Intent;
    .end local v81    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v82    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .end local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v87    # "emergencyInfoIntent":Landroid/content/Intent;
    .end local v88    # "nfcTagIntent":Landroid/content/Intent;
    .end local v89    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "storageManagerIntent":Landroid/content/Intent;
    .end local v91    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .end local v92    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v93    # "ringtonePickerIntent":Landroid/content/Intent;
    .end local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v95    # "textClassifierPackageName":Ljava/lang/String;
    :catchall_818
    move-exception v0

    :try_start_819
    monitor-exit v3
    :try_end_81a
    .catchall {:try_start_819 .. :try_end_81a} :catchall_818

    throw v0
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 382
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to platform components for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 384
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 386
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_39

    .line 387
    goto :goto_24

    .line 389
    :cond_39
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 390
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 392
    goto :goto_24

    .line 394
    :cond_4e
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 395
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_24

    .line 396
    :cond_52
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1291
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1292
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1296
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1297
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .registers 23
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1346
    move/from16 v8, p5

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1347
    return-void

    .line 1350
    :cond_f
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1351
    .local v2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1359
    .local v3, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1360
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1361
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1362
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3d

    .line 1363
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1364
    return-void

    .line 1366
    :cond_2d
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1367
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 1368
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1373
    .end local v2    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v9, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3d
    move-object v9, v2

    move-object v10, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1374
    .local v11, "grantablePermissionCount":I
    const/4 v12, 0x0

    move v2, v12

    .local v2, "i":I
    :goto_45
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_d2

    .line 1375
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 1379
    .local v7, "permission":Ljava/lang/String;
    if-eqz v10, :cond_59

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1380
    goto/16 :goto_ce

    .line 1383
    :cond_59
    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 1384
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1393
    .local v14, "flags":I
    if-eqz v14, :cond_71

    if-eqz p4, :cond_6e

    goto :goto_71

    .line 1436
    :cond_6e
    move-object/from16 v16, v7

    goto :goto_b7

    .line 1397
    :cond_71
    :goto_71
    and-int/lit8 v2, v14, 0x4

    if-eqz v2, :cond_76

    .line 1398
    goto :goto_ce

    .line 1406
    :cond_76
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc

    aput v3, v2, v12

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_8f

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1407
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_97

    :cond_8f
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1408
    invoke-static {v2}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_97
    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_9c

    .line 1414
    goto :goto_ce

    .line 1418
    :cond_9c
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1425
    const/16 v2, 0x20

    .line 1426
    .local v2, "newFlags":I
    if-eqz p3, :cond_a9

    .line 1427
    or-int/lit8 v2, v2, 0x10

    .line 1430
    .end local v2    # "newFlags":I
    .local v15, "newFlags":I
    :cond_a9
    move v15, v2

    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v3, v7

    move v5, v15

    move v6, v15

    move-object/from16 v16, v7

    move v7, v8

    .end local v7    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1436
    .end local v15    # "newFlags":I
    :goto_b7
    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_ce

    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_ce

    if-nez p3, :cond_ce

    .line 1443
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v3, v16

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1374
    .end local v14    # "flags":I
    .end local v16    # "permission":Ljava/lang/String;
    :cond_ce
    :goto_ce
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    goto/16 :goto_45

    .line 1448
    .end local v2    # "i":I
    :cond_d2
    return-void
.end method

.method private grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 316
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 318
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_20

    .line 319
    goto :goto_b

    .line 321
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 322
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_29
    goto :goto_b

    .line 325
    :cond_2a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 326
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 328
    :cond_34
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1451
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_e

    .line 1452
    return v1

    .line 1454
    :cond_e
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 1455
    return v2

    .line 1457
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1458
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1459
    .local v0, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_29

    .line 1460
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_32

    .line 1461
    return v2

    .line 1463
    :cond_29
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_32

    .line 1464
    return v2

    .line 1466
    :cond_32
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 1468
    .local v3, "systemPackageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1469
    .local v4, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-nez v5, :cond_54

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v7, 0x4

    .line 1470
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_54

    .line 1469
    :cond_52
    move v1, v2

    goto :goto_55

    .line 1470
    :cond_54
    :goto_54
    nop

    .line 1469
    :goto_55
    return v1
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1572
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1574
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_46

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_46

    .line 1576
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1577
    goto :goto_4

    .line 1579
    :cond_1b
    const-string v1, "exceptions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1580
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    .line 1582
    :cond_2b
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1585
    :cond_46
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1589
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1591
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1591
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_a7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1592
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_a7

    .line 1593
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1594
    goto :goto_4

    .line 1596
    :cond_1b
    const-string v1, "exception"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1597
    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1600
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1601
    .local v3, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v3, :cond_81

    .line 1603
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1604
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v4, :cond_58

    .line 1605
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1607
    goto :goto_4

    .line 1611
    :cond_58
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1612
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1615
    goto :goto_4

    .line 1617
    :cond_78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 1618
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_81
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1622
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto :goto_4

    .line 1623
    :cond_85
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1626
    :cond_a7
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1630
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1632
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1632
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6d

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6d

    .line 1634
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1635
    goto :goto_4

    .line 1638
    :cond_1b
    const-string/jumbo v1, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1639
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 1641
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1643
    goto :goto_4

    .line 1646
    :cond_3d
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1648
    .local v3, "fixed":Z
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v4, v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;Z)V

    .line 1649
    .local v4, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_4

    .line 1651
    :cond_4c
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1654
    :cond_6d
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1538
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1539
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1540
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1543
    :cond_d
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1546
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_b5

    aget-object v4, v0, v1

    .line 1547
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1548
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1548
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    goto :goto_b1

    .line 1552
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1553
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    goto :goto_b1

    .line 1557
    :cond_6d
    :try_start_6d
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_77} :catch_9a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_77} :catch_9a

    .line 1556
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1559
    const/4 v6, 0x0

    :try_start_79
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1560
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1561
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_83} :catch_89
    .catchall {:try_start_79 .. :try_end_83} :catchall_87

    .line 1562
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_83
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_86} :catch_9a
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_9a

    .line 1564
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_b1

    .line 1562
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_87
    move-exception v7

    goto :goto_8b

    .line 1556
    :catch_89
    move-exception v6

    :try_start_8a
    throw v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_87

    .line 1562
    :goto_8b
    if-eqz v6, :cond_96

    :try_start_8d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_90} :catch_9a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9a

    goto :goto_99

    :catch_91
    move-exception v8

    :try_start_92
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_99

    :cond_96
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_99
    throw v7
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_9a} :catch_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_9a

    .end local v5    # "str":Ljava/io/InputStream;
    :catch_9a
    move-exception v5

    .line 1563
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1567
    :cond_b5
    return-object v2
.end method

.method private revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1301
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1302
    return-void

    .line 1304
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1306
    .local v0, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1308
    .local v2, "permission":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1309
    goto :goto_14

    .line 1312
    :cond_27
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p4}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 1316
    .local v9, "flags":I
    and-int/lit8 v3, v9, 0x20

    if-nez v3, :cond_34

    .line 1317
    goto :goto_14

    .line 1320
    :cond_34
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_39

    .line 1321
    goto :goto_14

    .line 1326
    :cond_39
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_40

    if-nez p3, :cond_40

    .line 1327
    goto :goto_14

    .line 1329
    :cond_40
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/content/pm/PackageManagerInternal;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1339
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v4, v2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1341
    .end local v2    # "permission":Ljava/lang/String;
    .end local v9    # "flags":I
    goto :goto_14

    .line 1342
    :cond_55
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 312
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1171
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to active LUI app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    if-nez p1, :cond_19

    .line 1173
    return-void

    .line 1175
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1176
    .local v0, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2b

    .line 1177
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1178
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1180
    :cond_2b
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1197
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default browser for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-nez p1, :cond_19

    .line 1199
    return-void

    .line 1201
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1202
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2f

    .line 1203
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1204
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1206
    :cond_2f
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1055
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default dialer app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    if-nez p1, :cond_19

    .line 1057
    return-void

    .line 1059
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1060
    .local v0, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_43

    .line 1061
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1062
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1063
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1064
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1065
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1066
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1068
    :cond_43
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1093
    if-nez p1, :cond_3

    .line 1094
    return-void

    .line 1096
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1097
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_c

    .line 1098
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 1100
    :cond_c
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1039
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default sms app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    if-nez p1, :cond_19

    .line 1041
    return-void

    .line 1043
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1044
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_48

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1045
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1046
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1047
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1048
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1049
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1050
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1052
    :cond_48
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1071
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    if-nez p1, :cond_19

    .line 1073
    return-void

    .line 1075
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1076
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2f

    .line 1077
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1078
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1081
    :cond_2f
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1103
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    if-nez p1, :cond_19

    .line 1105
    return-void

    .line 1107
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3d

    aget-object v2, p1, v1

    .line 1108
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1109
    .local v3, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3a

    .line 1110
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1111
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1112
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1113
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1107
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1116
    :cond_3d
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1119
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    if-nez p1, :cond_19

    .line 1121
    return-void

    .line 1123
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_47

    aget-object v2, p1, v1

    .line 1124
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1125
    .local v3, "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_44

    .line 1126
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1127
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1128
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1129
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1130
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1131
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1123
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1134
    :cond_47
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1138
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    if-nez p1, :cond_19

    .line 1140
    return-void

    .line 1142
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 1143
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1144
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_36

    .line 1145
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1148
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1149
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1142
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1152
    :cond_39
    return-void
.end method

.method public grantSystemAppPermissions(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 349
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to prebuilt system apps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 351
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 353
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_39

    .line 354
    goto :goto_24

    .line 356
    :cond_39
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_24

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 357
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 358
    invoke-static {v4}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 359
    :cond_4d
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 361
    goto :goto_24

    .line 363
    :cond_5c
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v4

    .line 364
    .local v10, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 365
    .local v5, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 366
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_7d

    .line 367
    goto :goto_68

    .line 369
    :cond_7d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 370
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_86
    goto :goto_68

    .line 373
    :cond_87
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_96

    .line 374
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, v3

    move-object v6, v10

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 376
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_96
    goto :goto_24

    .line 377
    :cond_97
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1156
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-nez p1, :cond_19

    .line 1158
    return-void

    .line 1160
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 1161
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1162
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_36

    .line 1163
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1164
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1165
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1160
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1168
    :cond_39
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1183
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    if-nez p1, :cond_19

    .line 1185
    return-void

    .line 1187
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 1188
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1189
    .local v3, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_31

    .line 1190
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1191
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1187
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1194
    :cond_34
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
