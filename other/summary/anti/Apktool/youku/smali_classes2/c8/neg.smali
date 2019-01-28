.class public Lc8/neg;
.super Ljava/lang/Object;
.source "WXCircleViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oeg;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oeg;


# direct methods
.method constructor <init>(Lc8/oeg;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-static {v2, p1}, Lc8/oeg;->access$202(Lc8/oeg;I)I

    .line 88
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-virtual {v2}, Lc8/oeg;->getCirclePageAdapter()Lc8/leg;

    move-result-object v0

    .line 89
    .local v0, "adapter":Lc8/leg;
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-static {v2}, Lc8/oeg;->access$301(Lc8/oeg;)I

    move-result v1

    .line 90
    .local v1, "currentItemInternal":I
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-static {v2}, Lc8/oeg;->access$400(Lc8/oeg;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lc8/leg;->getCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 91
    invoke-virtual {v0}, Lc8/leg;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-static {v2, v3, v4}, Lc8/oeg;->access$500(Lc8/oeg;IZ)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-nez v1, :cond_0

    .line 94
    iget-object v2, p0, Lc8/neg;->this$0:Lc8/oeg;

    invoke-virtual {v0}, Lc8/leg;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3, v4}, Lc8/oeg;->access$500(Lc8/oeg;IZ)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 83
    return-void
.end method
