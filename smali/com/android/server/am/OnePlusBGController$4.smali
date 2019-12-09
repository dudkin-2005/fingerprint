.class synthetic Lcom/android/server/am/OnePlusBGController$4;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2045
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->values()[Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->INIT_OBSERVE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 1948
    :goto_30
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->values()[Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    :try_start_39
    sget-object v3, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v3

    :goto_45
    :try_start_45
    sget-object v3, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v1

    :goto_51
    :try_start_51
    sget-object v1, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v3

    aput v2, v1, v3
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v1

    .line 1414
    :goto_5d
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->values()[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

    :try_start_66
    sget-object v1, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    return-void
.end method
