.class public Lc8/tfg;
.super Ljava/lang/Object;
.source "WXRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ufg;->setRefreshView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ufg;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/ufg;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/tfg;->this$0:Lc8/ufg;

    iput-object p2, p0, Lc8/tfg;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v2, p0, Lc8/tfg;->val$view:Landroid/view/View;

    .line 86
    .local v2, "temp":Landroid/view/View;
    iget-object v3, p0, Lc8/tfg;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lc8/tfg;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lc8/tfg;->val$view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    move-object v3, v2

    .line 90
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lc8/mfg;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lc8/tfg;->this$0:Lc8/ufg;

    check-cast v0, Lc8/mfg;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v3, v0}, Lc8/ufg;->access$002(Lc8/ufg;Lc8/mfg;)Lc8/mfg;

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_2
    iget-object v3, p0, Lc8/tfg;->this$0:Lc8/ufg;

    invoke-static {v3}, Lc8/ufg;->access$100(Lc8/ufg;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method
