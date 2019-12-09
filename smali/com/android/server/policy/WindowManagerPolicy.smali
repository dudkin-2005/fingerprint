.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;,
        Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .locals 0

    .line 1760
    packed-switch p0, :pswitch_data_0

    .line 1766
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1764
    :pswitch_0
    const-string p0, "USER_ROTATION_LOCKED"

    return-object p0

    .line 1762
    :pswitch_1
    const-string p0, "USER_ROTATION_FREE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 0

    .line 1168
    return-void
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp()V
.end method

.method public abstract focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 0

    .line 1212
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNavBarPosition()I
.end method

.method public abstract getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
.end method

.method public abstract getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .locals 3

    .line 932
    packed-switch p1, :pswitch_data_0

    .line 945
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 p1, 0x0

    return p1

    .line 943
    :pswitch_0
    const/4 p1, 0x3

    return p1

    .line 939
    :pswitch_1
    const/4 p1, -0x1

    return p1

    .line 941
    :pswitch_2
    const/4 p1, 0x2

    return p1

    .line 937
    :pswitch_3
    const/4 p1, -0x2

    return p1

    .line 935
    :pswitch_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .locals 1

    .line 795
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1

    .line 796
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .locals 4

    .line 817
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    .line 818
    return v1

    .line 821
    :cond_0
    const/16 v2, 0xbb4

    if-eq p1, v2, :cond_4

    const/16 v2, 0xb

    const/16 v3, 0xa

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 917
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return v1

    .line 857
    :pswitch_0
    const/16 p1, 0xc

    return p1

    .line 892
    :pswitch_1
    const/16 p1, 0x19

    return p1

    .line 834
    :pswitch_2
    return v1

    .line 832
    :pswitch_3
    return v1

    .line 908
    :pswitch_4
    const/16 p1, 0x1e

    return p1

    .line 842
    :pswitch_5
    const/4 p1, 0x5

    return p1

    .line 830
    :pswitch_6
    return v1

    .line 898
    :pswitch_7
    const/16 p1, 0x1b

    return p1

    .line 901
    :pswitch_8
    const/16 p1, 0x1c

    return p1

    .line 888
    :pswitch_9
    const/16 p1, 0x18

    return p1

    .line 860
    :pswitch_a
    const/16 p1, 0xd

    return p1

    .line 844
    :pswitch_b
    const/4 p1, 0x6

    return p1

    .line 912
    :pswitch_c
    const/16 p1, 0x20

    return p1

    .line 878
    :pswitch_d
    const/16 p1, 0x15

    return p1

    .line 885
    :pswitch_e
    const/16 p1, 0x17

    return p1

    .line 915
    :pswitch_f
    const/16 p1, 0x21

    return p1

    .line 872
    :pswitch_10
    const/16 p1, 0x13

    return p1

    .line 905
    :pswitch_11
    const/16 p1, 0x1d

    return p1

    .line 910
    :pswitch_12
    const/16 p1, 0x1f

    return p1

    .line 870
    :pswitch_13
    const/16 p1, 0x12

    return p1

    .line 827
    :pswitch_14
    return v0

    .line 866
    :pswitch_15
    const/16 p1, 0xf

    return p1

    .line 863
    :pswitch_16
    const/16 p1, 0xe

    return p1

    .line 895
    :pswitch_17
    if-eqz p2, :cond_1

    const/16 v3, 0x1a

    nop

    :cond_1
    return v3

    .line 874
    :pswitch_18
    const/16 p1, 0x14

    return p1

    .line 846
    :pswitch_19
    const/4 p1, 0x7

    return p1

    .line 852
    :pswitch_1a
    const/16 p1, 0x9

    return p1

    .line 882
    :pswitch_1b
    if-eqz p2, :cond_2

    const/16 v2, 0x16

    nop

    :cond_2
    return v2

    .line 849
    :pswitch_1c
    const/16 p1, 0x8

    return p1

    .line 855
    :pswitch_1d
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    .line 836
    :pswitch_1e
    const/4 p1, 0x3

    return p1

    .line 839
    :pswitch_1f
    const/4 p1, 0x4

    return p1

    .line 868
    :pswitch_20
    const/16 p1, 0x11

    return p1

    .line 824
    :cond_4
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d5
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7ea
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7ee
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 1

    .line 784
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(JI)I
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isDockSideAllowed(IIIII)Z
.end method

.method public abstract isGestureButtonEnabled()Z
.end method

.method public abstract isGestureButtonRegion(II)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isShowingDreamLw()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 0

    .line 1188
    return-void
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onLockTaskStateChangedLw(I)V
.end method

.method public onOverlayChangedLw()V
    .locals 0

    .line 182
    return-void
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestUserActivityNotification()V
.end method

.method public abstract rotationForOrientationLw(IIZ)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract sendCustomAction(Landroid/content/Intent;)V
.end method

.method public abstract setAodShowing(Z)Z
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    .line 1614
    return-void
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract shouldRotateSeamlessly(II)Z
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp()V
.end method

.method public abstract stopLongshotConnection()V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract takeOPScreenshot(II)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
