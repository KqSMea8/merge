.class public Lc8/pPf;
.super Lc8/lu;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpanSizeLookupCompat"
.end annotation


# instance fields
.field private final mSpanSizeLookup:Lc8/lu;

.field final synthetic this$0:Lc8/qPf;


# direct methods
.method public constructor <init>(Lc8/qPf;Lc8/lu;)V
    .locals 0
    .param p2, "ssl"    # Lc8/lu;

    .prologue
    .line 1068
    iput-object p1, p0, Lc8/pPf;->this$0:Lc8/qPf;

    .line 1069
    invoke-direct {p0}, Lc8/lu;-><init>()V

    .line 1070
    iput-object p2, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    .line 1071
    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 2
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 1126
    iget-object v0, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-static {v0, p1}, Lc8/qPf;->access$200(Lc8/qPf;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    iget-object v1, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-virtual {v1}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2}, Lc8/lu;->getSpanGroupIndex(II)I

    move-result v0

    .line 1130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpanIndex(II)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 1117
    iget-object v0, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-static {v0, p1}, Lc8/qPf;->access$200(Lc8/qPf;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    iget-object v1, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-virtual {v1}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2}, Lc8/lu;->getSpanIndex(II)I

    move-result v0

    .line 1121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-static {v0, p1}, Lc8/qPf;->access$200(Lc8/qPf;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-virtual {v0}, Lc8/qPf;->getLayoutManager()Lc8/xv;

    move-result-object v0

    check-cast v0, Lc8/mu;

    invoke-virtual {v0}, Lc8/mu;->getSpanCount()I

    move-result v0

    .line 1083
    :goto_0
    return v0

    .line 1079
    :cond_0
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    iget-object v1, p0, Lc8/pPf;->this$0:Lc8/qPf;

    invoke-virtual {v1}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lc8/lu;->getSpanSize(I)I

    move-result v0

    goto :goto_0

    .line 1083
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    invoke-virtual {v0}, Lc8/lu;->invalidateSpanIndexCache()V

    .line 1104
    :goto_0
    return-void

    .line 1103
    :cond_0
    invoke-super {p0}, Lc8/lu;->invalidateSpanIndexCache()V

    goto :goto_0
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    invoke-virtual {v0}, Lc8/lu;->isSpanIndexCacheEnabled()Z

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lc8/lu;->isSpanIndexCacheEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 1
    .param p1, "cacheSpanIndices"    # Z

    .prologue
    .line 1088
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lc8/pPf;->mSpanSizeLookup:Lc8/lu;

    invoke-virtual {v0, p1}, Lc8/lu;->setSpanIndexCacheEnabled(Z)V

    .line 1094
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-super {p0, p1}, Lc8/lu;->setSpanIndexCacheEnabled(Z)V

    goto :goto_0
.end method
