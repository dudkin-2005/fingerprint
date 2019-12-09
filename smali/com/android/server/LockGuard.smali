.class public Lcom/android/server/LockGuard;
.super Ljava/lang/Object;
.source "LockGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockGuard$LockInfo;
    }
.end annotation


# static fields
.field public static final INDEX_ACTIVITY:I = 0x6

.field public static final INDEX_APP_OPS:I = 0x0

.field public static final INDEX_DPMS:I = 0x7

.field public static final INDEX_PACKAGES:I = 0x3

.field public static final INDEX_POWER:I = 0x1

.field public static final INDEX_STORAGE:I = 0x4

.field public static final INDEX_USER:I = 0x2

.field public static final INDEX_WINDOW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LockGuard"

.field private static sKnown:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LockGuard$LockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sKnownFixed:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/ArrayMap;-><init>(IZ)V

    sput-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doLog(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 166
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    if-eqz p0, :cond_0

    .line 171
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/-$$Lambda$LockGuard$C107ImDhsfBAwlfWxZPBoVXIl_4;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$LockGuard$C107ImDhsfBAwlfWxZPBoVXIl_4;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 173
    return-void

    .line 175
    :cond_0
    const-string p0, "LockGuard"

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 239
    const/4 p0, 0x0

    move p2, p0

    :goto_0
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockGuard$LockInfo;

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    move v0, p0

    :goto_1
    iget-object v2, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 239
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private static findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;
    .locals 4

    .line 96
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/LockGuard$LockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockGuard$LockInfo;-><init>(Lcom/android/server/LockGuard$1;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 100
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-object v0
.end method

.method public static guard(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 113
    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 116
    :cond_0
    nop

    .line 117
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 119
    iget-object v4, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 120
    if-nez v4, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling thread "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is holding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {v4}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while trying to acquire "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {p0, v3}, Lcom/android/server/LockGuard;->doLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    nop

    .line 118
    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    if-nez v3, :cond_6

    .line 133
    :goto_2
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 134
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_5

    if-ne v0, p0, :cond_4

    goto :goto_3

    .line 137
    :cond_4
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    iget-object v0, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_6
    return-object p0

    .line 113
    :cond_7
    :goto_4
    return-object p0
.end method

.method public static guard(I)V
    .locals 4

    .line 151
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 152
    sget-object v1, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 153
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aget-object v1, v1, p0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while trying to acquire "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v1, v2}, Lcom/android/server/LockGuard;->doLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public static installLock(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2

    .line 198
    sget-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aput-object p0, v0, p1

    .line 199
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 200
    iput-boolean p2, v0, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 183
    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public static installNewLock(I)Ljava/lang/Object;
    .locals 1

    .line 206
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static installNewLock(IZ)Ljava/lang/Object;
    .locals 1

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {v0, p0, p1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;

    .line 212
    return-object v0
.end method

.method static synthetic lambda$doLog$0(Ljava/lang/Throwable;)V
    .locals 1

    .line 172
    const-string v0, "LockGuard"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static lockToString(I)Ljava/lang/String;
    .locals 0

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :pswitch_0
    const-string p0, "DPMS"

    return-object p0

    .line 232
    :pswitch_1
    const-string p0, "ACTIVITY"

    return-object p0

    .line 231
    :pswitch_2
    const-string p0, "WINDOW"

    return-object p0

    .line 230
    :pswitch_3
    const-string p0, "STORAGE"

    return-object p0

    .line 229
    :pswitch_4
    const-string p0, "PACKAGES"

    return-object p0

    .line 228
    :pswitch_5
    const-string p0, "USER"

    return-object p0

    .line 227
    :pswitch_6
    const-string p0, "POWER"

    return-object p0

    .line 226
    :pswitch_7
    const-string p0, "APP_OPS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static lockToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 216
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    .line 217
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object p0, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object p0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method