.class public Lcom/android/server/OemSceneButtonController;
.super Ljava/lang/Object;
.source "OemSceneButtonController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;,
        Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;,
        Lcom/android/server/OemSceneButtonController$Param;,
        Lcom/android/server/OemSceneButtonController$KeyLockMode;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final OPERATED:Ljava/lang/String; = "1"

.field public static final Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

.field private static final SCREEN_GESTURE_OPERATED:Ljava/lang/String; = "persist.sys.osbc.operated"

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final SPECIAL_FOR_HIDENAVBAR:Ljava/lang/String; = "Special for hideNavbar"

.field private static final SPECIAL_FOR_SHOWNAVBAR:Ljava/lang/String; = "Special for showNavbar"

.field private static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

.field private static final URI_GAME_BTN_SETTING:Landroid/net/Uri;

.field private static final URI_SCREEN_GESTURE:Landroid/net/Uri;

.field private static final VALUE_CONFIG:I = 0x3

.field private static final VALUE_DEFAULT:I = 0x1

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"

.field private static final VALUE_SCREEN_GESTURE:I = 0x3

.field private static final VALUE_START:I = 0x1

.field private static final VALUE_STOP:I = 0x2

.field private static sInstance:Lcom/android/server/OemSceneButtonController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

.field private mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

.field private mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

.field private mHandler:Landroid/os/Handler;

.field protected mIsFunctionOn:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 54
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    .line 71
    const-string v0, "game_mode_lock_buttons"

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    .line 73
    const-string/jumbo v0, "temp_disable_scene_button_lcok_feature"

    .line 74
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    .line 75
    const-string/jumbo v0, "op_navigation_bar_type"

    .line 76
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_SCREEN_GESTURE:Landroid/net/Uri;

    .line 91
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v2, "KeyBlocking"

    const-string v1, "GameMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v1, "specialParam"

    const-string v3, "Special for hideNavbar"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    .line 102
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v11, "KeyBlocking"

    const-string v1, "ZenMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    new-array v1, v8, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v2, v9

    .line 108
    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x46

    move-object v10, v0

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "OemSceneButtonController"

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneButtonController;->mIsFunctionOn:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    .line 86
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    .line 384
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 387
    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    .line 389
    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    .line 393
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "temp_disable_scene_button_lcok_feature"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 397
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 408
    :try_start_52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneButtonController$1;-><init>(Lcom/android/server/OemSceneButtonController;)V

    const-class v3, Lcom/android/server/OemSceneAutoBrightnessController;

    .line 414
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_64} :catch_65

    .line 416
    goto :goto_66

    .line 415
    :catch_65
    move-exception v1

    .line 418
    :goto_66
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 419
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneButtonController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneButtonController;

    .line 52
    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    return v0
.end method

.method private getGameButtonFeatureDisabled()Z
    .registers 5

    .line 477
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "temp_disable_scene_button_lcok_feature"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameButtonSetting()Z
    .registers 5

    .line 471
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Lcom/android/server/OemSceneButtonController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    .line 117
    :cond_b
    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    return-object v0
.end method

.method private getOnScreenNaviBarEnable()Z
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_show_on_screen_navkeys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1
.end method

