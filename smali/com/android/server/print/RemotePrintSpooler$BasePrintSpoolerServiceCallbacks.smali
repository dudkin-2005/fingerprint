.class abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePrintSpoolerServiceCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 866
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler$1;)V
    .locals 0

    .line 866
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 0

    .line 906
    return-void
.end method

.method public onCancelPrintJobResult(ZI)V
    .locals 0

    .line 881
    return-void
.end method

.method public onCustomPrinterIconCached(I)V
    .locals 0

    .line 896
    return-void
.end method

.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .locals 0

    .line 901
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 0

    .line 876
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .line 871
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .locals 0

    .line 886
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .locals 0

    .line 891
    return-void
.end method
