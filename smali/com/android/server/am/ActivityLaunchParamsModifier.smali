.class public Lcom/android/server/am/ActivityLaunchParamsModifier;
.super Ljava/lang/Object;
.source "ActivityLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 35
    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 0

    .line 42
    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 43
    return p2

    .line 47
    :cond_0
    iget-object p4, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p4, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 48
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    iget-object p2, p7, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    const/4 p1, 0x1

    return p1

    .line 56
    :cond_3
    :goto_0
    return p2

    .line 49
    :cond_4
    :goto_1
    return p2
.end method
