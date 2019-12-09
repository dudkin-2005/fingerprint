.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TELEPHONY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 423
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "NETWORK_STATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 424
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "DATACALL_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 425
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "IMS_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 426
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "RAT_STATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 422
    new-array v0, v6, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 431
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    .line 432
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 422
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    return v0
.end method

.method static fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .registers 6
    .param p0, "value"    # I

    .line 435
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 436
    .local v3, "my":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    iget v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    if-ne v4, p0, :cond_f

    .line 437
    return-object v3

    .line 435
    .end local v3    # "my":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 440
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method static toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .param p1, "everQxdmRecording"    # Z

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "result_str":Ljava/lang/String;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    goto :goto_31

    .line 456
    :pswitch_d
    if-eqz p1, :cond_12

    const-string v1, "QXDM_TELEPHONY_RAT_ANOMALY"

    goto :goto_14

    :cond_12
    const-string v1, "TELEPHONY_RAT_ANOMALY"

    :goto_14
    move-object v0, v1

    goto :goto_31

    .line 453
    :pswitch_16
    if-eqz p1, :cond_1b

    const-string v1, "QXDM_TELEPHONY_IMS_ANOMALY"

    goto :goto_1d

    :cond_1b
    const-string v1, "TELEPHONY_IMS_ANOMALY"

    :goto_1d
    move-object v0, v1

    .line 454
    goto :goto_31

    .line 450
    :pswitch_1f
    if-eqz p1, :cond_24

    const-string v1, "QXDM_TELEPHONY_DATACALL_ANOMALY"

    goto :goto_26

    :cond_24
    const-string v1, "TELEPHONY_DATACALL_ANOMALY"

    :goto_26
    move-object v0, v1

    .line 451
    goto :goto_31

    .line 447
    :pswitch_28
    if-eqz p1, :cond_2d

    const-string v1, "QXDM_TELEPHONY_NETWORK_ANOMALY"

    goto :goto_2f

    :cond_2d
    const-string v1, "TELEPHONY_NETWORK_ANOMALY"

    :goto_2f
    move-object v0, v1

    .line 448
    nop

    .line 459
    :goto_31
    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1f
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 422
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .registers 1

    .line 422
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method
