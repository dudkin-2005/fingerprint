.class Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableLengthValidator"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mMinLength:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    .line 250
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    .line 251
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 1

    .line 255
    array-length p1, p1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
