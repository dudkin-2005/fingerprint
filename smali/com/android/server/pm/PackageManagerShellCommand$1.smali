.class Lcom/android/server/pm/PackageManagerShellCommand$1;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/FeatureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$1;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .locals 2

    .line 422
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 423
    :cond_0
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 424
    :cond_1
    iget-object v0, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 425
    :cond_2
    iget-object p1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 420
    check-cast p1, Landroid/content/pm/FeatureInfo;

    check-cast p2, Landroid/content/pm/FeatureInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand$1;->compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I

    move-result p1

    return p1
.end method
