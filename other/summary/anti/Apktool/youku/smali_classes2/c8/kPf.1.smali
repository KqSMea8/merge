.class public Lc8/kPf;
.super Lc8/Cv;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qPf;


# direct methods
.method constructor <init>(Lc8/qPf;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lc8/kPf;->this$0:Lc8/qPf;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 4
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 453
    iget-object v3, p0, Lc8/kPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$000(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 454
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 455
    iget-object v3, p0, Lc8/kPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$000(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cv;

    .line 456
    .local v1, "l":Lc8/Cv;
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "l":Lc8/Cv;
    :cond_1
    return-void
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 4
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 466
    iget-object v3, p0, Lc8/kPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$000(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 467
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 468
    iget-object v3, p0, Lc8/kPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$000(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cv;

    .line 469
    .local v1, "l":Lc8/Cv;
    invoke-virtual {v1, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "l":Lc8/Cv;
    :cond_0
    return-void
.end method
