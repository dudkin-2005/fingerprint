.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mGlobalActionsAvailable:Z

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field private final mShowTimeout:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 47
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_29

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider;->setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    goto :goto_30

    .line 51
    :cond_29
    const-string v0, "GlobalActions"

    const-string v1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_30
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .line 25
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-object v0
.end method

.method private ensureLegacyCreated()V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_5

    return-void

    .line 57
    :cond_5
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    .line 59
    return-void
.end method


# virtual methods
.method public onGlobalActionsAvailableChanged(Z)V
    .registers 5
    .param p1, "available"    # Z

    .line 96
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGlobalActionsAvailableChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1b
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 98
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-nez v0, :cond_31

    .line 101
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    .line 104
    :cond_31
    return-void
.end method

.method public onGlobalActionsDismissed()V
    .registers 3

    .line 90
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GlobalActions"

    const-string/jumbo v1, "onGlobalActionsDismissed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 92
    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 3

    .line 83
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GlobalActions"

    const-string/jumbo v1, "onGlobalActionsShown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 7
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z

    .line 63
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    const-string v0, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v3, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3d
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 66
    return-void

    .line 68
    :cond_4a
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 69
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 71
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-eqz v0, :cond_63

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->showGlobalActions()V

    goto :goto_6f

    .line 76
    :cond_63
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 77
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    .line 79
    :goto_6f
    return-void
.end method
