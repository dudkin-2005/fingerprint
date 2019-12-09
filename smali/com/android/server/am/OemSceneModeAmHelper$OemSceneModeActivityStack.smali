.class public Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneModeAmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemSceneModeActivityStack"
.end annotation


# static fields
.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_ALL:I = 0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_IGNORE:I = -0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_NONE:I = 0x0

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_READ:I = 0x2

.field public static final ARG_SCENE_MODE_OFF:I = 0x0

.field public static final ARG_SCENE_MODE_ON:I = 0x1

.field private static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field private static final EVALUATE_MODE_DELAYED:I = 0x1f4

.field private static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field private static final OP_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final TAG:Ljava/lang/String; = "OemSceneModeActivityStack"

.field private static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

.field private static sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field private mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 70
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 3
    .param p1, "acs"    # Lcom/android/server/am/ActivityStack;
    .param p2, "acss"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    .line 77
    iput-object p2, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 78
    return-void
.end method

.method private isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "r1"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r2"    # Lcom/android/server/am/ActivityRecord;

    .line 236
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_1a

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 236
    :goto_1b
    return v0
.end method


# virtual methods
.method public handleEvaluateGameMode(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 252
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "game_mode_status_auto"

    .line 254
    if-eqz p1, :cond_11

    .line 255
    const-string v2, "force-on"

    goto :goto_13

    :cond_11
    const-string v2, "force-off"

    :goto_13
    const/4 v3, -0x2

    .line 253
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 256
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_31

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] handleEvaluateGameMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_31
    return-void
.end method

.method public handleEvaluateReadMode(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "rading_mode_status_auto"

    .line 245
    if-eqz p1, :cond_12

    .line 246
    const-string v2, "force-on"

    goto :goto_14

    :cond_12
    const-string v2, "force-off"

    :goto_14
    const/4 v3, -0x2

    .line 244
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 247
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_32

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] handleEvaluateReadMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_32
    return-void
.end method

.method public startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 159
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x44

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 161
    .local v0, "isGameModeApp":Z
    :goto_19
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 162
    .local v3, "game_msg":Landroid/os/Message;
    if-eqz v0, :cond_27

    move v1, v2

    nop

    :cond_27
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 163
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_56

    .line 165
    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scene] evaluateGameModes : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isGameModeApp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_56
    return-void
.end method

.method public startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 169
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p2}, Lcom/android/server/am/OemSceneModeAmHelper;->shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 170
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] Ignore the read mode evaluation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_26
    return-void

    .line 175
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v1, 0x43

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 177
    .local v0, "isReadModeApp":Z
    :goto_40
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 178
    .local v3, "read_msg":Landroid/os/Message;
    if-eqz v0, :cond_4e

    move v1, v2

    nop

    :cond_4e
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 179
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_7d

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scene] evaluateReadModes : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isReadModeApp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_7d
    return-void
.end method

.method public startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 184
    # getter for: Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 186
    return-void

    .line 188
    :cond_7
    if-nez p2, :cond_a

    .line 190
    return-void

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 193
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_2e

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Ignore scene evaluation when lock screen showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2e
    return-void

    .line 196
    :cond_2f
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_3f

    .line 197
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_3e

    .line 198
    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Ignore scene evaluation when Quick Reply ongoing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3e
    return-void

    .line 202
    :cond_3f
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_75

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] resume from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", proactive paused activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ever evalated activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_75
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 207
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 208
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_92

    const-string v1, "OemSceneModeActivityStack"

    const-string v2, "[scene] Ignore scene evaluation while screen off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7a .. :try_end_93} :catchall_d6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 211
    :cond_97
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_d6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    if-eq p1, p2, :cond_b3

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b3

    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_b3

    .line 219
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_b2

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Jump to the same application as last one, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b2
    return-void

    .line 224
    :cond_b3
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, v1, :cond_cd

    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 225
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 226
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_cc

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Activity evaluated, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_cc
    return-void

    .line 230
    :cond_cd
    sput-object p2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 233
    return-void

    .line 211
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "fromActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 126
    # getter for: Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 128
    return-void

    .line 131
    :cond_7
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_29

    const-string v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] pause from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_29
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    if-nez p2, :cond_31

    .line 136
    sput-object p1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_33

    .line 138
    :cond_31
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 142
    :goto_33
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 143
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_44

    const-string v0, "OemSceneModeActivityStack"

    const-string v1, "[scene] Don\'t ignore the scene evaluation for quickly activity transition inside app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_44
    return-void

    .line 147
    :cond_45
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 148
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 151
    :cond_5a
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 152
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 155
    :cond_6f
    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .registers 6
    .param p1, "toDisableMode"    # I

    .line 262
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 266
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] updateDisableSceneScreenEffectFlag toDisableMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2b
    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .registers 4
    .param p1, "disableScreenEffectMode"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 81
    # getter for: Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 83
    return-void

    .line 85
    :cond_7
    if-nez p2, :cond_a

    .line 87
    return-void

    .line 89
    :cond_a
    if-nez p1, :cond_d

    .line 91
    return-void

    .line 94
    :cond_d
    const/4 v0, -0x1

    .line 96
    .local v0, "disableScreenEffectMode":I
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x30eba209

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2a

    const v3, 0x7377f3e0

    if-eq v2, v3, :cond_20

    goto :goto_34

    :cond_20
    const-string v2, "com.oneplus.camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    goto :goto_35

    :cond_2a
    const-string v2, "com.oneplus.gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    :goto_34
    move v1, v4

    :goto_35
    packed-switch v1, :pswitch_data_54

    .line 102
    const/4 v0, 0x0

    goto :goto_3c

    .line 99
    :pswitch_3a
    const/4 v0, 0x2

    .line 100
    nop

    .line 106
    :goto_3c
    invoke-static {p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper;->shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 109
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_4d

    const-string v1, "OemSceneModeActivityStack"

    const-string v2, "[scene] don\'t update the scene screen effect flag when permission dialog shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4d
    return-void

    .line 113
    :cond_4e
    if-eq v0, v4, :cond_53

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    .line 116
    :cond_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method
