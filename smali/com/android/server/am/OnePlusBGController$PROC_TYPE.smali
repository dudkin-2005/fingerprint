.class public final enum Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$PROC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field public static final enum B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field public static final enum B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field public static final enum F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field public static final enum F_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 163
    new-instance v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    const-string v1, "B"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 164
    new-instance v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    const-string v1, "F"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 165
    new-instance v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    const-string v1, "B_RECONFIRM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 166
    new-instance v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    const-string v1, "F_RECONFIRM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

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

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->value:I

    .line 172
    return-void
.end method

.method static fromValue(I)Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .registers 6
    .param p0, "value"    # I

    .line 175
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->values()[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 176
    .local v3, "my":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    iget v4, v3, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->value:I

    if-ne v4, p0, :cond_f

    .line 177
    return-object v3

    .line 175
    .end local v3    # "my":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 180
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .registers 1

    .line 162
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    return-object v0
.end method
