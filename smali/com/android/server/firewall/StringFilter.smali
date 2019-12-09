.class abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/StringFilter$IsNullFilter;,
        Lcom/android/server/firewall/StringFilter$RegexFilter;,
        Lcom/android/server/firewall/StringFilter$PatternStringFilter;,
        Lcom/android/server/firewall/StringFilter$StartsWithFilter;,
        Lcom/android/server/firewall/StringFilter$ContainsFilter;,
        Lcom/android/server/firewall/StringFilter$EqualsFilter;,
        Lcom/android/server/firewall/StringFilter$ValueProvider;
    }
.end annotation


# static fields
.field public static final ACTION:Lcom/android/server/firewall/FilterFactory;

.field private static final ATTR_CONTAINS:Ljava/lang/String; = "contains"

.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_IS_NULL:Ljava/lang/String; = "isNull"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_REGEX:Ljava/lang/String; = "regex"

.field private static final ATTR_STARTS_WITH:Ljava/lang/String; = "startsWith"

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;


# instance fields
.field private final mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string v1, "component"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 241
    new-instance v0, Lcom/android/server/firewall/StringFilter$2;

    const-string v1, "component-name"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 252
    new-instance v0, Lcom/android/server/firewall/StringFilter$3;

    const-string v1, "component-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 263
    new-instance v0, Lcom/android/server/firewall/StringFilter$4;

    const-string v1, "action"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    .line 271
    new-instance v0, Lcom/android/server/firewall/StringFilter$5;

    const-string v1, "data"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 283
    new-instance v0, Lcom/android/server/firewall/StringFilter$6;

    const-string v1, "mime-type"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 291
    new-instance v0, Lcom/android/server/firewall/StringFilter$7;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 303
    new-instance v0, Lcom/android/server/firewall/StringFilter$8;

    const-string/jumbo v1, "scheme-specific-part"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 315
    new-instance v0, Lcom/android/server/firewall/StringFilter$9;

    const-string v1, "host"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 327
    new-instance v0, Lcom/android/server/firewall/StringFilter$10;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V

    return-void
.end method

.method private static getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;
    .locals 4

    .line 79
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    const/16 v2, 0x65

    if-eq v1, v2, :cond_6

    const/16 v2, 0x69

    if-eq v1, v2, :cond_4

    const/16 v2, 0x70

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 115
    return-object v3

    .line 93
    :pswitch_0
    const-string/jumbo v1, "startsWith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-object v3

    .line 96
    :cond_0
    new-instance v0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    .line 97
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    .line 96
    return-object v0

    .line 110
    :pswitch_1
    const-string/jumbo v1, "regex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    return-object v3

    .line 113
    :cond_1
    new-instance v0, Lcom/android/server/firewall/StringFilter$RegexFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_2
    const-string/jumbo v1, "pattern"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    return-object v3

    .line 107
    :cond_3
    new-instance v0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    .line 108
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    .line 107
    return-object v0

    .line 88
    :cond_4
    const-string v1, "isNull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    return-object v3

    .line 91
    :cond_5
    new-instance v0, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    .line 83
    :cond_6
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 84
    return-object v3

    .line 86
    :cond_7
    new-instance v0, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_8
    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 100
    return-object v3

    .line 102
    :cond_9
    new-instance v0, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    nop

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 59
    invoke-static {p0, p1, v1}, Lcom/android/server/firewall/StringFilter;->getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    if-nez v2, :cond_0

    .line 64
    nop

    .line 58
    move-object v2, v3

    goto :goto_1

    .line 62
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Multiple string filter attributes found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    if-nez v2, :cond_3

    .line 71
    new-instance v2, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-direct {v2, p0, v0}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V

    .line 74
    :cond_3
    return-object v2
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    invoke-virtual {p1, p2, p3, p6}, Lcom/android/server/firewall/StringFilter$ValueProvider;->getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract matchesValue(Ljava/lang/String;)Z
.end method
