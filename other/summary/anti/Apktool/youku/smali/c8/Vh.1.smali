.class public Lc8/Vh;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wh;


# direct methods
.method constructor <init>(Lc8/Wh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Wh;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 60
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3}, Lc8/Wh;->access$000(Lc8/Wh;)J

    move-result-wide v4

    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3}, Lc8/Wh;->access$100(Lc8/Wh;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 61
    .local v0, "dt":J
    long-to-float v3, v0

    iget-object v4, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v4}, Lc8/Wh;->access$200(Lc8/Wh;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 62
    .local v2, "fraction":F
    cmpl-float v3, v2, v8

    if-gtz v3, :cond_0

    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    iget-object v3, v3, Lc8/Wh;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 63
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    :cond_1
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3, v2}, Lc8/Wh;->access$302(Lc8/Wh;F)F

    .line 66
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3}, Lc8/Wh;->access$400(Lc8/Wh;)V

    .line 67
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3}, Lc8/Wh;->access$300(Lc8/Wh;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_2

    .line 68
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v3}, Lc8/Wh;->access$500(Lc8/Wh;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v3, p0, Lc8/Vh;->this$0:Lc8/Wh;

    iget-object v3, v3, Lc8/Wh;->mTarget:Landroid/view/View;

    iget-object v4, p0, Lc8/Vh;->this$0:Lc8/Wh;

    invoke-static {v4}, Lc8/Wh;->access$600(Lc8/Wh;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
