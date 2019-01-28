.class public Lc8/Reo;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Veo;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Veo;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/Veo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Veo;

    .prologue
    .line 138
    iput-object p1, p0, Lc8/Reo;->this$0:Lc8/Veo;

    iput-object p2, p0, Lc8/Reo;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lc8/Reo;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lc8/Reo;->this$0:Lc8/Veo;

    invoke-virtual {v2}, Lc8/Veo;->getWidth()I

    move-result v2

    iget-object v3, p0, Lc8/Reo;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 142
    .local v0, "scrollPos":I
    iget-object v1, p0, Lc8/Reo;->this$0:Lc8/Veo;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc8/Veo;->smoothScrollTo(II)V

    .line 143
    iget-object v1, p0, Lc8/Reo;->this$0:Lc8/Veo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Veo;->access$302(Lc8/Veo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 144
    return-void
.end method
