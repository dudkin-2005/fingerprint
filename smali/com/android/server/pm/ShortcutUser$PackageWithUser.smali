.class final Lcom/android/server/pm/ShortcutUser$PackageWithUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageWithUser"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final userId:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    .line 75
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 1

    .line 79
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 2

    .line 83
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 93
    instance-of v0, p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 96
    :cond_0
    check-cast p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 98
    iget v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    iget v2, p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    const-string v0, "[Package: %d, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
