.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    }
.end annotation


# static fields
.field private static final DEST_ALL:I = 0x3

.field private static final DEST_BROADCAST:I = 0x2

.field private static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field private static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"


# instance fields
.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field final mValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 12

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    .line 66
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 69
    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    .line 70
    const/4 v1, 0x6

    const/16 v2, 0x82

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 72
    const/4 v2, 0x1

    const/16 v3, 0x9d

    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 73
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    invoke-direct {v3, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v4, 0x84

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 75
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    invoke-direct {v3, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v4, 0x80

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 77
    const/16 v3, 0x81

    invoke-direct {p0, v3, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 79
    const/4 v3, 0x2

    const/16 v4, 0x86

    invoke-direct {p0, v4, p1, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 81
    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 85
    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 86
    const/16 v4, 0xff

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 87
    const/16 v4, 0x9f

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 88
    const/4 v4, 0x5

    const/16 v5, 0x91

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 90
    const/16 v5, 0x71

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 91
    const/16 v5, 0x8f

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 92
    const/16 v5, 0x8c

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 94
    const/16 v5, 0x46

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 95
    const/16 v5, 0x83

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 97
    const/16 v5, 0x7d

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 99
    const/4 v5, 0x4

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 100
    const/16 v6, 0xc0

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 101
    const/16 v6, 0xb

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 102
    const/16 v6, 0xf

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 103
    const/16 v6, 0xc1

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 104
    const/16 v6, 0xc2

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 105
    const/16 v6, 0xc3

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 106
    const/16 v6, 0xc4

    invoke-direct {p0, v6, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 107
    const/16 v6, 0x85

    invoke-direct {p0, v6, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 109
    const/4 v6, 0x7

    const/16 v7, 0x36

    invoke-direct {p0, v7, p1, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 110
    const/16 v7, 0xc5

    invoke-direct {p0, v7, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 111
    const/16 v7, 0xd

    invoke-direct {p0, v7, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 112
    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 113
    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 114
    const/16 v7, 0x45

    invoke-direct {p0, v7, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 115
    const/4 v7, 0x3

    const/16 v8, 0x8b

    invoke-direct {p0, v8, p1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 120
    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 121
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v9, 0x8

    invoke-direct {v8, v2, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v9, 0x9

    invoke-direct {p0, v9, v8, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 123
    const/16 v8, 0xa

    invoke-direct {p0, v8, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 128
    const/16 v8, 0x9e

    invoke-direct {p0, v8, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 129
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v8, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v9, 0x32

    invoke-direct {p0, v9, v8, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 137
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v9, 0xe

    invoke-direct {v8, v0, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    .line 138
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v10, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v11, 0x87

    invoke-direct {p0, v11, v10, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 142
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v10, v2, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v11, 0x89

    invoke-direct {p0, v11, v10, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 144
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v4, v5, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v5, 0xa0

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 146
    const/16 v4, 0x8a

    invoke-direct {p0, v4, v8, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 150
    const/16 v4, 0x64

    invoke-direct {p0, v4, v8, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 151
    const/16 v4, 0x47

    invoke-direct {p0, v4, v8, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 154
    const/16 v4, 0x8d

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 155
    const/16 v4, 0x8e

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 159
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v5, 0x44

    invoke-direct {p0, v5, v4, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 163
    const/16 v4, 0x90

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 166
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 170
    const/16 v0, 0x7a

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 171
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v0, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v3, 0xa3

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 173
    const/16 v0, 0xa4

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 175
    const/16 v0, 0x72

    invoke-direct {p0, v0, p1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 176
    const/16 v0, 0x7e

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 180
    const/16 v0, 0x9a

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 185
    const/16 p1, 0xf8

    invoke-direct {p0, p1, v8, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 187
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Z)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result p0

    return p0
.end method

.method private addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 191
    return-void
.end method

.method private isValidPhysicalAddress([BI)Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 266
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p1

    .line 267
    const p2, 0xffff

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 268
    return v1

    .line 270
    :cond_1
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    .line 271
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 272
    const/4 p1, 0x0

    return p1

    .line 274
    :cond_2
    return v1
.end method

.method static isValidType(I)Z
    .locals 1

    .line 287
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static toErrorCode(Z)I
    .locals 0

    .line 293
    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method


# virtual methods
.method isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 6

    .line 194
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .line 196
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No validation information for the message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return v1

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xf

    if-ne v2, v4, :cond_1

    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return v3

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v4, :cond_2

    .line 209
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v2, v5

    if-nez v2, :cond_3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return v5

    .line 214
    :cond_2
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected direct message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return v5

    .line 221
    :cond_3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v0

    .line 222
    if-eqz v0, :cond_4

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return v0

    .line 226
    :cond_4
    return v1
.end method
