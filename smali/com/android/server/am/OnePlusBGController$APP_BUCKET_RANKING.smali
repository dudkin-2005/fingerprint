.class public final enum Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APP_BUCKET_RANKING"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field public static final enum GENERAL:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field public static final enum HIGH:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field public static final enum LOW:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field public static final enum UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 156
    new-instance v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 157
    new-instance v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->HIGH:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 158
    new-instance v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    const-string v1, "GENERAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->GENERAL:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 159
    new-instance v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->LOW:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->HIGH:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->GENERAL:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->LOW:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->$VALUES:[Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 155
    const-class v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .registers 1

    .line 155
    sget-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->$VALUES:[Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    return-object v0
.end method
