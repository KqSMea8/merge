.class public Lc8/Ubg;
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
    .line 323
    iput-object p1, p0, Lc8/Ubg;->this$0:Lc8/acg;

    iput-object p2, p0, Lc8/Ubg;->val$child:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lc8/Ubg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    iget-object v1, p0, Lc8/Ubg;->val$child:Lc8/tbg;

    invoke-virtual {v0, v1}, Lc8/Hfg;->setFooterView(Lc8/tbg;)V

    .line 327
    return-void
.end method
