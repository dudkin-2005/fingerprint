.class final Lcom/android/server/InputMethodManagerService$DebugFlag;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugFlag"
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;


# instance fields
.field private final mDefaultValue:Z

.field private final mKey:Ljava/lang/String;

.field private mValue:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "LOCK"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mKey:Ljava/lang/String;

    .line 272
    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mDefaultValue:Z

    .line 273
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    .line 274
    return-void
.end method


# virtual methods
.method refresh()V
    .locals 3

    .line 277
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mDefaultValue:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method value()Z
    .locals 2

    .line 283
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    monitor-exit v0

    return v1

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
