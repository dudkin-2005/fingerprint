.class final Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field static final TYPE_FETCHED:I = 0x2

.field static final TYPE_FILE:I = 0x1

.field static final TYPE_KEY_VALUE:I


# instance fields
.field key:Ljava/lang/String;

.field type:I

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsStorage$1;

    .line 891
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 909
    instance-of v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 910
    return v1

    .line 911
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 912
    .local v0, "o":Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    nop

    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 917
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    .registers 4
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 901
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 902
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 903
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 904
    return-object p0
.end method
