.class public Lc8/seo;
.super Lc8/lu;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ueo;->onAttachedToRecyclerView(Lc8/Rv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ueo;

.field final synthetic val$gridManager:Lc8/mu;


# direct methods
.method constructor <init>(Lc8/ueo;Lc8/mu;)V
    .locals 0
    .param p1, "this$1"    # Lc8/ueo;

    .prologue
    .line 530
    iput-object p1, p0, Lc8/seo;->this$1:Lc8/ueo;

    iput-object p2, p0, Lc8/seo;->val$gridManager:Lc8/mu;

    invoke-direct {p0}, Lc8/lu;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lc8/seo;->this$1:Lc8/ueo;

    invoke-virtual {v0, p1}, Lc8/ueo;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/seo;->this$1:Lc8/ueo;

    invoke-virtual {v0, p1}, Lc8/ueo;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc8/seo;->val$gridManager:Lc8/mu;

    .line 534
    invoke-virtual {v0}, Lc8/mu;->getSpanCount()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
