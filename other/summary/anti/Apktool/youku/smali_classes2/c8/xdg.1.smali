.class public Lc8/xdg;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bdg;->setRefreshOrLoading(Lc8/tbg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bdg;

.field final synthetic val$child:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/Bdg;Lc8/tbg;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lc8/xdg;->this$0:Lc8/Bdg;

    iput-object p2, p0, Lc8/xdg;->val$child:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lc8/xdg;->this$0:Lc8/Bdg;

    invoke-virtual {v0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    iget-object v1, p0, Lc8/xdg;->val$child:Lc8/tbg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setHeaderView(Lc8/tbg;)V

    .line 945
    return-void
.end method
