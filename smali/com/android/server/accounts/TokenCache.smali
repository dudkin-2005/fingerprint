.class Lcom/android/server/accounts/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$TokenLruCache;,
        Lcom/android/server/accounts/TokenCache$Key;,
        Lcom/android/server/accounts/TokenCache$Value;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_CHARS:I = 0xfa00


# instance fields
.field private mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    return-void
.end method


# virtual methods
.method public get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 221
    iget-object p2, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {p2, v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 223
    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    cmp-long p3, p3, v0

    if-gez p3, :cond_0

    .line 224
    iget-object p1, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    return-object p1

    .line 225
    :cond_0
    if-eqz p2, :cond_1

    .line 226
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 2

    .line 195
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p6

    if-lez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 200
    new-instance p1, Lcom/android/server/accounts/TokenCache$Value;

    invoke-direct {p1, p2, p6, p7}, Lcom/android/server/accounts/TokenCache$Value;-><init>(Ljava/lang/String;J)V

    .line 201
    iget-object p2, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V

    .line 202
    return-void

    .line 197
    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Landroid/accounts/Account;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Landroid/accounts/Account;)V

    .line 214
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
