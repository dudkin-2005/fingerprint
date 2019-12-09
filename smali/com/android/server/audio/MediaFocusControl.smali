.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field public static final EXTRA_MOVIES_STATE:Ljava/lang/String; = "com.oem.intent.action.MOVIES_STATE"

.field private static final MAX_STACK_SIZE:I = 0x64

.field public static final MOVIES_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.oem.intent.action.ACTION_MOVIES_STATE_CHANGED_ACTION"

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mExtFocusChangeCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExtFocusChangeLock"
    .end annotation
.end field

.field private final mExtFocusChangeLock:Ljava/lang/Object;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mGameList:[Ljava/lang/String;

.field private mMoviesList:[Ljava/lang/String;

.field private mNotifyFocusOwnerOnDuck:Z

.field private mRingOrCallActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string v1, "focus commands as seen by MediaFocusControl"

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 749
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x1
        0xe
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .registers 13
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "pfe"    # Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 102
    const-string v0, "com.nextwave.wcc2"

    const-string v1, "com.king.candycrushsaga"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    .line 160
    const-string v1, "com.ss.android.ugc.aweme"

    const-string v2, "com.tencent.qqlive"

    const-string v3, "com.qiyi.video"

    const-string v4, "com.youku.phone"

    const-string v5, "com.ss.android.ugc.live"

    const-string v6, "com.ss.android.article.video"

    const-string v7, "com.smile.gifmaker"

    const-string v8, "com.google.android.youtube"

    const-string v9, "com.ss.android.ugc.trill"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 108
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 110
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 111
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object v0
.end method

.method private broadcastMoviesStatus(Z)V
    .registers 4
    .param p1, "state"    # Z

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.ACTION_MOVIES_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oem.intent.action.MOVIES_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const/high16 v1, 0x25000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 419
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 721
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 722
    .local v0, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 723
    .local v1, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 725
    .local v2, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 726
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 727
    .end local v2    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_a

    .line 728
    :cond_20
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 281
    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 287
    :cond_1e
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_2d

    .line 289
    const-string v2, "No external focus policy\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    .line 291
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External focus policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", focus owners:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 294
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_88

    .line 295
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    return-void

    .line 294
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 3
    .param p0, "focusGain"    # I
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 759
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 780
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 768
    :pswitch_9
    const/16 v0, 0x2bc

    return v0

    .line 777
    :pswitch_c
    const/16 v0, 0x1f4

    return v0

    .line 762
    :pswitch_f
    const/16 v0, 0x3e8

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .line 425
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 229
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 232
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x5e

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 233
    move v1, v3

    .line 233
    .local v1, "i":I
    :goto_1d
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    .line 234
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 235
    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 236
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "notifyTopOfAudioFocusStack broadcastMoviesStatus true!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_4c

    .line 239
    :cond_40
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    if-ne v1, v2, :cond_49

    .line 240
    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 233
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 245
    .end local v1    # "i":I
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 248
    :cond_57
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 9
    .param p1, "focusGain"    # I
    .param p2, "fr"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 258
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 261
    .local v0, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 262
    .local v2, "focusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 263
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 264
    .local v3, "isDefinitiveLoss":Z
    if-eqz v3, :cond_25

    .line 265
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "focusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_25
    goto :goto_b

    .line 268
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    .local v2, "clientToRemove":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 271
    .end local v2    # "clientToRemove":Ljava/lang/String;
    goto :goto_2a

    .line 272
    :cond_3c
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 440
    .local v0, "lastLockedFocusOwnerIndex":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_e
    if-ltz v1, :cond_22

    .line 441
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 442
    move v0, v1

    .line 440
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 445
    .end local v1    # "index":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 447
    const-string v1, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 451
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return v2

    .line 454
    :cond_44
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 455
    const/4 v1, 0x2

    return v1
.end method

.method private removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    return-void

    .line 392
    :cond_9
    const/4 v0, 0x0

    .line 393
    .local v0, "released":Z
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 394
    .local v1, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 395
    .local v2, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 397
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 398
    .local v4, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 400
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 401
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 402
    goto :goto_3b

    .line 404
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_3a
    goto :goto_14

    .line 405
    :cond_3b
    :goto_3b
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 313
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 314
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 315
    if-eqz p3, :cond_2e

    .line 316
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    .line 317
    .local v1, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 318
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 320
    .end local v1    # "afi":Landroid/media/AudioFocusInfo;
    :cond_2e
    if-eqz p2, :cond_33

    .line 322
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 324
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_33
    goto :goto_69

    .line 329
    :cond_34
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 332
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 333
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 339
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_68
    goto :goto_3a

    .line 341
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_69
    :goto_69
    return-void
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 350
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 353
    .local v0, "isTopOfStackForClientToRemove":Z
    :goto_1b
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 354
    .local v3, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 355
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 356
    .local v4, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 357
    const-string v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-array v5, v1, [I

    const/16 v6, 0x5e

    aput v6, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 361
    move v5, v2

    .line 361
    .local v5, "i":I
    :goto_56
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_74

    .line 362
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 363
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 364
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "removeFocusStackEntryOnDeath broadcastMoviesStatus false!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    goto :goto_74

    .line 361
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 370
    .end local v5    # "i":I
    :cond_74
    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 372
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 374
    .end local v4    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_7a
    goto :goto_21

    .line 375
    :cond_7b
    if-eqz v0, :cond_80

    .line 378
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 380
    :cond_80
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .registers 3
    .param p1, "enteringRingOrCall"    # Z

    .line 1052
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1071
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    .line 1072
    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 189
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 192
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 21
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    .line 981
    move-object/from16 v12, p4

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 985
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 981
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 990
    const/4 v0, 0x0

    move v2, v0

    .line 990
    .local v2, "i":I
    :goto_41
    const/4 v13, 0x1

    :try_start_42
    iget-object v3, v1, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_74

    .line 991
    if-eqz v12, :cond_71

    iget-object v3, v1, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 992
    const-string/jumbo v3, "specialGameplaying=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 993
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParameters specialGameplaying=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    goto :goto_74

    .line 990
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1001
    .end local v2    # "i":I
    :cond_74
    :goto_74
    new-array v2, v13, [I

    const/16 v3, 0x5e

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1002
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_c5

    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, v11}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 1003
    move v2, v0

    .line 1003
    .restart local v2    # "i":I
    :goto_97
    iget-object v3, v1, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_c5

    .line 1004
    if-eqz v12, :cond_c2

    iget-object v3, v1, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1005
    invoke-direct {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 1006
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastMoviesStatus false "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    goto :goto_c5

    .line 1003
    :cond_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 1012
    .end local v2    # "i":I
    :cond_c5
    :goto_c5
    sget-object v14, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_c8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_42 .. :try_end_c8} :catch_108

    .line 1014
    :try_start_c8
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v2, :cond_e7

    .line 1015
    new-instance v15, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v15

    move-object/from16 v3, p3

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v2 .. v10}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    move-object v2, v15

    .line 1018
    .local v2, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 1019
    monitor-exit v14

    return v13

    .line 1023
    .end local v2    # "afi":Landroid/media/AudioFocusInfo;
    :cond_e7
    iget-boolean v2, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1024
    invoke-virtual {v3, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f3

    move v3, v13

    goto :goto_f4

    :cond_f3
    move v3, v0

    :goto_f4
    and-int/2addr v2, v3

    .line 1025
    .local v2, "exitingRingOrCall":Z
    if-eqz v2, :cond_f9

    iput-boolean v0, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1027
    :cond_f9
    invoke-direct {v1, v11, v13, v13}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1029
    and-int v3, v13, v2

    if-eqz v3, :cond_103

    .line 1030
    invoke-direct {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1032
    .end local v2    # "exitingRingOrCall":Z
    :cond_103
    monitor-exit v14

    .line 1039
    goto :goto_122

    .line 1032
    :catchall_105
    move-exception v0

    monitor-exit v14
    :try_end_107
    .catchall {:try_start_c8 .. :try_end_107} :catchall_105

    :try_start_107
    throw v0
    :try_end_108
    .catch Ljava/util/ConcurrentModificationException; {:try_start_107 .. :try_end_108} :catch_108

    .line 1033
    :catch_108
    move-exception v0

    .line 1037
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1041
    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_122
    return v13
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 8
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 498
    if-nez p1, :cond_3

    .line 499
    return-void

    .line 501
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "found":Z
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 504
    .local v3, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 505
    const/4 v1, 0x1

    .line 506
    goto :goto_2a

    .line 508
    .end local v3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_29
    goto :goto_d

    .line 509
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_2e

    .line 510
    monitor-exit v0

    return-void

    .line 512
    :cond_2e
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 515
    .end local v1    # "found":Z
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected discardAudioFocusOwner()V
    .registers 6

    .line 214
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 217
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 218
    .local v1, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 220
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 222
    .end local v1    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_1c
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I

    .line 701
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 704
    monitor-exit v0

    return v2

    .line 707
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1a

    .line 708
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_26

    .line 710
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 712
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_26
    if-nez v1, :cond_2a

    .line 714
    monitor-exit v0

    return v2

    .line 716
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 717
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 5
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 117
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 120
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .line 731
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 733
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 735
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    monitor-exit v0

    return v1

    .line 737
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .registers 3
    .param p1, "usagesToMute"    # [I

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 137
    return-void
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 678
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_6

    .line 679
    const/4 v0, 0x0

    return v0

    .line 681
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 682
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_17

    .line 683
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 687
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 691
    goto :goto_3a

    .line 688
    :catch_1d
    move-exception v1

    .line 689
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 690
    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    const/4 v1, 0x1

    return v1
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .registers 19
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p3, "cb"    # Landroid/os/IBinder;

    move-object v7, p0

    move-object/from16 v8, p1

    .line 624
    move-object/from16 v9, p3

    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v10, 0x0

    if-nez v0, :cond_b

    .line 625
    return v10

    .line 631
    :cond_b
    iget-object v1, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_e
    iget-wide v2, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {v8, v2, v3}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 633
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_8b

    .line 634
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/audio/FocusRequester;

    .line 635
    .local v11, "existingFr":Lcom/android/server/audio/FocusRequester;
    if-eqz v11, :cond_4c

    .line 636
    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 637
    invoke-virtual {v11}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 638
    new-instance v5, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v5, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 639
    .local v5, "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/server/audio/FocusRequester;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v12

    move-object v4, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .end local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    goto :goto_66

    .line 644
    :cond_4c
    move-object/from16 v12, p2

    new-instance v5, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v5, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 645
    .restart local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/server/audio/FocusRequester;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v12

    move-object v4, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .end local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :cond_66
    :goto_66
    :try_start_66
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v8, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6c} :catch_6d

    .line 651
    return v1

    .line 652
    :catch_6d
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 654
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v0    # "e":Landroid/os/RemoteException;
    return v10

    .line 633
    .end local v11    # "existingFr":Lcom/android/server/audio/FocusRequester;
    :catchall_8b
    move-exception v0

    move-object/from16 v12, p2

    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_90

    throw v0

    :catchall_90
    move-exception v0

    goto :goto_8e
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 564
    move-object v0, p1

    .line 565
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 583
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 584
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 593
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 597
    goto :goto_31

    .line 594
    :catch_16
    move-exception v2

    .line 595
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_6

    .line 599
    :cond_32
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .line 605
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 608
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 612
    goto :goto_31

    .line 609
    :catch_16
    move-exception v2

    .line 610
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_6

    .line 614
    :cond_32
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 519
    if-nez p1, :cond_3

    .line 520
    return-void

    .line 522
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 524
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 525
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    goto :goto_2d

    .line 528
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2c
    goto :goto_c

    .line 529
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 35
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "sdk"    # I
    .param p9, "forceDuck"    # Z

    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    move/from16 v10, p7

    .line 793
    const/4 v9, 0x0

    :try_start_d
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 794
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 793
    invoke-virtual {v0, v11, v9, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_17} :catch_18

    .line 799
    .local v0, "packageContext":Landroid/content/Context;
    goto :goto_34

    .line 795
    .end local v0    # "packageContext":Landroid/content/Context;
    :catch_18
    move-exception v0

    .line 796
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 797
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create package context fail from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 798
    .local v0, "packageContext":Landroid/content/Context;
    :goto_34
    move-object v8, v0

    .line 801
    .end local v0    # "packageContext":Landroid/content/Context;
    .local v8, "packageContext":Landroid/content/Context;
    move-object/from16 v7, p1

    invoke-static {v8, v7}, Lcom/oneplus/util/OemSceneCallBlocker;->isMutedByCallBlocker(Landroid/content/Context;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 802
    const-string v0, "MediaFocusControl"

    const-string v1, " We block audio focus here"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v9

    .line 807
    :cond_45
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus() from uid/pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingPack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "MediaFocusControl"

    .line 814
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 807
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 818
    move v0, v9

    .line 818
    .local v0, "i":I
    :goto_a6
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_d8

    .line 819
    if-eqz v11, :cond_d5

    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 820
    const-string/jumbo v1, "specialGameplaying=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 821
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameters specialGameplaying=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    goto :goto_d8

    .line 818
    :cond_d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 827
    .end local v0    # "i":I
    :cond_d8
    :goto_d8
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 828
    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return v9

    .line 832
    :cond_e6
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f5

    .line 834
    return v9

    .line 837
    :cond_f5
    sget-object v16, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v16

    .line 838
    :try_start_f8
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_2f2

    const/16 v5, 0x64

    if-le v0, v5, :cond_113

    .line 839
    :try_start_102
    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    monitor-exit v16
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_10b

    return v9

    .line 955
    :catchall_10b
    move-exception v0

    move/from16 v1, p9

    move-object/from16 v18, v8

    .line 955
    .end local v8    # "packageContext":Landroid/content/Context;
    .local v18, "packageContext":Landroid/content/Context;
    :goto_110
    move-object v5, v15

    goto/16 :goto_2f8

    .line 843
    .end local v18    # "packageContext":Landroid/content/Context;
    .restart local v8    # "packageContext":Landroid/content/Context;
    :cond_113
    :try_start_113
    iget-boolean v0, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 844
    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1
    :try_end_11d
    .catchall {:try_start_113 .. :try_end_11d} :catchall_2f2

    if-nez v1, :cond_121

    move v1, v4

    goto :goto_122

    :cond_121
    move v1, v9

    :goto_122
    and-int v17, v0, v1

    .line 845
    .local v17, "enteringRingOrCall":Z
    if-eqz v17, :cond_128

    :try_start_126
    iput-boolean v4, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z
    :try_end_128
    .catchall {:try_start_126 .. :try_end_128} :catchall_10b

    .line 848
    :cond_128
    :try_start_128
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_12a
    .catchall {:try_start_128 .. :try_end_12a} :catchall_2f2

    if-eqz v0, :cond_14e

    .line 850
    :try_start_12c
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3
    :try_end_132
    .catchall {:try_start_12c .. :try_end_132} :catchall_147

    const/16 v18, 0x0

    move-object v1, v0

    move-object v2, v7

    move-object v4, v12

    move/from16 v20, v5

    move-object v5, v11

    move v6, v14

    move/from16 v7, v18

    move-object/from16 v18, v8

    move v8, v10

    .end local v8    # "packageContext":Landroid/content/Context;
    .restart local v18    # "packageContext":Landroid/content/Context;
    move v11, v9

    move/from16 v9, p8

    :try_start_143
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 850
    .local v0, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    goto :goto_154

    .line 955
    .end local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    .end local v18    # "packageContext":Landroid/content/Context;
    .restart local v8    # "packageContext":Landroid/content/Context;
    :catchall_147
    move-exception v0

    move-object/from16 v18, v8

    move/from16 v1, p9

    goto/16 :goto_2f7

    .line 854
    .restart local v17    # "enteringRingOrCall":Z
    :cond_14e
    move/from16 v20, v5

    move-object/from16 v18, v8

    move v11, v9

    .line 854
    .end local v8    # "packageContext":Landroid/content/Context;
    .restart local v18    # "packageContext":Landroid/content/Context;
    const/4 v0, 0x0

    .line 854
    .restart local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :goto_154
    move-object v9, v0

    .line 858
    .end local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v9, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    const/4 v0, 0x0

    .line 859
    .local v0, "focusGrantDelayed":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_163

    .line 860
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_162

    .line 861
    monitor-exit v16

    return v11

    .line 866
    :cond_162
    const/4 v0, 0x1

    .line 871
    .end local v0    # "focusGrantDelayed":Z
    .local v22, "focusGrantDelayed":Z
    :cond_163
    move/from16 v22, v0

    move-object/from16 v8, p4

    invoke-virtual {v13, v9, v8, v15}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 874
    monitor-exit v16

    return v20

    .line 880
    :cond_16f
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v13, v15}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_174
    .catchall {:try_start_143 .. :try_end_174} :catchall_2ed

    move-object v7, v0

    .line 883
    .local v7, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_175
    invoke-interface {v15, v7, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_178} :catch_2c1
    .catchall {:try_start_175 .. :try_end_178} :catchall_2b9

    .line 888
    nop

    .line 890
    :try_start_179
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0
    :try_end_17f
    .catchall {:try_start_179 .. :try_end_17f} :catchall_2b9

    const/16 v20, 0x5e

    if-nez v0, :cond_20e

    :try_start_183
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v12}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 893
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 894
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    if-ne v1, v14, :cond_1fa

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v1

    if-ne v1, v10, :cond_1fa

    .line 897
    invoke-interface {v15, v7, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 898
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v13, v1, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 902
    new-array v1, v6, [I

    aput v20, v1, v11

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 903
    move v1, v11

    .line 903
    .local v1, "i":I
    :goto_1bb
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v2, v2
    :try_end_1be
    .catchall {:try_start_183 .. :try_end_1be} :catchall_209

    if-ge v1, v2, :cond_1f6

    .line 904
    move v5, v11

    move-object/from16 v11, p6

    if-eqz v11, :cond_1e9

    :try_start_1c5
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 905
    invoke-direct {v13, v6}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 906
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastMoviesStatus true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    goto :goto_1f8

    .line 909
    :cond_1e9
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_1f2

    .line 910
    invoke-direct {v13, v5}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 903
    :cond_1f2
    add-int/lit8 v1, v1, 0x1

    move v11, v5

    goto :goto_1bb

    .line 915
    .end local v1    # "i":I
    :cond_1f6
    move-object/from16 v11, p6

    :goto_1f8
    monitor-exit v16

    return v6

    .line 919
    :cond_1fa
    move v5, v11

    const/4 v6, 0x1

    move-object/from16 v11, p6

    if-nez v22, :cond_212

    .line 920
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 922
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_208
    .catchall {:try_start_1c5 .. :try_end_208} :catchall_2ed

    .line 922
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_212

    .line 955
    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    .end local v22    # "focusGrantDelayed":Z
    :catchall_209
    move-exception v0

    move-object/from16 v11, p6

    goto/16 :goto_2ee

    .line 927
    .restart local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    .restart local v22    # "focusGrantDelayed":Z
    :cond_20e
    move v5, v11

    const/4 v6, 0x1

    move-object/from16 v11, p6

    :cond_212
    :goto_212
    :try_start_212
    invoke-direct {v13, v12, v5, v5}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 929
    new-instance v0, Lcom/android/server/audio/FocusRequester;

    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19
    :try_end_21b
    .catchall {:try_start_212 .. :try_end_21b} :catchall_2b4

    move-object v1, v0

    move-object/from16 v2, p1

    move v3, v14

    move v4, v10

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v21, v7

    move-object v7, v12

    .line 930
    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .local v21, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    move-object/from16 v8, v21

    move-object/from16 v23, v9

    move-object v9, v11

    .line 930
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v23, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move/from16 v10, v19

    move-object v15, v11

    move-object v11, v13

    move/from16 v12, p8

    :try_start_230
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    .line 931
    .local v0, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v22, :cond_244

    .line 934
    invoke-direct {v13, v0}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v1

    .line 935
    .local v1, "requestResult":I
    if-eqz v1, :cond_242

    .line 936
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 938
    :cond_242
    monitor-exit v16

    return v1

    .line 941
    .end local v1    # "requestResult":I
    :cond_244
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_24a
    .catchall {:try_start_230 .. :try_end_24a} :catchall_2b0

    if-nez v1, :cond_252

    .line 942
    move/from16 v1, p9

    :try_start_24e
    invoke-direct {v13, v14, v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_254

    .line 946
    :cond_252
    move/from16 v1, p9

    :goto_254
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 949
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    invoke-virtual {v13, v3, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 952
    and-int v3, v2, v17

    if-eqz v3, :cond_26b

    .line 953
    invoke-direct {v13, v2}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 955
    .end local v0    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v17    # "enteringRingOrCall":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v22    # "focusGrantDelayed":Z
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_26b
    monitor-exit v16
    :try_end_26c
    .catchall {:try_start_24e .. :try_end_26c} :catchall_2eb

    .line 959
    new-array v0, v2, [I

    const/4 v3, 0x0

    aput v20, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 960
    move v0, v3

    .line 960
    .local v0, "i":I
    :goto_278
    iget-object v4, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2af

    .line 961
    if-eqz v15, :cond_2a3

    iget-object v4, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a3

    .line 962
    invoke-direct {v13, v2}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 963
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastMoviesStatus true "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    goto :goto_2af

    .line 966
    :cond_2a3
    iget-object v4, v13, Lcom/android/server/audio/MediaFocusControl;->mMoviesList:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_2ac

    .line 967
    invoke-direct {v13, v3}, Lcom/android/server/audio/MediaFocusControl;->broadcastMoviesStatus(Z)V

    .line 960
    :cond_2ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_278

    .line 972
    .end local v0    # "i":I
    :cond_2af
    :goto_2af
    return v2

    .line 955
    :catchall_2b0
    move-exception v0

    move/from16 v1, p9

    goto :goto_2be

    :catchall_2b4
    move-exception v0

    move/from16 v1, p9

    move-object v15, v11

    goto :goto_2be

    :catchall_2b9
    move-exception v0

    move/from16 v1, p9

    move-object/from16 v15, p6

    :goto_2be
    move-object/from16 v5, p3

    goto :goto_2f8

    .line 884
    .restart local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    .restart local v22    # "focusGrantDelayed":Z
    :catch_2c1
    move-exception v0

    move/from16 v1, p9

    move-object/from16 v21, v7

    move-object/from16 v23, v9

    move v3, v11

    move-object/from16 v15, p6

    .line 884
    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object v2, v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2cc
    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d8
    .catchall {:try_start_2cc .. :try_end_2d8} :catchall_2eb

    move-object/from16 v5, p3

    :try_start_2da
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " binder death"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    monitor-exit v16

    return v3

    .line 955
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "enteringRingOrCall":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v22    # "focusGrantDelayed":Z
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :catchall_2eb
    move-exception v0

    goto :goto_2be

    :catchall_2ed
    move-exception v0

    :goto_2ee
    move/from16 v1, p9

    goto/16 :goto_110

    .line 955
    .end local v18    # "packageContext":Landroid/content/Context;
    .restart local v8    # "packageContext":Landroid/content/Context;
    :catchall_2f2
    move-exception v0

    move/from16 v1, p9

    move-object/from16 v18, v8

    :goto_2f7
    move-object v5, v15

    .line 955
    .end local v8    # "packageContext":Landroid/content/Context;
    .restart local v18    # "packageContext":Landroid/content/Context;
    :goto_2f8
    monitor-exit v16
    :try_end_2f9
    .catchall {:try_start_2da .. :try_end_2f9} :catchall_2fa

    throw v0

    :catchall_2fa
    move-exception v0

    goto :goto_2f8
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 490
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 491
    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 541
    if-nez p1, :cond_3

    .line 542
    return-void

    .line 544
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_6
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 660
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 662
    monitor-exit v0

    return-void

    .line 664
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 665
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 666
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_21

    .line 667
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    .line 669
    :cond_21
    return-void

    .line 664
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 3
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 131
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 132
    return-void
.end method

.method public unmutePlayersForCall()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 142
    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 1046
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1048
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 550
    if-nez p1, :cond_3

    .line 551
    return-void

    .line 553
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_d

    .line 555
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 557
    :cond_d
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method
