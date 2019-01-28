.class public Lc8/hdg;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/idg;->notifyStickyRemove(Lc8/jdg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/idg;

.field final synthetic val$component:Lc8/jdg;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/idg;Landroid/view/View;Lc8/jdg;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lc8/hdg;->this$0:Lc8/idg;

    iput-object p2, p0, Lc8/hdg;->val$headerView:Landroid/view/View;

    iput-object p3, p0, Lc8/hdg;->val$component:Lc8/jdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lc8/hdg;->this$0:Lc8/idg;

    invoke-static {v0}, Lc8/idg;->access$000(Lc8/idg;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lc8/hdg;->val$headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lc8/hdg;->val$headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lc8/hdg;->val$headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lc8/hdg;->val$component:Lc8/jdg;

    invoke-virtual {v0}, Lc8/jdg;->recoverySticky()V

    .line 135
    iget-object v0, p0, Lc8/hdg;->this$0:Lc8/idg;

    invoke-static {v0}, Lc8/idg;->access$100(Lc8/idg;)V

    .line 137
    return-void
.end method
