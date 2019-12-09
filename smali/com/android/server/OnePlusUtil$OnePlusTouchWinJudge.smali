.class public Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusTouchWinJudge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;,
        Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge; = null

.field private static final TAG:Ljava/lang/String; = "OnePlusTouchWinJudge"

.field private static mLastTouchWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mTouchWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private touchWindowListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private canSkipNotifyLocked(IIIII)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "type"    # I

    .line 87
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 88
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v0, p2, :cond_78

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    if-ne v0, p3, :cond_78

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    if-ne v0, p4, :cond_78

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    if-ne v0, p5, :cond_78

    .line 91
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_76

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canSkipLocked true. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_76
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_78
    const/4 v0, 0x0

    return v0
.end method

.method public static final getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
    .registers 3

    .line 44
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    .line 47
    :cond_b
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTANCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_27
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    return-object v0
.end method

.method private notifyAddTouchWindows(IILjava/lang/String;II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    .line 200
    .local v1, "twl":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;->addTouchWindow(IILjava/lang/String;II)V

    .line 201
    .end local v1    # "twl":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    goto :goto_6

    .line 202
    :cond_1c
    return-void
.end method

.method private notifyIfWindowRemovedLocked()Z
    .registers 11

    .line 147
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyIfWindowRemovedLocked: mLastTouchWindow->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTouchWindow->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_27
    const/4 v0, 0x0

    .line 153
    .local v0, "ret":Z
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, "uid":I
    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 157
    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    .line 158
    .local v3, "fw":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    iget v5, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    iget v6, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    iget-object v7, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    iget v9, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyRemoveTouchWindows(IILjava/lang/String;II)V

    .line 159
    const/4 v0, 0x1

    .line 161
    .end local v2    # "uid":I
    .end local v3    # "fw":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    :cond_69
    goto :goto_32

    .line 162
    :cond_6a
    if-nez v0, :cond_c0

    .line 163
    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "itt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 166
    .local v3, "uid":I
    sget-object v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    .line 168
    sget-boolean v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v4, :cond_bd

    .line 169
    sget-object v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    .line 170
    .local v4, "fw":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    const-string v5, "OnePlusTouchWinJudge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyIfWindowRemovedLocked: win added-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v4    # "fw":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
    :cond_bd
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v3    # "uid":I
    :cond_bf
    goto :goto_76

    .line 177
    .end local v2    # "itt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_c0
    return v0
.end method

.method private notifyRemoveTouchWindows(IILjava/lang/String;II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    .line 206
    .local v1, "twl":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;->removeTouchWindow(IILjava/lang/String;II)V

    .line 207
    .end local v1    # "twl":Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;
    goto :goto_6

    .line 208
    :cond_1c
    return-void
.end method


# virtual methods
.method public addUidtoTouchWindowUids(IILjava/lang/String;III)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "type"    # I

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    .line 52
    move/from16 v11, p6

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUidtoTouchWindowUids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " w*h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 53
    :cond_4f
    move/from16 v13, p1

    move-object/from16 v12, p3

    :goto_53
    if-eqz v9, :cond_119

    if-nez v10, :cond_59

    goto/16 :goto_119

    .line 65
    :cond_59
    const/16 v0, 0x7db

    if-eq v11, v0, :cond_10c

    const/16 v0, 0x7dc

    if-ne v11, v0, :cond_63

    goto/16 :goto_10c

    .line 69
    :cond_63
    sget-object v14, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 70
    :try_start_66
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 71
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v0, v8, :cond_df

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    .line 72
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    if-ne v0, v9, :cond_df

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    if-ne v0, v10, :cond_df

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    .line 73
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v0, v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    if-ne v0, v11, :cond_df

    .line 74
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_dd

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has already put in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_dd
    monitor-exit v14

    return-void

    .line 78
    :cond_df
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v7, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    move-object v1, v7

    move v2, v13

    move v3, v8

    move-object v4, v12

    move v5, v9

    move v6, v10

    move-object v12, v7

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;-><init>(IILjava/lang/String;III)V

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v1, p0

    move v2, v13

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->canSkipNotifyLocked(IIIII)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 80
    monitor-exit v14

    return-void

    .line 82
    :cond_104
    monitor-exit v14
    :try_end_105
    .catchall {:try_start_66 .. :try_end_105} :catchall_109

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyAddTouchWindows(IILjava/lang/String;II)V

    .line 84
    return-void

    .line 82
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v14
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0

    .line 66
    :cond_10c
    :goto_10c
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_118

    const-string v0, "OnePlusTouchWinJudge"

    const-string/jumbo v1, "window type is input method!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_118
    return-void

    .line 54
    :cond_119
    :goto_119
    return-void
.end method

.method public getTouchWindow()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isContainPid(I)Z
    .registers 9
    .param p1, "pid"    # I

    .line 105
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 106
    return v1

    .line 108
    :cond_12
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_15
    sget-boolean v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "OnePlusTouchWinJudge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isContainPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_30
    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    .local v2, "mit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_53

    .line 112
    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v3, v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v3, p1, :cond_3a

    .line 113
    monitor-exit v0

    return v4

    .line 116
    :cond_53
    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 117
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 118
    sget-object v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    iget v5, v5, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    if-ne v5, p1, :cond_5d

    .line 119
    monitor-exit v0

    return v4

    .line 121
    .end local v2    # "mit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_75
    monitor-exit v0

    .line 122
    return v1

    .line 121
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public isContainUid(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 126
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-boolean v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v1, :cond_57

    .line 128
    const-string v1, "OnePlusTouchWinJudge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isContainUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindow.contains(uid):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|mTouchWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mTouchWindow.contains(uid):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_57
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_72

    :cond_70
    const/4 v1, 0x0

    goto :goto_73

    :cond_72
    :goto_72
    const/4 v1, 0x1

    :goto_73
    monitor-exit v0

    return v1

    .line 132
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public onFindFocusedWindow()V
    .registers 3

    .line 136
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->notifyIfWindowRemovedLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 138
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 139
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindow:Ljava/util/HashMap;

    .line 141
    :cond_18
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public registerTouchWindowListener(Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;)V
    .registers 4
    .param p1, "twl"    # Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    .line 181
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 183
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_10
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public unregisterTouchWindowListener(Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;)V
    .registers 4
    .param p1, "twl"    # Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$TouchWindowListener;

    .line 188
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->touchWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
