.class Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadedWidgetState"
.end annotation


# instance fields
.field final hostTag:I

.field final providerTag:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field final widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    .registers 5
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p3, "hostTag"    # I
    .param p4, "providerTag"    # I

    .line 4295
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4296
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4297
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    .line 4298
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    .line 4299
    return-void
.end method
