.class public final Lcom/android/server/am/OemSceneModeAmHelper;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final IS_SCENE_MODES_FEATURED:Z

.field private static final TAG:Ljava/lang/String; = "OemSceneModeAmHelper"

.field private static sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sOemExSvc:Lcom/oem/os/IOemExService;

.field private static sSceneChangingMonitorStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 41
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    return v0
.end method

.method public static disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "toDisable"    # Z

    .line 353
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_30

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "temp_disable_scene_button_lcok_feature"

    .line 358
    if-eqz p1, :cond_10

    const-string v2, "1"

    goto :goto_12

    :cond_10
    const-string v2, "0"

    :goto_12
    const/4 v3, -0x2

    .line 357
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 360
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_30

    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] updateSceneButtonLockFeature toDisable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_30
    return-void
.end method

.method public static endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 381
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_3f

    .line 382
    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "[scene] end switching user"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_b
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_1b

    .line 385
    const-string v0, "OEMExService"

    .line 386
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 390
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 391
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_28

    .line 395
    :cond_27
    goto :goto_3f

    .line 393
    :catch_28
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/am/KeyguardController;ZZLcom/android/server/am/ActivityStackSupervisor;)V
    .registers 10
    .param p0, "kc"    # Lcom/android/server/am/KeyguardController;
    .param p1, "keyguardShowing"    # Z
    .param p2, "occluded"    # Z
    .param p3, "acss"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 271
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_77

    .line 272
    const-string v0, "OemSceneModeAmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] handleShowOrOccludedChanged showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", occluded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_29

    goto :goto_2b

    :cond_29
    move v2, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v2, v0

    .line 277
    .local v2, "toMonitorSceneChanging":Z
    :goto_2c
    sget-boolean v3, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    if-eq v2, v3, :cond_64

    .line 279
    :try_start_30
    sget-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v3, :cond_40

    .line 280
    const-string v3, "OEMExService"

    .line 281
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 280
    invoke-static {v3}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 284
    :cond_40
    sget-object v3, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-eqz p1, :cond_49

    if-eqz p2, :cond_47

    goto :goto_49

    :cond_47
    move v0, v1

    nop

    :cond_49
    :goto_49
    invoke-interface {v3, v0}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4c} :catch_4d

    .line 287
    goto :goto_64

    .line 285
    :catch_4d
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OemSceneModeAmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    sput-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 295
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    iget-object v0, v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    .line 299
    .end local v2    # "toMonitorSceneChanging":Z
    :cond_77
    return-void
.end method

.method public static shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 303
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    if-nez v0, :cond_85

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "permissionIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x110000

    .line 310
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 312
    .local v1, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_42

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 313
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 314
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    sget-object v4, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_2a

    .line 318
    :cond_42
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_85

    .line 320
    const-string v2, "OemSceneModeAmHelper"

    const-string v3, "[scene] scene evaluation ignore list: "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 322
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 323
    .local v3, "cn":Landroid/content/ComponentName;
    const-string v4, "OemSceneModeAmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[scene]    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v3    # "cn":Landroid/content/ComponentName;
    goto :goto_5b

    .line 326
    :cond_7e
    const-string v2, "OemSceneModeAmHelper"

    const-string v3, "[scene]     Empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "permissionIntent":Landroid/content/Intent;
    .end local v1    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_85
    const/4 v0, 0x0

    if-nez p1, :cond_89

    .line 333
    return v0

    .line 337
    :cond_89
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_91

    .line 338
    return v2

    .line 342
    :cond_91
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 343
    .restart local v3    # "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_ae

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 344
    return v2

    .line 346
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_ae
    goto :goto_97

    .line 348
    :cond_af
    return v0
.end method

.method public static startUserSwitching()V
    .registers 4

    .line 365
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v0, :cond_39

    .line 366
    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "[scene] start switching user"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_b
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_1b

    .line 369
    const-string v0, "OEMExService"

    .line 370
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 373
    :cond_1b
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_22

    .line 376
    goto :goto_39

    .line 374
    :catch_22
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method
