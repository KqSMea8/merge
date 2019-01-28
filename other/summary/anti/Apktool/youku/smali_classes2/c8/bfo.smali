.class public Lc8/bfo;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dfo;->setViewPager(Landroid/support/v4/view/ViewPager;)V
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
    .line 280
    iput-object p1, p0, Lc8/bfo;->this$0:Lc8/dfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lc8/bfo;->this$0:Lc8/dfo;

    invoke-static {v0}, Lc8/dfo;->access$000(Lc8/dfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lc8/bfo;->this$0:Lc8/dfo;

    iget-object v1, p0, Lc8/bfo;->this$0:Lc8/dfo;

    invoke-static {v1}, Lc8/dfo;->access$300(Lc8/dfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/dfo;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method
