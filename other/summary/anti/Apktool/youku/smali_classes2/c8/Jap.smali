.class public Lc8/Jap;
.super Ljava/lang/Object;
.source "TitleTabIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nap;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nap;


# direct methods
.method constructor <init>(Lc8/Nap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nap;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Nap;->access$202(Lc8/Nap;Z)Z

    .line 189
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-virtual {v0}, Lc8/Nap;->adjustTitleColor()V

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " page state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0, p1}, Lc8/Nap;->access$002(Lc8/Nap;I)I

    .line 162
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0, p2}, Lc8/Nap;->access$102(Lc8/Nap;F)F

    .line 163
    float-to-double v0, p2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p2

    const-wide v2, 0x3fee666666666666L    # 0.95

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Nap;->access$202(Lc8/Nap;Z)Z

    .line 166
    :cond_0
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-virtual {v0}, Lc8/Nap;->invalidate()V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pxoff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0}, Lc8/Nap;->access$300(Lc8/Nap;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    iget-object v1, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$400(Lc8/Nap;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lc8/Nap;->access$500(Lc8/Nap;IIZ)V

    .line 179
    :goto_0
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0, p1}, Lc8/Nap;->access$302(Lc8/Nap;I)I

    .line 180
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0, p1}, Lc8/Nap;->access$600(Lc8/Nap;I)V

    .line 182
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v0, p1}, Lc8/Nap;->access$402(Lc8/Nap;I)I

    .line 183
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lc8/Jap;->this$0:Lc8/Nap;

    iget-object v1, p0, Lc8/Jap;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$400(Lc8/Nap;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lc8/Nap;->access$500(Lc8/Nap;IIZ)V

    goto :goto_0
.end method
