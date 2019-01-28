.class public Lc8/lPf;
.super Ljava/lang/Object;
.source "TRecyclerView.java"

# interfaces
.implements Lc8/Gv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerRecyclerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qPf;


# direct methods
.method constructor <init>(Lc8/qPf;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lc8/lPf;->this$0:Lc8/qPf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Lc8/Qv;)V
    .locals 4
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 478
    iget-object v3, p0, Lc8/lPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$100(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 479
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 480
    iget-object v3, p0, Lc8/lPf;->this$0:Lc8/qPf;

    invoke-static {v3}, Lc8/qPf;->access$100(Lc8/qPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Gv;

    .line 481
    .local v1, "l":Lc8/Gv;
    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v1, p1}, Lc8/Gv;->onViewRecycled(Lc8/Qv;)V

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "l":Lc8/Gv;
    :cond_1
    return-void
.end method
