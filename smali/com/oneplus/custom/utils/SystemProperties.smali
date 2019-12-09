.class Lcom/oneplus/custom/utils/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 12
    :try_start_6
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    .local v0, "systemPropertiesClass":Ljava/lang/Class;
    if-eqz v0, :cond_20

    .line 14
    const-string v3, "get"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 15
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1c} :catch_1d

    .end local v0    # "systemPropertiesClass":Ljava/lang/Class;
    goto :goto_20

    .line 19
    :catch_1d
    move-exception v0

    goto :goto_21

    .line 17
    :catch_1f
    move-exception v0

    .line 21
    :cond_20
    :goto_20
    nop

    .line 23
    :cond_21
    :goto_21
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_39

    .line 25
    :try_start_26
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_32} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_32} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_32} :catch_33

    return-object v0

    .line 30
    :catch_33
    move-exception v0

    goto :goto_39

    .line 28
    :catch_35
    move-exception v0

    goto :goto_38

    .line 26
    :catch_37
    move-exception v0

    .line 32
    :goto_38
    nop

    .line 34
    :cond_39
    :goto_39
    return-object v3
.end method
