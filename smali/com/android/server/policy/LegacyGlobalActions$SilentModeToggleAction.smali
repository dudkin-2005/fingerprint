.class Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 6

    .line 636
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 637
    const v1, 0x1080314

    const v2, 0x1080313

    const v3, 0x10402c9

    const v4, 0x10402c7

    const v5, 0x10402c6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    .line 642
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .locals 1

    .line 646
    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 649
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 651
    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 655
    const/4 v0, 0x1

    return v0
.end method
