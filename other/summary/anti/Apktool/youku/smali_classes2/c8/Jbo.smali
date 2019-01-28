.class public Lc8/Jbo;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mbo;


# direct methods
.method constructor <init>(Lc8/Mbo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mbo;

    .prologue
    .line 241
    iput-object p1, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xonPageScrollStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 262
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 245
    const-string/jumbo v0, "BannerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Oao;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$000(Lc8/Mbo;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$100(Lc8/Mbo;)Lc8/Lbo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$000(Lc8/Mbo;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v1}, Lc8/Mbo;->access$100(Lc8/Mbo;)Lc8/Lbo;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Lbo;->getCount()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$200(Lc8/Mbo;)V

    .line 250
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lc8/Jbo;->this$0:Lc8/Mbo;

    invoke-static {v0}, Lc8/Mbo;->access$300(Lc8/Mbo;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 253
    :cond_1
    return-void
.end method
