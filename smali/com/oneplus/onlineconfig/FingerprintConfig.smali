.class public Lcom/oneplus/onlineconfig/FingerprintConfig;
.super Ljava/lang/Object;
.source "FingerprintConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final ALLOW_FINGERPRINT_LIST:Ljava/lang/String; = "fpAllowList"

.field private static DEBUG_WHITE_LIST:Z = false

.field private static final FAR_FARR_NAME:Ljava/lang/String; = "farfrr"

.field private static final FINGERPRINT_CONFIG:Ljava/lang/String; = "fingerprintConfig"

.field private static final PAYMENT_FAR_FRR:Ljava/lang/String; = "paymentFarFrr"

.field private static final PAYMENT_LIST:Ljava/lang/String; = "paymentList"

.field private static final PAYMENT_LIST_ENALBED:Ljava/lang/String; = "paymentListEnabled"

.field private static final TAG:Ljava/lang/String; = "FingerprintConfig"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final WHITE_LIST_ENALBED:Ljava/lang/String; = "whiteListEnabled"


# instance fields
.field private mAllowFpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFarFrr:I

.field private mPaymentFarFrr:I

.field private mPaymentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentListEnabled:I

.field private mWhiteListEnabled:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/onlineconfig/FingerprintConfig;->DEBUG_WHITE_LIST:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mWhiteListEnabled:I

    .line 39
    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentListEnabled:I

    .line 40
    const/16 v0, 0x66

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentFarFrr:I

    .line 41
    const/16 v0, 0x65

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mFarFrr:I

    .line 46
    iput-object p1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 48
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/FingerprintConfig;->initAllowList()V

    .line 49
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/FingerprintConfig;->initPaymentList()V

    .line 50
    new-instance v0, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/FingerprintConfig;Lcom/oneplus/onlineconfig/FingerprintConfig$1;)V

    .line 51
    .local v0, "updater":Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "fingerprintConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    .line 54
    .local v1, "observer":Lcom/oneplus/config/ConfigObserver;
    :try_start_47
    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 55
    const-string v2, "FingerprintConfig"

    const-string v3, "Register online config observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_51} :catch_52

    .line 58
    goto :goto_69

    .line 56
    :catch_52
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "FingerprintConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register online config fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "updater":Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
    .end local v1    # "observer":Lcom/oneplus/config/ConfigObserver;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_69
    :goto_69
    return-void
.end method

.method private handleAllowFingerprintList(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    :try_start_a
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 146
    .local v1, "list":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14} :catch_38

    .line 147
    :try_start_14
    iget-object v3, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v3, 0x0

    .line 148
    .local v3, "i":I
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 149
    iget-object v4, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 151
    .end local v3    # "i":I
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_35

    .line 152
    :try_start_2d
    const-string v2, "FingerprintConfig"

    const-string v3, "[OnlineConfig] Fp allow list changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_34} :catch_38

    .line 157
    .end local v1    # "list":Lorg/json/JSONArray;
    goto :goto_59

    .line 151
    .restart local v1    # "list":Lorg/json/JSONArray;
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_38} :catch_38

    .line 153
    .end local v1    # "list":Lorg/json/JSONArray;
    :catch_38
    move-exception v1

    .line 154
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_59
    return-void
.end method

