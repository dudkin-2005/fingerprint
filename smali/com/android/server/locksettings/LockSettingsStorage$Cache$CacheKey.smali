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
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V
    .locals 0

    .line 895
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 913
    instance-of v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 914
    return v1

    .line 915
    :cond_0
    check-cast p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 916
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 921
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
    .locals 0

    .line 905
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 906
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 907
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 908
    return-object p0
.end method
