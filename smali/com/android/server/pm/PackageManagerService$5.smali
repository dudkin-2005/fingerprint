.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4

    .line 13666
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13667
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13669
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 13670
    if-le v0, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 13672
    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13673
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13674
    if-eq v0, v1, :cond_3

    .line 13675
    if-le v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2

    .line 13677
    :cond_3
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_5

    .line 13678
    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz p1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 13680
    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 13681
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 13683
    if-eq v0, v1, :cond_7

    .line 13684
    if-le v0, v1, :cond_6

    move v2, v3

    nop

    :cond_6
    return v2

    .line 13686
    :cond_7
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v1, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v0, v1, :cond_9

    .line 13687
    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz p1, :cond_8

    move v2, v3

    nop

    :cond_8
    return v2

    .line 13689
    :cond_9
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_a

    .line 13690
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 13692
    :cond_a
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_b

    .line 13693
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 13695
    :cond_b
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_c

    .line 13696
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 13698
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13664
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$5;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