.method private handleFarFrrChange(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 121
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mFarFrr:I

    .line 122
    const-string v0, "FingerprintConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] farfrr level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mFarFrr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 125
    goto :goto_41

    .line 123
    :catch_2a
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method

.method private handlePaymentFarFrrChange(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 197
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentFarFrr:I

    .line 198
    const-string v0, "FingerprintConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] payment farfrr level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentFarFrr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 201
    goto :goto_41

    .line 199
    :catch_2a
    move-exception v0

    .line 200
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method

.method private handlePaymentList(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    :try_start_a
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 219
    .local v1, "list":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14} :catch_38

    .line 220
    :try_start_14
    iget-object v3, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 221
    const/4 v3, 0x0

    .line 221
    .local v3, "i":I
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 222
    iget-object v4, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 224
    .end local v3    # "i":I
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_35

    .line 225
    :try_start_2d
    const-string v2, "FingerprintConfig"

    const-string v3, "[OnlineConfig] Fp payment list changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_34} :catch_38

    .line 230
    .end local v1    # "list":Lorg/json/JSONArray;
    goto :goto_59

    .line 224
    .restart local v1    # "list":Lorg/json/JSONArray;
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_38} :catch_38

    .line 226
    .end local v1    # "list":Lorg/json/JSONArray;
    :catch_38
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_59
    return-void
.end method

.method private handlePaymentListEnabled(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 182
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentListEnabled:I

    .line 183
    const-string v0, "FingerprintConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Fp payment list switch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentListEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 186
    goto :goto_41

    .line 184
    :catch_2a
    move-exception v0

    .line 185
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method

.method private handleWhiteListEnabled(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 167
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mWhiteListEnabled:I

    .line 168
    const-string v0, "FingerprintConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Fp white list switch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mWhiteListEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 171
    goto :goto_41

    .line 169
    :catch_2a
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method

.method private initAllowList()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.aod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "CtsVerifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string/jumbo v0, "persist.apply_allow_fp_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/onlineconfig/FingerprintConfig;->DEBUG_WHITE_LIST:Z

    .line 244
    return-void
.end method

.method private initPaymentList()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.walletnfcrel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public static synthetic lambda$resolveOnlineConfig$0(Lcom/oneplus/onlineconfig/FingerprintConfig;)V
    .registers 4

    .line 73
    const-string v0, "FingerprintConfig"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprintConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getParam(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 277
    iget v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentListEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 278
    iget v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mPaymentFarFrr:I

    return v0

    .line 280
    :cond_10
    iget v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mFarFrr:I

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mWhiteListEnabled:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    sget-boolean v0, Lcom/oneplus/onlineconfig/FingerprintConfig;->DEBUG_WHITE_LIST:Z

    if-eqz v0, :cond_a

    goto :goto_3f

    .line 258
    :cond_a
    new-array v0, v1, [I

    const/16 v2, 0x47

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 259
    return v1

    .line 262
    :cond_18
    new-array v0, v1, [I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 263
    return v1

    .line 266
    :cond_23
    move v0, v3

    .local v0, "i":I
    :goto_24
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 267
    iget-object v2, p0, Lcom/oneplus/onlineconfig/FingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 269
    return v1

    .line 266
    .end local v2    # "item":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 273
    .end local v0    # "i":I
    :cond_3e
    return v3

    .line 255
    :cond_3f
    :goto_3f
    return v1
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 81
    if-nez p1, :cond_a

    .line 82
    const-string v0, "FingerprintConfig"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_a
    const/4 v0, 0x0

    .line 86
    .local v0, "index":I
    :goto_b
    :try_start_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "name":Ljava/lang/String;
    const-string v3, "farfrr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 90
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handleFarFrrChange(Lorg/json/JSONObject;)V

    goto :goto_67

    .line 91
    :cond_28
    const-string v3, "fpAllowList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 92
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handleAllowFingerprintList(Lorg/json/JSONObject;)V

    goto :goto_67

    .line 93
    :cond_34
    const-string/jumbo v3, "whiteListEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 94
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handleWhiteListEnabled(Lorg/json/JSONObject;)V

    goto :goto_67

    .line 95
    :cond_41
    const-string/jumbo v3, "paymentListEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 96
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handlePaymentListEnabled(Lorg/json/JSONObject;)V

    goto :goto_67

    .line 97
    :cond_4e
    const-string/jumbo v3, "paymentFarFrr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 98
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handlePaymentFarFrrChange(Lorg/json/JSONObject;)V

    goto :goto_67

    .line 99
    :cond_5b
    const-string/jumbo v3, "paymentList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 100
    invoke-direct {p0, v1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->handlePaymentList(Lorg/json/JSONObject;)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_67} :catch_83
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_67} :catch_6a

    .line 86
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 105
    .end local v0    # "index":I
    :catch_6a
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWhiteList error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9b

    .line 103
    :catch_83
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "FingerprintConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_9a
    nop

    .line 109
    :goto_9b
    return-void
.end method

.method public resolveOnlineConfig()V
    .registers 3

    .line 72
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$fonYiHyuSNjfmPbkie-hdvC9JcQ;

    invoke-direct {v1, p0}, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$fonYiHyuSNjfmPbkie-hdvC9JcQ;-><init>(Lcom/oneplus/onlineconfig/FingerprintConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
