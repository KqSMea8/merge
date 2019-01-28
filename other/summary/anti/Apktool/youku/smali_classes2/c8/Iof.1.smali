.class public Lc8/Iof;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nof;->initDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nof;


# direct methods
.method constructor <init>(Lc8/Nof;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v10

    .line 220
    goto :goto_0

    .line 148
    :pswitch_0
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v1, v2}, Lc8/Nof;->access$002(Lc8/Nof;F)F

    .line 149
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v1, v2}, Lc8/Nof;->access$102(Lc8/Nof;F)F

    .line 150
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2}, Lc8/Nof;->access$202(Lc8/Nof;F)F

    .line 151
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Nof;->access$302(Lc8/Nof;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 152
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1, v0}, Lc8/Nof;->access$402(Lc8/Nof;Z)Z

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v2}, Lc8/Nof;->access$100(Lc8/Nof;)F

    move-result v2

    sub-float v7, v1, v2

    .line 156
    .local v7, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v2}, Lc8/Nof;->access$200(Lc8/Nof;)F

    move-result v2

    sub-float v8, v1, v2

    .line 157
    .local v8, "deltaY":F
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v1, v2}, Lc8/Nof;->access$102(Lc8/Nof;F)F

    .line 158
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2}, Lc8/Nof;->access$202(Lc8/Nof;F)F

    .line 159
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 162
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v1, :cond_3

    .line 163
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    :cond_3
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v2}, Lc8/Nof;->access$500(Lc8/Nof;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_4

    .line 167
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v2}, Lc8/Nof;->access$500(Lc8/Nof;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 170
    :cond_4
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_5

    .line 171
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 172
    :cond_5
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$600(Lc8/Nof;)I

    move-result v1

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 173
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$600(Lc8/Nof;)I

    move-result v1

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 176
    :cond_6
    :try_start_0
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_2
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$000(Lc8/Nof;)F

    move-result v0

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$100(Lc8/Nof;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0, v10}, Lc8/Nof;->access$402(Lc8/Nof;Z)Z

    goto/16 :goto_1

    .line 177
    :catch_0
    move-exception v9

    .line 178
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 186
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    .line 187
    .local v6, "cur":Ljava/math/BigDecimal;
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$400(Lc8/Nof;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$300(Lc8/Nof;)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$300(Lc8/Nof;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 188
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v1

    invoke-interface {v1}, Lc8/Gof;->onClick()V

    .line 190
    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-virtual {v1}, Lc8/Nof;->destroy()V

    goto/16 :goto_0

    .line 195
    :cond_7
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    move-result-object v0

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v0, v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$000(Lc8/Nof;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d900000    # -60.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 197
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$900(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    move-result-object v0

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ALWAYS:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    if-ne v0, v1, :cond_a

    .line 198
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    invoke-static {v0, v1}, Lc8/Nof;->access$802(Lc8/Nof;Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 203
    :goto_3
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v0

    invoke-interface {v0}, Lc8/Gof;->onClose()V

    .line 207
    :cond_8
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    move-result-object v0

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v0, v1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$000(Lc8/Nof;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 209
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    invoke-static {v0, v1}, Lc8/Nof;->access$802(Lc8/Nof;Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 210
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$700(Lc8/Nof;)Lc8/Gof;

    move-result-object v0

    invoke-interface {v0}, Lc8/Gof;->onShow()V

    .line 215
    :cond_9
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    new-instance v1, Lc8/Mof;

    iget-object v2, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-direct {v1, v2}, Lc8/Mof;-><init>(Lc8/Nof;)V

    invoke-static {v0, v1}, Lc8/Nof;->access$1002(Lc8/Nof;Lc8/Mof;)Lc8/Mof;

    .line 216
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lc8/Nof;->access$1102(Lc8/Nof;Ljava/util/Timer;)Ljava/util/Timer;

    .line 217
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$1100(Lc8/Nof;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lc8/Iof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$1000(Lc8/Nof;)Lc8/Mof;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_1

    .line 200
    :cond_a
    iget-object v0, p0, Lc8/Iof;->this$0:Lc8/Nof;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    invoke-static {v0, v1}, Lc8/Nof;->access$802(Lc8/Nof;Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    goto :goto_3

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
