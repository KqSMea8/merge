.class public Lc8/heg;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "WXBaseCircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ieg;->setCircleViewPager(Lc8/oeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ieg;


# direct methods
.method constructor <init>(Lc8/ieg;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lc8/heg;->this$0:Lc8/ieg;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lc8/heg;->this$0:Lc8/ieg;

    iget-object v1, p0, Lc8/heg;->this$0:Lc8/ieg;

    invoke-static {v1}, Lc8/ieg;->access$100(Lc8/ieg;)Lc8/oeg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oeg;->getRealCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lc8/ieg;->access$002(Lc8/ieg;I)I

    .line 107
    iget-object v0, p0, Lc8/heg;->this$0:Lc8/ieg;

    invoke-virtual {v0}, Lc8/ieg;->invalidate()V

    .line 108
    return-void
.end method
