.class public Lc8/Tbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->checkRefreshOrLoading(Lc8/tbg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;

.field final synthetic val$child:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/acg;Lc8/tbg;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lc8/Tbg;->this$0:Lc8/acg;

    iput-object p2, p0, Lc8/Tbg;->val$child:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lc8/Tbg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    iget-object v1, p0, Lc8/Tbg;->val$child:Lc8/tbg;

    invoke-virtual {v0, v1}, Lc8/Hfg;->setHeaderView(Lc8/tbg;)V

    .line 316
    return-void
.end method
