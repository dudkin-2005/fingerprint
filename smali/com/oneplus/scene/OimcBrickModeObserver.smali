.class public Lcom/oneplus/scene/OimcBrickModeObserver;
.super Ljava/lang/Object;
.source "OimcBrickModeObserver.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/scene/OimcBrickModeObserver$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OimcBrickModeObserver"

.field private static sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/scene/OimcBrickModeObserver$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mModeOn:Z

.field private whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.phone"

    const-string v3, "com.oneplus.camera"

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.android.systemui"

    const-string v8, "com.google.android.packageinstaller"

    const-string v9, "com.oneplus.brickmode"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public static final getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;
    .registers 1

    .line 37
    sget-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/oneplus/scene/OimcBrickModeObserver;

    invoke-direct {v0}, Lcom/oneplus/scene/OimcBrickModeObserver;-><init>()V

    sput-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    .line 40
    :cond_b
    sget-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/scene/OimcBrickModeObserver$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/oneplus/scene/OimcBrickModeObserver$Callback;

    .line 80
    iget-object v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public config(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isOn()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return v0
.end method

.method public needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "reasonUid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 88
    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 89
    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_16
    return v1
.end method

.method public shouldBlockNotifSound(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    if-eqz v0, :cond_1e

    .line 74
    const-string v0, "OimcBrickModeObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block notification sound by breath mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1e
    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 45
    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OimcBrickModeObserver"

    const-string v1, "breath mode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    .line 47
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 48
    iget-object v2, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/scene/OimcBrickModeObserver$Callback;

    iget-boolean v3, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    invoke-interface {v2, v3}, Lcom/oneplus/scene/OimcBrickModeObserver$Callback;->onChanged(Z)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 50
    .end local v1    # "i":I
    :cond_28
    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OimcBrickModeObserver"

    const-string v1, "breath mode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    .line 57
    move v1, v0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 58
    iget-object v2, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/scene/OimcBrickModeObserver$Callback;

    iget-boolean v3, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    invoke-interface {v2, v3}, Lcom/oneplus/scene/OimcBrickModeObserver$Callback;->onChanged(Z)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 60
    .end local v1    # "i":I
    :cond_27
    return v0
.end method
