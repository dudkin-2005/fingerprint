.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIM_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

.field public static final enum SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

.field public static final enum SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 399
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    const-string v1, "SIM_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    .line 400
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    const-string v1, "SIM_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

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

    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->value:I

    .line 406
    return-void
.end method

.method static fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    .registers 6
    .param p0, "value"    # I

    .line 409
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 410
    .local v3, "my":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    iget v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->value:I

    if-ne v4, p0, :cond_f

    .line 411
    return-object v3

    .line 409
    .end local v3    # "my":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 414
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 398
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    .registers 1

    .line 398
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    return-object v0
.end method
