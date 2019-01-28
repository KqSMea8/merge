.class public Lc8/afo;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dfo;


# direct methods
.method constructor <init>(Lc8/dfo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dfo;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-static {v1}, Lc8/dfo;->access$000(Lc8/dfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-static {v1}, Lc8/dfo;->access$100(Lc8/dfo;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-static {v2}, Lc8/dfo;->access$200(Lc8/dfo;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    .local v0, "alpha":I
    iget-object v1, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-static {v1}, Lc8/dfo;->access$100(Lc8/dfo;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object v1, p0, Lc8/afo;->this$0:Lc8/dfo;

    invoke-virtual {v1}, Lc8/dfo;->invalidate()V

    .line 68
    if-lez v0, :cond_0

    .line 69
    iget-object v1, p0, Lc8/afo;->this$0:Lc8/dfo;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, p0, v2, v3}, Lc8/dfo;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
