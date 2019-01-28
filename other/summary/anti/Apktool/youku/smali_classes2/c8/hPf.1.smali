.class public Lc8/hPf;
.super Lc8/mPf;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qPf;->addGestureDetectorIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qPf;


# direct methods
.method constructor <init>(Lc8/qPf;Lc8/qPf;)V
    .locals 0
    .param p2, "x0"    # Lc8/qPf;

    .prologue
    .line 1180
    iput-object p1, p0, Lc8/hPf;->this$0:Lc8/qPf;

    invoke-direct {p0, p2}, Lc8/mPf;-><init>(Lc8/qPf;)V

    return-void
.end method


# virtual methods
.method performItemClick(Lc8/qPf;Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "parent"    # Lc8/qPf;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1183
    iget-object v0, p0, Lc8/hPf;->this$0:Lc8/qPf;

    invoke-static {v0}, Lc8/qPf;->access$300(Lc8/qPf;)Lc8/nPf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lc8/hPf;->this$0:Lc8/qPf;

    invoke-static {v0}, Lc8/qPf;->access$300(Lc8/qPf;)Lc8/nPf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc8/nPf;->onItemClick(Lc8/qPf;Landroid/view/View;IJ)V

    .line 1186
    const/4 v0, 0x1

    .line 1189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performItemLongClick(Lc8/qPf;Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "parent"    # Lc8/qPf;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1194
    iget-object v0, p0, Lc8/hPf;->this$0:Lc8/qPf;

    invoke-static {v0}, Lc8/qPf;->access$400(Lc8/qPf;)Lc8/oPf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hPf;->this$0:Lc8/qPf;

    invoke-static {v0}, Lc8/qPf;->access$400(Lc8/qPf;)Lc8/oPf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc8/oPf;->onItemLongClick(Lc8/qPf;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
