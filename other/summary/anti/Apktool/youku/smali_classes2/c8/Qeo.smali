.class public Lc8/Qeo;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Veo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Veo;


# direct methods
.method constructor <init>(Lc8/Veo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Veo;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    move-object v2, p1

    check-cast v2, Lc8/Ueo;

    .line 66
    .local v2, "tabView":Lc8/Ueo;
    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$000(Lc8/Veo;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 67
    .local v1, "oldSelected":I
    invoke-virtual {v2}, Lc8/Ueo;->getIndex()I

    move-result v0

    .line 68
    .local v0, "newSelected":I
    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$000(Lc8/Veo;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 69
    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$100(Lc8/Veo;)Lc8/Teo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$100(Lc8/Veo;)Lc8/Teo;

    move-result-object v3

    invoke-interface {v3, v0}, Lc8/Teo;->onTabReselected(I)V

    .line 72
    :cond_0
    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$200(Lc8/Veo;)Lc8/Seo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lc8/Qeo;->this$0:Lc8/Veo;

    invoke-static {v3}, Lc8/Veo;->access$200(Lc8/Veo;)Lc8/Seo;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lc8/Seo;->onTabClick(Landroid/view/View;I)V

    .line 75
    :cond_1
    return-void
.end method
