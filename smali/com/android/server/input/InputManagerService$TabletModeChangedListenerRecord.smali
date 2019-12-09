.class final Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletModeChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/ITabletModeChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    .locals 0

    .line 2274
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2275
    iput p2, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    .line 2276
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    .line 2277
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 2284
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1400(Lcom/android/server/input/InputManagerService;I)V

    .line 2285
    return-void
.end method

.method public notifyTabletModeChanged(JZ)V
    .locals 1

    .line 2289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/ITabletModeChangedListener;->onTabletModeChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    goto :goto_0

    .line 2290
    :catch_0
    move-exception p1

    .line 2291
    const-string p2, "InputManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that tablet mode changed, assuming it died."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->binderDied()V

    .line 2295
    :goto_0
    return-void
.end method
