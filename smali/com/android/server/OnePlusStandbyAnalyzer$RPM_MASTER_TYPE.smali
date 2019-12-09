.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum APSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum SPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 475
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "APSS"

    const-string v2, "APSS"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->APSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 476
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "MPSS"

    const-string v2, "MPSS"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 477
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "ADSP"

    const-string v2, "ADSP"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 478
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "CDSP"

    const-string v2, "CDSP"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 479
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "SPSS"

    const-string v2, "SPSS"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 480
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "SLPI"

    const-string v2, "SLPI"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 481
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 474
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->APSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 486
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->text:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .line 490
    if-eqz p0, :cond_18

    .line 491
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 492
    .local v3, "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    iget-object v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 493
    return-object v3

    .line 491
    .end local v3    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 497
    :cond_18
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 474
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .registers 1

    .line 474
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method
