.class public Lc8/bw;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fw;


# direct methods
.method constructor <init>(Lc8/fw;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lc8/bw;->this$0:Lc8/fw;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 551
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lc8/bw;->this$0:Lc8/fw;

    iget-object v0, v0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v0}, Lc8/ru;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lc8/bw;->this$0:Lc8/fw;

    iget-object v0, v0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v0, p1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/dw;

    invoke-virtual {v0}, Lc8/dw;->getTab()Lc8/kn;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 565
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 570
    if-nez p2, :cond_0

    .line 571
    iget-object v1, p0, Lc8/bw;->this$0:Lc8/fw;

    invoke-virtual {p0, p1}, Lc8/bw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kn;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lc8/fw;->createTabView(Lc8/kn;Z)Lc8/dw;

    move-result-object p2

    .line 575
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 573
    check-cast v0, Lc8/dw;

    invoke-virtual {p0, p1}, Lc8/bw;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/kn;

    invoke-virtual {v0, v1}, Lc8/dw;->bindTab(Lc8/kn;)V

    goto :goto_0
.end method
