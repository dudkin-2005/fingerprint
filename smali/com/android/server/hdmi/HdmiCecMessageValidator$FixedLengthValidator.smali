.class Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
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
    name = "FixedLengthValidator"
.end annotation


# instance fields
.field private final mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    .line 234
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 1

    .line 240
    array-length p1, p1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
