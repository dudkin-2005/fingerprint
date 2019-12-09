.class public Lcom/oneplus/sdk/utils/OpBoostFramework;
.super Ljava/lang/Object;
.source "OpBoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final MAX_ACQUIRE_DURATION:I = 0x7d0

.field public static final MIN_ACQUIRE_DURATION:I = 0x0

.field public static final REQUEST_FAILED_EXCEPTION:I = -0x4

.field public static final REQUEST_FAILED_INVALID_DURATION:I = -0x2

.field public static final REQUEST_FAILED_NATIVE:I = -0x1

.field public static final REQUEST_FAILED_UNKNOWN_POLICY:I = -0x3

.field public static final REQUEST_POLICY_PERFORMANCE:I = 0x0

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpBoostFramework"

.field private static sPerfBoostInstance:Landroid/util/BoostFramework;

.field private static sProjectName:Ljava/lang/String;

.field private static sProjectName_old:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 51
    const-string/jumbo v0, "ro.prj_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    if-nez v0, :cond_e

    .line 60
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 63
    :cond_e
    const-string v0, "OpBoostFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpBoostFramework() : sPerfBoostInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 8
    sget-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    return v0
.end method


# virtual methods
.method public acquireBoostFor(II)I
    .registers 9
    .param p1, "policy"    # I
    .param p2, "duration"    # I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    const-string v1, ""

    .line 87
    .local v1, "projectName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 88
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    goto :goto_10

    .line 90
    :cond_e
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    .line 92
    :goto_10
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor() : policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor() : duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "projectName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_58

    .line 123
    const/4 v0, -0x3

    goto/16 :goto_ee

    .line 98
    :cond_58
    const/16 v2, 0x7d0

    if-gt p2, v2, :cond_ed

    if-gez p2, :cond_60

    goto/16 :goto_ed

    .line 103
    :cond_60
    :try_start_60
    const-string v2, "14049"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_75

    .line 104
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_108

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto/16 :goto_ee

    .line 105
    :cond_75
    const-string v2, "15801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 107
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_114

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_ee

    .line 108
    :cond_88
    const-string v2, "15811"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 110
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_120

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_ee

    .line 111
    :cond_9b
    const-string v2, "16859"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    const-string v2, "17801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    const-string v2, "17819"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    goto :goto_c6

    .line 115
    :cond_b4
    const-string v2, "OpBoostFramework"

    const-string v4, "Try to acquire full speed perf lock for unspecified proj"

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_12c

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 120
    goto :goto_ee

    .line 113
    :cond_c6
    :goto_c6
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_138

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_d0} :catch_d1

    goto :goto_ee

    .line 126
    :catch_d1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OpBoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v0, -0x4

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_ef

    .line 99
    :cond_ed
    :goto_ed
    const/4 v0, -0x2

    .line 130
    :goto_ee
    nop

    .line 131
    :goto_ef
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor++++++() : ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v0

    nop

    nop

    :array_108
    .array-data 4
        0x1e01
        0x20d
        0x4d04
        0x1f12
    .end array-data

    :array_114
    .array-data 4
        0x40800000    # 4.0f
        0x834
        0x40800100    # 4.000122f
        0x640
    .end array-data

    :array_120
    .array-data 4
        0x40800000    # 4.0f
        0x960
        0x40800100    # 4.000122f
        0x640
    .end array-data

    :array_12c
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data

    :array_138
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data
.end method

.method public releaseBoost()I
    .registers 7

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":I
    const-string v1, ""

    .line 147
    .local v1, "projectName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 148
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    goto :goto_10

    .line 150
    :cond_e
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    .line 152
    :goto_10
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseBoost, projectName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_27
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2f

    move v0, v2

    .line 159
    goto :goto_4a

    .line 155
    :catch_2f
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OpBoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v0, -0x4

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4a
    return v0
.end method
