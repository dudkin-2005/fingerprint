.class Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "PortFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_MAX:Ljava/lang/String; = "max"

.field private static final ATTR_MIN:Ljava/lang/String; = "min"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final NO_BOUND:I = -0x1


# instance fields
.field private final mLowerBound:I

.field private final mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    const-string/jumbo v1, "port"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/PortFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 40
    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/firewall/PortFilter$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 46
    nop

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 48
    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    goto :goto_0

    .line 51
    :cond_0
    move p1, p2

    :goto_0
    if-eq p1, p2, :cond_3

    iget p3, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-eq p3, p2, :cond_1

    iget p3, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-gt p3, p1, :cond_3

    :cond_1
    iget p3, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-eq p3, p2, :cond_2

    iget p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-lt p2, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
