.class public Lc8/Nvb;
.super Ljava/lang/Object;
.source "Marquee.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Pvb;


# direct methods
.method constructor <init>(Lc8/Pvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Pvb;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 70
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$100(Lc8/Pvb;)I

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$200(Lc8/Pvb;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 74
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$300(Lc8/Pvb;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 75
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$400(Lc8/Pvb;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lc8/Pvb;->access$402(Lc8/Pvb;I)I

    .line 76
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$400(Lc8/Pvb;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 77
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$100(Lc8/Pvb;)I

    move-result v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$500(Lc8/Pvb;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2, v6}, Lc8/Pvb;->access$302(Lc8/Pvb;Z)Z

    .line 79
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$500(Lc8/Pvb;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$600(Lc8/Pvb;)J

    move-result-wide v4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 82
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$708(Lc8/Pvb;)J

    .line 83
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$700(Lc8/Pvb;)J

    move-result-wide v2

    iget-object v4, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v4}, Lc8/Pvb;->access$800(Lc8/Pvb;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 84
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$908(Lc8/Pvb;)J

    .line 86
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$100(Lc8/Pvb;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v4}, Lc8/Pvb;->access$700(Lc8/Pvb;)J

    move-result-wide v4

    iget-object v6, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v6}, Lc8/Pvb;->access$800(Lc8/Pvb;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iget-object v6, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v6}, Lc8/Pvb;->access$900(Lc8/Pvb;)J

    move-result-wide v6

    iget-object v8, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v8}, Lc8/Pvb;->access$800(Lc8/Pvb;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v10, v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2}, Lc8/Pvb;->access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$1000(Lc8/Pvb;)J

    move-result-wide v4

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$100(Lc8/Pvb;)I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v4, v6

    invoke-static {v2, p0, v4, v5}, Lc8/Pvb;->access$1100(Lc8/Pvb;Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 93
    :cond_4
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2, p0}, Lc8/Pvb;->access$1200(Lc8/Pvb;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v2, v10}, Lc8/Pvb;->access$202(Lc8/Pvb;Z)Z

    .line 97
    iget-object v2, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    iget-object v3, p0, Lc8/Nvb;->this$0:Lc8/Pvb;

    invoke-static {v3}, Lc8/Pvb;->access$1300(Lc8/Pvb;)J

    move-result-wide v4

    invoke-static {v2, p0, v4, v5}, Lc8/Pvb;->access$1100(Lc8/Pvb;Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method