.method private getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_3f

    :try_start_7
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 305
    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    .line 306
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 306
    .local v3, "i":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_3f

    .line 307
    aget-object v4, v1, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "param_e":[Ljava/lang/String;
    const-string/jumbo v5, "specialParam"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 309
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2c

    .line 310
    const/4 v2, 0x0

    return-object v2

    .line 313
    :cond_2c
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_35

    .line 306
    .end local v4    # "param_e":[Ljava/lang/String;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 318
    .end local v1    # "tmp":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_35
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3f
    return-object v0
.end method

.method private handleBlockScreenGestures()V
    .registers 3

    .line 261
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "handleBlockScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    if-eqz v0, :cond_1e

    .line 264
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;->setGestureButtonBlock(Z)V

    .line 265
    const-string/jumbo v0, "persist.sys.osbc.operated"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1e
    return-void
.end method

.method private handleRecoverScreenGestures()V
    .registers 3

    .line 252
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "handleRecoverScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    if-eqz v0, :cond_1e

    .line 255
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;->setGestureButtonBlock(Z)V

    .line 256
    const-string/jumbo v0, "persist.sys.osbc.operated"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1e
    return-void
.end method

.method private isBlockScreenGestures(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .line 325
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 327
    .local v0, "tempSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4b

    :try_start_a
    instance-of v4, p1, [Ljava/lang/String;

    if-eqz v4, :cond_4b

    .line 328
    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    .line 329
    .local v4, "tmp":[Ljava/lang/String;
    move v5, v3

    .line 329
    .local v5, "i":I
    :goto_12
    array-length v6, v4

    if-ge v5, v6, :cond_4b

    .line 330
    aget-object v6, v4, v5

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "param_e":[Ljava/lang/String;
    const-string/jumbo v7, "keyBlock"

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 332
    array-length v7, v6

    if-ge v7, v1, :cond_2c

    .line 333
    return v3

    .line 336
    :cond_2c
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 337
    .local v7, "keyCode":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v8, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x2

    .line 338
    .local v9, "j":I
    :goto_38
    array-length v10, v6

    if-ge v9, v10, :cond_43

    .line 339
    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 341
    .end local v9    # "j":I
    :cond_43
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    .end local v6    # "param_e":[Ljava/lang/String;
    .end local v7    # "keyCode":I
    .end local v8    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 354
    .end local v4    # "tmp":[Ljava/lang/String;
    .end local v5    # "i":I
    :catch_49
    move-exception v1

    goto :goto_b1

    .line 346
    :cond_4b
    const/16 v4, 0xbb

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 347
    .local v4, "switchKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 348
    .local v5, "backKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 349
    .local v1, "homeKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_af

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    :cond_7a
    if-eqz v5, :cond_af

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    .line 350
    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    :cond_94
    if-eqz v1, :cond_af

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    .line 351
    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ae

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_ac} :catch_49

    if-eqz v6, :cond_af

    .line 352
    :cond_ae
    return v2

    .line 357
    .end local v1    # "homeKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "switchKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "backKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_af
    nop

    .line 358
    return v3

    .line 354
    :goto_b1
    nop

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    return v3
.end method

.method private isNaviBarHidden()Z
    .registers 5

    .line 491
    sget-object v0, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 v3, 0x1

    nop

    :cond_14
    return v3
.end method

.method private isOperatedScreenGestures()Z
    .registers 3

    .line 270
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.osbc.operated"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 271
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs makeParam([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    if-gtz v1, :cond_a

    .line 149
    return-object v2

    .line 152
    :cond_a
    const-string/jumbo v1, "keyBlock"

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_50

    .line 153
    array-length v1, p0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1d

    .line 154
    return-object v2

    .line 157
    :cond_1d
    const-string/jumbo v1, "keyBlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    nop

    .line 163
    .local v4, "i":I
    :goto_35
    move v1, v4

    .line 163
    .end local v4    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_4b

    .line 164
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v2, p0

    sub-int/2addr v2, v5

    if-eq v1, v2, :cond_48

    .line 166
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_48
    add-int/lit8 v4, v1, 0x1

    .line 163
    .end local v1    # "i":I
    .restart local v4    # "i":I
    goto :goto_35

    .line 170
    .end local v4    # "i":I
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_50
    const-string/jumbo v1, "specialParam"

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 174
    array-length v1, p0

    if-ge v1, v4, :cond_5f

    .line 175
    return-object v2

    .line 178
    :cond_5f
    const-string/jumbo v1, "specialParam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 186
    :cond_75
    return-object v2
.end method

.method private operateSpecialParams(Ljava/util/ArrayList;I)V
    .registers 7
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 277
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_f

    .line 278
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "operateSpecialParams list is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_e
    return-void

    .line 282
    :cond_f
    const/4 v0, 0x0

    .line 283
    .local v0, "isCotain_SpecialHideNavBar":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "s":Ljava/lang/String;
    const-string v3, "Special for hideNavbar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 285
    const/4 v0, 0x1

    .line 286
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v3

    if-nez v3, :cond_33

    .line 287
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 290
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    goto :goto_14

    .line 292
    :cond_34
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    if-nez v0, :cond_40

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 296
    :cond_40
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4c

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 299
    :cond_4c
    return-void
.end method

.method private setKeyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 487
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    return-void
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 237
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "curValue":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_31

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set system property key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 240
    return-void

    .line 244
    :cond_38
    :try_start_38
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 248
    goto :goto_56

    .line 245
    :catch_3c
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OemSceneButtonController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set system property e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_56
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 215
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 219
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleBlockScreenGestures()V

    goto :goto_2c

    .line 220
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 221
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleRecoverScreenGestures()V

    .line 223
    :cond_2c
    :goto_2c
    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public registerGestureButtonBlockListener(Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;)V
    .registers 2
    .param p1, "gl"    # Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    .line 233
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    .line 234
    return-void
.end method

.method public setEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 422
    if-eqz p1, :cond_c

    .line 424
    sget-object v0, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_3f

    .line 427
    :cond_c
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getOnScreenNaviBarEnable()Z

    move-result v0

    .line 428
    .local v0, "onScreenNaviBarEnabled":Z
    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_2a

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] onScreenNaviBarEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2a
    if-eqz v0, :cond_36

    .line 430
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->BACK_SWITCH:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_3f

    .line 432
    :cond_36
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    .line 435
    .end local v0    # "onScreenNaviBarEnabled":Z
    :goto_3f
    return-void
.end method

.method public start(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 191
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 195
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleBlockScreenGestures()V

    .line 197
    :cond_1c
    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 203
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    .line 206
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 207
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleRecoverScreenGestures()V

    .line 209
    :cond_1c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public updateFunctionRule(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 439
    :try_start_0
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    .line 440
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_2e

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2e
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_58

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] game_mode_button_locked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsButtonLockFeatureDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_58
    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    if-eq v0, p1, :cond_81

    .line 445
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_78

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] removeFuncRule for blocking key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_78
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 450
    :cond_81
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 452
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_a4

    .line 454
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 456
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_a4

    .line 459
    :cond_9d
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a5

    .line 464
    :goto_a4
    goto :goto_bd

    .line 462
    :catch_a5
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFunctionRule error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bd
    iput p1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    .line 467
    return-void
.end method
