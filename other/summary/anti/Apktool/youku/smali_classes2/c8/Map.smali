.class public Lc8/Map;
.super Ljava/lang/Object;
.source "TitleTabIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabClick"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nap;


# direct methods
.method private constructor <init>(Lc8/Nap;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Nap;Lc8/Jap;)V
    .locals 0
    .param p1, "x0"    # Lc8/Nap;
    .param p2, "x1"    # Lc8/Jap;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lc8/Map;-><init>(Lc8/Nap;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v2}, Lc8/Nap;->access$800(Lc8/Nap;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$800(Lc8/Nap;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 280
    .local v0, "nowPosition":I
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$300(Lc8/Nap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/Nap;->access$202(Lc8/Nap;Z)Z

    .line 284
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1, v0}, Lc8/Nap;->access$302(Lc8/Nap;I)I

    .line 287
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$900(Lc8/Nap;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$900(Lc8/Nap;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v2}, Lc8/Nap;->access$300(Lc8/Nap;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 291
    :cond_2
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-virtual {v1}, Lc8/Nap;->adjustTitleColor()V

    .line 293
    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$1000(Lc8/Nap;)Lc8/Lap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v1}, Lc8/Nap;->access$1000(Lc8/Nap;)Lc8/Lap;

    move-result-object v1

    iget-object v2, p0, Lc8/Map;->this$0:Lc8/Nap;

    invoke-static {v2}, Lc8/Nap;->access$300(Lc8/Nap;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lc8/Lap;->onTabClick(Landroid/view/View;I)V

    goto :goto_0
.end method
