.class public Lc8/YGn;
.super Ljava/lang/Object;
.source "CustomToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aHn;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/aHn;

.field final synthetic val$activity:Lc8/IEn;


# direct methods
.method constructor <init>(Lc8/aHn;Lc8/IEn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/aHn;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/YGn;->this$0:Lc8/aHn;

    iput-object p2, p0, Lc8/YGn;->val$activity:Lc8/IEn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/youku/ui/activity/actionbar/ActionMenu;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 55
    .local v0, "actionMenu":Lcom/youku/ui/activity/actionbar/ActionMenu;
    iget-object v1, p0, Lc8/YGn;->val$activity:Lc8/IEn;

    iget v2, v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->id:I

    invoke-virtual {v1, v2}, Lc8/IEn;->menuClick(I)Z

    .line 57
    .end local v0    # "actionMenu":Lcom/youku/ui/activity/actionbar/ActionMenu;
    :cond_0
    return-void
.end method
