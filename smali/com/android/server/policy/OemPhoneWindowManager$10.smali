.class Lcom/android/server/policy/OemPhoneWindowManager$10;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$margin:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2897
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$10;->val$margin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v8, p0

    .line 2905
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v9, 0xe1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_29a

    .line 3025
    return v12

    .line 3018
    :pswitch_f
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3019
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialTouchY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3020
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_52

    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 3021
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v2, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3023
    :cond_52
    return v13

    .line 2922
    :pswitch_53
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_60

    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2923
    :cond_60
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    new-array v2, v11, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v3, "scaleX"

    new-array v4, v13, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v12

    .line 2924
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v12

    const-string/jumbo v3, "scaleY"

    new-array v4, v13, [F

    aput v5, v4, v12

    .line 2925
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v13

    .line 2923
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 2926
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2927
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2929
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 2930
    .local v14, "diffX":I
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 2931
    .local v15, "diffY":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long v16, v0, v2

    .line 2934
    .local v16, "diffTime":J
    add-int v0, v14, v15

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a9

    const-wide/16 v0, 0xfa

    cmp-long v0, v16, v0

    if-gez v0, :cond_1a9

    .line 2935
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: show switch dialog mQuickPayWhich="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1a9

    .line 2937
    const/4 v0, 0x0

    .line 2939
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    if-ne v1, v13, :cond_fb

    .line 2940
    const v1, 0x50d0009

    goto :goto_fe

    .line 2941
    :cond_fb
    const v1, 0x50d0001

    :goto_fe
    move v7, v1

    .line 2942
    .local v7, "resId":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v6, v1

    .line 2943
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x50c0095

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2945
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2946
    .local v5, "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v0, 0x0

    .line 2947
    .local v0, "findWhich":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 2948
    .local v4, "availableAppsList":[Ljava/lang/String;
    move/from16 v18, v0

    move v0, v12

    .line 2948
    .local v0, "i":I
    .local v18, "findWhich":I
    :goto_11f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13d

    .line 2949
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2950
    .local v1, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget v2, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    iget-object v3, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-ne v2, v3, :cond_136

    .line 2951
    move v2, v0

    .line 2953
    .end local v18    # "findWhich":I
    .local v2, "findWhich":I
    move/from16 v18, v2

    .line 2953
    .end local v2    # "findWhich":I
    .restart local v18    # "findWhich":I
    :cond_136
    iget-object v2, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    aput-object v2, v4, v0

    .line 2948
    .end local v1    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11f

    .line 2955
    .end local v0    # "i":I
    :cond_13d
    move/from16 v3, v18

    .line 2956
    .local v3, "nowWhich":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2957
    .local v2, "context":Landroid/content/Context;
    new-instance v19, Lcom/android/server/policy/OemPhoneWindowManager$10$1;

    const v20, 0x5090013

    const v21, 0x5070057

    move-object/from16 v0, v19

    move-object v1, v8

    move/from16 v22, v3

    move/from16 v3, v20

    .line 2957
    .end local v3    # "nowWhich":I
    .local v22, "nowWhich":I
    move-object/from16 v20, v4

    move/from16 v4, v21

    .line 2957
    .end local v4    # "availableAppsList":[Ljava/lang/String;
    .local v20, "availableAppsList":[Ljava/lang/String;
    move-object/from16 v23, v5

    move-object/from16 v5, v20

    .line 2957
    .end local v5    # "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    .local v23, "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    move-object v9, v6

    move/from16 v6, v22

    .line 2957
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    move v10, v7

    move-object/from16 v7, v23

    .line 2957
    .end local v7    # "resId":I
    .local v10, "resId":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/OemPhoneWindowManager$10$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$10;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2975
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$10$2;

    move-object/from16 v3, v23

    invoke-direct {v1, v8, v3}, Lcom/android/server/policy/OemPhoneWindowManager$10$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$10;Ljava/util/ArrayList;)V

    .line 2975
    .end local v23    # "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    .local v3, "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    move/from16 v4, v22

    invoke-virtual {v9, v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2983
    .end local v22    # "nowWhich":I
    .local v4, "nowWhich":I
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    .line 2984
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x7d8

    invoke-virtual {v1, v5}, Landroid/view/Window;->setType(I)V

    .line 2985
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v5, "QuickPayChooser"

    invoke-virtual {v1, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2986
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$10$3;

    invoke-direct {v5, v8}, Lcom/android/server/policy/OemPhoneWindowManager$10$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$10;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2992
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2997
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    .end local v4    # "nowWhich":I
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "resId":I
    .end local v18    # "findWhich":I
    .end local v20    # "availableAppsList":[Ljava/lang/String;
    :cond_1a9
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v1, v11

    if-ge v0, v1, :cond_1bb

    .line 2998
    iget v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->val$margin:I

    goto :goto_1cb

    :cond_1bb
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v0, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iget v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->val$margin:I

    sub-int/2addr v0, v1

    .line 2999
    .local v0, "goalX":I
    :goto_1cb
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    new-array v2, v11, [I

    iget-object v3, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v3, v2, v12

    aput v0, v2, v13

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    .line 3000
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/policy/OemPhoneWindowManager$10$4;

    invoke-direct {v2, v8}, Lcom/android/server/policy/OemPhoneWindowManager$10$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$10;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3009
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3010
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3012
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    .line 3013
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 3014
    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quickpay_button_xy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3016
    return v13

    .line 2908
    .end local v0    # "goalX":I
    .end local v14    # "diffX":I
    .end local v15    # "diffY":I
    .end local v16    # "diffTime":J
    :pswitch_234
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_241

    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2909
    :cond_241
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    new-array v2, v11, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v3, "scaleX"

    new-array v4, v13, [F

    const v5, 0x3f8ccccd    # 1.1f

    aput v5, v4, v12

    .line 2910
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v12

    const-string/jumbo v3, "scaleY"

    new-array v4, v13, [F

    aput v5, v4, v12

    .line 2911
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v13

    .line 2909
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 2912
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2913
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2915
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialX:I

    .line 2916
    iget-object v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialY:I

    .line 2917
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialTouchX:F

    .line 2918
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v8, Lcom/android/server/policy/OemPhoneWindowManager$10;->initialTouchY:F

    .line 2919
    return v13

    nop

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_234
        :pswitch_53
        :pswitch_f
    .end packed-switch
.end method
